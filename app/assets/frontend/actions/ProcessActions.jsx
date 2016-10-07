import API from '../API'
export default {
  getAllProcesses(){
    API.getAllProcesses();
  },
  starProcess(processId){
    API.starProcess(processId);
  },
  unstarProcess(processId){
    API.unstarProcess(processId);
  }
}
