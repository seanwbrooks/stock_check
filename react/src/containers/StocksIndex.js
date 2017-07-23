import React from 'react';
import StockTile from '../components/StockTile';
import StockForm from '../containers/StockForm';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      stocks: []
    }
    this.addNewStock = this.addNewStock.bind(this);
  }

  componentDidMount() {
    fetch(`/api/v1/stocks`)
    .then(response => {
      if(response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ stocks: body.stocks })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  addNewStock(formPayload) {
    fetch('/stocks', {
      method: 'POST',
      body: JSON.stringify(formPayload)
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ stocks: [...this.state.stocks, body] })
    })
  }

  render() {
    let stocks = this.state.stocks.map((stock) => {
      return(
        <StockTile
          key={stock.id}
          id={stock.id}
          symbol={stock.symbol}
          ask={stock.ask}
          percentChange={stock.percent_change}
          marketCapitalization={stock.market_capitalization}
          rating={stock.rating}
        />
      );
    });

    return(
      <div className="body">
        <table>
          <thead>
            <tr>
              <th width="50">Stock</th>
              <th width="50">Price</th>
              <th width="50">Daily Change (%)</th>
              <th width="50">Market Capitalization</th>
              <th width="50">Rating</th>
            </tr>
          </thead>
          <tbody>
            {stocks}
          </tbody>
        </table>
        <div className="row">
          <StockForm addNewStock={this.addNewStock} />
        </div>
      </div>
    );
  }
}

export default App;
