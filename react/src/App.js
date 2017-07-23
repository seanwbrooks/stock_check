import React from 'react';
import ReactDOM from 'react-dom';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import StocksIndex from './containers/StocksIndex';
import StockShow from './containers/StockShow';

const App = (props) => {
  return (
    <div>
      <Router history={browserHistory}>
        <Route path='/' component={StocksIndex}>
          <Route path='/stocks/:id' component={StockShow} />
        </Route>
      </Router>
    </div>
  );
}

export default App;
