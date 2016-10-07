import Process from './Process';
import ProcessActions from '../actions/ProcessActions';
import ProcessStore from '../stores/ProcessStore';
import React from 'react';


ProcessActions.getAllProcesses()

let getAppState = () => {
  return { processesList: ProcessStore.getAll() }
}
export default class ProcessesList extends React.Component {
  constructor(props){
    super(props);
    this.state = getAppState();
    this._onChange = this._onChange.bind(this)
  }

  componentDidMount(){
    ProcessStore.addChangeListener(this._onChange)
  }
  componentWillUnmount(){
    ProcessStore.removeChangeListener(this._onChange)
  }

  _onChange() {
    this.setState(getAppState());
  }

  render(){
    let processes = this.state.processesList.map(process => <Process key= {process.id} {...process}/>);
    return(
      <div className="container">
        <div className="row">
          <ul>
            {processes}
          </ul>
        </div>
      </div>
    );
  }
}
