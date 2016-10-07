import AppDispatcher from '../dispatcher'
import ActionTypes from '../constants'

export default {
  receivedProcesses(rawProcesses) {
    AppDispatcher.dispatch({
      actionType: ActionTypes.RECEIVED_PROCESSES,
      rawProcesses: rawProcesses
    })
  },
  staredOneProcess(rawProcess) {
    AppDispatcher.dispatch({
      actionType: ActionTypes.STARED_ONE_PROCESS,
      rawProcess: rawProcess
    })
  },
  unstaredOneProcess(rawProcess) {
    AppDispatcher.dispatch({
      actionType: ActionTypes.UNSTARED_ONE_PROCESS,
      rawProcess: rawProcess
    })
  },
  receivedSeeds(rawSeeds) {
    AppDispatcher.dispatch({
      actionType: ActionTypes.RECEIVED_SEEDS,
      rawSeeds: rawSeeds
    })
  },
  receivedOneSeed(rawSeed) {
    AppDispatcher.dispatch({
      actionType: ActionTypes.RECEIVED_ONE_SEED,
      rawSeed: rawSeed
    })
  }
}
