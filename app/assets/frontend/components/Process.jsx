import SeedActions from '../actions/SeedActions';
import ProcessActions from '../actions/ProcessActions';
import React from 'react';
import {Link} from 'react-router'

export default class Process extends React.Component {
  createSeed(processId) {
    SeedActions.createSeed(processId);
  }
  starProcess(processId) {
    ProcessActions.starProcess(processId);
  }
  unstarProcess(processId) {
    ProcessActions.unstarProcess(processId);
  }
  render(){
    var difficulty = this.props.difficulty;
    return(
      <li>
        <div className="col s12 l6">
          <div className="process-card">
            <div className="card blue-grey lighten-5 side-content">
              <h2>{this.props.name}</h2>
              <div className="process-data">
                <div className="space-between">
                  <div>{this.props.maturation_length} days</div>
                  <div>{this.props.environment}</div>
                  <div>{this.props.climate}</div>
                </div>
                <div className="rate-chips">
                  <p>easy</p>
                  {[...Array(difficulty)].map((x, i) =>

                    <div key={i} className="chip-container rated">
                      <div className="dif-chip"></div>
                    </div>
                  )}
                  {[...Array(5 - difficulty)].map((x, i) =>

                    <div key={i} className="chip-container">
                      <div className="dif-chip"></div>
                    </div>
                  )}
                  <p>difficult</p>
                </div>
              </div>
              <div className="social-icons space-around">
                {this.props.social.stared ?
                  <a onClick= {this.unstarProcess.bind(this, this.props.id)}>
                    <div className='space-around star-icons selected'>
                      <i className="fa fa-star"></i>
                      <p>{this.props.social.staring}</p>
                    </div>
                  </a>
                  :
                  <a onClick= {this.starProcess.bind(this, this.props.id)}>
                    <div className='space-around star-icons'>
                      <i className="fa fa-star"></i>
                      <p>{this.props.social.staring}</p>
                    </div>
                  </a>
                }
                {this.props.social.used ?
                    <Link to="/">
                      <div className="btn-blue">Currently using it</div>
                    </Link>
                  :
                    <a onClick={this.createSeed.bind(this, this.props.id)}>
                      <div className="btn-blue">Start planting it</div>
                    </a>
                }
              </div>
              <div className="top-right-absolute">
                <img className="small-avatar" src={this.props.user.avatar.avatar.standard.url} alt={this.props.user.username}/>
                <p>{this.props.user.username}</p>
              </div>
            </div>
            <div className="side-image hide-on-small-only">
              <img src={this.props.photo.photo.standard.url} alt={this.props.name}/>
            </div>
          </div>
        </div>
      </li>
    );
  }
}
