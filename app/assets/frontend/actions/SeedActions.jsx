import API from '../API'
export default {
  getAllSeeds(){
    API.getAllSeeds();
  },
  createSeed(processId){
    API.createSeed(processId);
  }
}
