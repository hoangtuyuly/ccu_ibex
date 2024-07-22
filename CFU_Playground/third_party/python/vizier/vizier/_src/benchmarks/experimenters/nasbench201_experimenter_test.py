"""Tests for nasbench201_experimenter."""
from absl import logging
import nats_bench
from vizier import pyvizier
from vizier._src.algorithms.designers import random
from vizier._src.benchmarks.experimenters import nasbench201_experimenter
from absl.testing import absltest


class Nasbench201ExperimenterTest(absltest.TestCase):

  @absltest.skip("Files must be installed manually.")
  def test_experimenter(self):
    nasbench = nats_bench.NATStopology(
        file_path_or_dict=DEFAULT_NATS_TSS_DIR, fast_mode=True, verbose=False)
    experimenter = nasbench201_experimenter.NASBench201Experimenter(nasbench)
    problem_statement = experimenter.problem_statement()
    designer = random.RandomDesigner(
        search_space=problem_statement.search_space, seed=None)

    suggestions = designer.suggest(5)
    trials = [suggestion.to_trial() for suggestion in suggestions]
    experimenter.evaluate(trials)
    for trial in trials:
      logging.info('Evaluated Trial: %s', trial)
      self.assertEqual(trial.status, pyvizier.TrialStatus.COMPLETED)
      metric_name = problem_statement.metric_information.item().name
      eval_objective = trial.final_measurement.metrics[metric_name].value
      self.assertGreaterEqual(eval_objective, 0.0)
      self.assertLessEqual(eval_objective, 100.0)


if __name__ == '__main__':
  absltest.main()
