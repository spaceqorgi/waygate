import React from 'react';
import logo from './logo.svg';
import './App.css';

class Canvas extends React.Component {

    componentDidMount() {
        const canvas = this.refs.canvas;
        const ctx = canvas.getContext("2d");
        const img = this.refs.image;

        img.onload = () => {
            ctx.drawImage(img, 0, 0);
            ctx.font = "40px Courier";
            ctx.fillText(this.props.text, 210, 75)
        }
    }
    
    render() {
        return(
            <div>
                <canvas ref="canvas" width={3374} height={2427} />
                <img ref="image" src={require('./images/map-big-clean.png')} className="hidden" />
            </div>
        );
    }
}

function App() {
  return (
    <div className="App">
      <Canvas />
    </div>
  );
}

export default App;
