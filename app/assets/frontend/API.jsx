import ServerActions from './actions/ServerActions';
import SeedActions from './actions/SeedActions';
import { withRouter } from 'react-router'

export default {
  getAllProcesses(){
    $.get('/api/v1/vegetable_processes')
    .success(rawProcesses => ServerActions.receivedProcesses(rawProcesses))
    .error(error => console.log(error));
  },
  starProcess(processId){
    $.post('/api/v1/vegetable_processes/'+processId+'/stars')
    .success(rawProcess => ServerActions.staredOneProcess(rawProcess))
    .error(error => console.log(error))
  },
  unstarProcess(processId){
    $.get('/api/v1/vegetable_processes/'+processId+'/identify_star_and_destroy')
    .success(rawProcess => ServerActions.unstaredOneProcess(rawProcess))
    .error(error => console.log(error))
  },
  getAllSeeds(){
    $.get('/api/v1/account/seeds')
    .success(rawSeeds => ServerActions.receivedSeeds(rawSeeds))
    .error(error => console.log(error));
  },
  createSeed(processId){
    $.post('/api/v1/vegetable_processes/'+processId+'/seeds')
    .success(rawSeed => ServerActions.receivedOneSeed(rawSeed))
    .error(error => console.log(error))
  }
}
