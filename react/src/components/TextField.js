import React from 'react';

const TextField = (props) => {
  return(
    <label>
      <input
        name={props.name}
        onChange={props.handler}
        type='text'
        value={props.content}
        placeholder="TICKER"
      />
    </label>
  );
}

export default TextField;
