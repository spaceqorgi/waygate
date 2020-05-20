import React from 'react';
import logo from './logo.svg';
import './App.css';

class Map extends React.Component {
  render() {
    return <img src={ require('./images/map-big-clean.png') } className='map-background'></img>
  }
}

function App() {
  return (
    <Map />
  );
}

export default App;
