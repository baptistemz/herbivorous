import AppDispatcher from '../dispatcher';
import ActionTypes from '../constants';
import { EventEmitter } from 'events';
import { hashHistory } from 'react-router';

let _seeds = [];
const CHANGE_EVENT = "CHANGE"
class SeedEventEmitter extends EventEmitter {
  getAll() {
    return _seeds;
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
}
let SeedStore = new SeedEventEmitter();

AppDispatcher.register( action => {
  switch(action.actionType) {
    case ActionTypes.RECEIVED_SEEDS:
      _seeds = action.rawSeeds
      SeedStore.emitChange()
      break;
    case ActionTypes.RECEIVED_ONE_SEED:
      _seeds = _seeds.concat([action.rawSeed]);
      SeedStore.emitChange();
      hashHistory.push('/');
      break;
    default:
      //no op
  }
});

export default SeedStore;
