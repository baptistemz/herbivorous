import AppDispatcher from '../dispatcher';
import ActionTypes from '../constants';
import { EventEmitter } from 'events';

let _processes = [];
const CHANGE_EVENT = "CHANGE"
class ProcessEventEmitter extends EventEmitter {
  getAll() {
    return _processes;
  }
  emitChange(){
    this.emit(CHANGE_EVENT);
  }
  addChangeListener(callback) {
    this.on(CHANGE_EVENT, callback);
  }
  removeChangeListener(callback) {
    this.removeListener(CHANGE_EVENT, callback)
  }
  changeProcess(id, obj) {
     for (var i in _processes) {
       if (_processes[i].id == id) {
          _processes[i] = obj;
          break;
       }
     }
  }
}
let ProcessStore = new ProcessEventEmitter();

AppDispatcher.register( action => {
  switch(action.actionType) {
    case ActionTypes.RECEIVED_PROCESSES:
      _processes = action.rawProcesses
      ProcessStore.emitChange()
      break;
    case ActionTypes.STARED_ONE_PROCESS:
      ProcessStore.changeProcess(action.rawProcess.id, action.rawProcess)
      ProcessStore.emitChange()
      break;
    case ActionTypes.UNSTARED_ONE_PROCESS:
      ProcessStore.changeProcess(action.rawProcess.id, action.rawProcess)
      ProcessStore.emitChange()
      break;
    default:
      //no op
  }
});

export default ProcessStore;
