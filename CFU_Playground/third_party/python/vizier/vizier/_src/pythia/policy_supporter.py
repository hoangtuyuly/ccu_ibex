"""The Policy can use these classes to communicate with Vizier."""

import abc
import datetime
from typing import Iterable, List, Optional

from vizier import pyvizier as vz


class PolicySupporter(abc.ABC):
  """Used by Policy instances to communicate with Vizier."""

  # TODO: Change to GetStudyDescriptor.
  @abc.abstractmethod
  def GetStudyConfig(self,
                     study_guid: Optional[str] = None) -> vz.ProblemStatement:
    """Requests a StudyConfig from Vizier.

    This sends a PythiaToVizier.trial_selector packet and waits for the
    response(s).  You can call this multiple times, and it is thread-friendly,
    so you can even overlap calls.

    Args:
      study_guid: The GUID of the study whose StudyConfig you want. Note that
        access control applies. By default, use the current study's GUID.

    Returns:
      The requested StudyConfig proto.

    Raises:
      CancelComputeError: (Do not catch.)
      PythiaProtocolError: (Do not catch.)
      VizierDatabaseError: If the database operation raises an error, e.g. if
        $study_guid refers to a nonexistent or inaccessible study.
    """

  @abc.abstractmethod
  def GetTrials(
      self,
      *,
      study_guid: Optional[str] = None,
      trial_ids: Optional[Iterable[int]] = None,
      min_trial_id: Optional[int] = None,
      max_trial_id: Optional[int] = None,
      status_matches: Optional[vz.TrialStatus] = None,
      include_intermediate_measurements: bool = True) -> List[vz.Trial]:
    """Requests Trials from Vizier.

    Args:
      study_guid: The GUID of the study to get Trials from.  Default is None,
        which means the current Study.
      trial_ids: a list of Trial id numbers to acquire.
      min_trial_id: Trials in [min_trial_id, max_trial_id] are selected, if at
        least one of the two is not None.
      max_trial_id: Trials in [min_trial_id, max_trial_id] are selected, if at
        least one of the two is not None.
      status_matches: If not None, filters for Trials where
        Trial.status==status_matches.  The default passes all types of Trial.
      include_intermediate_measurements: If True (default), the returned Trials
        must have all measurements. Note that the final Measurement is always
        included for COMPLETED Trials. If False, PolicySupporter _may_ leave
        `measurements` field empty in the returned Trials in order to optimize
        speed, but it is not required to do so.

    Returns:
      Trials obtained from Vizier.

    Raises:
      CancelComputeError: (Do not catch.)
      PythiaProtocolError: (Do not catch.)
      VizierDatabaseError: If the database operation raises an error, e.g. if
        $study_guid refers to a nonexistent or inaccessible study.

    NOTE: if $trial_ids is set, $min_trial_id, $max_trial_id, and
      $status_matches will be ignored.
    """

  def CheckCancelled(self, note: Optional[str] = None) -> None:
    """Throws a CancelComputeError on timeout or if Vizier cancels.

    This should be called occasionally by any long-running computation.
    Raises an exception if the interaction has been cancelled by the Vizier
    side of the protocol; the exception shuts down the Pythia server.

    Args:
      note: for debugging.

    Raises:
      CancelComputeError: (Do not catch.)
    """
    pass

  def TimeRemaining(self) -> datetime.timedelta:
    """The time remaining to compute a result.

    Returns:
      The remaining time before the RPC is considered to have timed out; it
      returns datetime.timedelta.max if no deadline was specified in the RPC.

    This is an alternative to calling CheckCancelled(); both have the goal of
    terminating runaway computations.  If your computation times out,
    you should raise TemporaryPythiaError (if you want a retry) or
    InactivateStudyError (if not).
    """
    return datetime.timedelta(hours=1.0)

  def SendMetadata(self, delta: vz.MetadataDelta) -> None:
    """Updates the Study's metadata in Vizier's database.

    Args:
      delta: Metadata to be uploaded to the Vizier database.
    """
    raise NotImplementedError(
        f"Metadata update is not supported in {type(self)}")
