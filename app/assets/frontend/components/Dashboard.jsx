import Seed from './Seed';
import SeedActions from '../actions/SeedActions';
import SeedStore from '../stores/SeedStore';
import React from 'react';


SeedActions.getAllSeeds()

let getAppState = () => {
  return { seedsList: SeedStore.getAll() }
}

export default class Dashboard extends React.Component {
  constructor(props){
    super(props);
    this.state = getAppState();
    this._onChange = this._onChange.bind(this)
  }


  componentDidMount(){
    SeedStore.addChangeListener(this._onChange)
  }
  componentWillUnmount(){
    SeedStore.removeChangeListener(this._onChange)
  }

  _onChange() {
    this.setState(getAppState());
  }

  render(){
    let seeds = this.state.seedsList.map(seed => <Seed key= {seed.id} {...seed}/>);
    return(
      <div className="container">
        <div className="row">
          <ul>
            {seeds}
          </ul>
        </div>
      </div>
    );
  }
}
