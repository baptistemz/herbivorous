import React from 'react';
import ReactDOM from 'react-dom';
import ProcessesList from './components/ProcessesList';
import Dashboard from './components/Dashboard';
import { useRouterHistory, Router, Route, Link } from 'react-router'
import { createHashHistory } from 'history'

class App extends React.Component {
  render() {
    return(
      <div>
        {this.props.children}
      </div>
    )
  }
}

const appHistory = useRouterHistory(createHashHistory)({ queryKey: false })
let documentReady = () => {
  ReactDOM.render(
    <Router history={appHistory} >
      <Route component={App}>
        <Route path="/" component={Dashboard}></Route>
        <Route path="/processes" component={ProcessesList}></Route>
      </Route>
    </Router>,
    document.getElementById('react')
  );
};

$(documentReady)
