import React, { Component } from 'react';
import TextField from '../components/TextField';

class StockForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      ticker: '',
      error: null
    }
    this.handleTickerChange = this.handleTickerChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.clearForm = this.clearForm.bind(this);
    this.validateInput = this.validateInput.bind(this);
  }

  validateInput(input) {
    return (input != ''  && input != null);
  }

  handleTickerChange(event) {
    this.setState({ ticker: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    let payload = {
      ticker: this.state.ticker
    }
    if(this.validateInput(this.state.ticker)) {
      this.props.addNewStock(payload);
      this.clearForm();
    } else {
      this.setState({ error: "Please enter with TICKER!" });
    }
  }

  clearForm() {
    this.setState({
      ticker: '',
      errors: null
    });
  }

  render() {
    return(
      <div className="row">
        <div className="row">
          {this.state.error}
        </div>
        <div className="input-group">
          <div className="input-group-field">
            <TextField
              content={this.state.ticker}
              label="Ticker"
              name="ticker"
              handler={this.handleTickerChange}
            />
          </div>
          <div className="input-group-button">
            <input onClick={this.handleSubmit} className="button" type="submit" value="Submit" />
          </div>
        </div>
      </div>
    )
  }
}

export default StockForm;
