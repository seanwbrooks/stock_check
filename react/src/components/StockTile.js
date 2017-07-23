import React from 'react';

const StockTile = (props) => {
  return (
    <tr>
      <td>{props.symbol}</td>
      <td>{props.ask}</td>
      <td>{props.percentChange}</td>
      <td>{props.marketCapitalization}</td>
      <td>{props.rating}</td>
    </tr>
  );
}

export default StockTile;
