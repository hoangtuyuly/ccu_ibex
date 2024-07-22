"""Wraps Designer as a gradient-free optimizer."""

from typing import Callable, List, TypeVar

from absl import logging
from vizier import pythia
from vizier import pyvizier as vz
from vizier._src.algorithms.core import abstractions
from vizier._src.algorithms.optimizers import base

_Features = TypeVar('_Features')


class DesignerAsOptimizer(base.GradientFreeOptimizer):
  """Wraps a Designer into GradientFreeOptimizer."""

  def __init__(self,
               designer_factory: Callable[[vz.ProblemStatement],
                                          abstractions.Designer],
               *,
               batch_size: int = 100,
               num_evaluations: int = 15000):
    """Init.

    Args:
      designer_factory:
      batch_size: In each iteration, ask the designer to generate this many
        candidate trials.
      num_evaluations: Total number of trials to be evaluated on `score_fn`.
    """
    self._designer_factory = designer_factory
    self._batch_size = batch_size
    self._num_evaluations = num_evaluations

  def optimize(self,
               score_fn: base.BatchTrialScoreFunction,
               problem: vz.ProblemStatement,
               *,
               count: int = 1,
               budget_factor: float = 1.0,
               **kwargs) -> List[vz.Trial]:
    # Use the in-ram supporter as a pseudo-client for running a study in RAM.
    study = pythia.InRamPolicySupporter(problem)

    # Save the designer for debugging purposes only.
    self._designer = self._designer_factory(problem)
    num_iterations = max(
        int(self._num_evaluations * budget_factor) // self._batch_size, 1)
    logging.info(
        'Optimizing the acquisition for %s iterations of %s trials each',
        num_iterations, self._batch_size)

    for _ in range(num_iterations):
      trials = study.AddSuggestions(self._designer.suggest(self._batch_size))
      if not trials:
        break
      scores = score_fn(trials)
      for i, trial in enumerate(trials):
        # TODO: Decide what to do with NaNs scores.
        trial.complete(
            vz.Measurement({k: v[i].item() for k, v in scores.items()}))
      self._designer.update(abstractions.CompletedTrials(trials))

    return study.GetBestTrials(count=count)
