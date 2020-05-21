import React, { Component } from 'react';
import './App.css';

class Canvas extends React.Component {
  componentDidMount() {
    const canvas = this.refs.canvas;
    const ctx = canvas.getContext("2d");
    const img = this.refs.image;

    img.onload = () => {
      ctx.drawImage(img, 0, 0);
      ctx.moveTo(1500, 1291)
      ctx.lineTo(1531, 1293)
      ctx.stroke();
    }
  }

  render() {
    return (
      <div>
        <canvas ref="canvas" width={3374} height={2427} />
        <img ref="image" alt="map" src={require('./images/map-big-clean.png')} className="hidden" />
      </div>
    );
  }
}

class Chapter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      items: []
    }
  }

  componentDidMount() {
    let url = "http://127.0.0.1:8000/api/chapter"

    fetch(url)
      .then(res => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            items: result
          });
        },
        (error) => {
          this.setState({
            isLoaded: true,
            error
          })
        }
      )
  }

  render() {
    const { error, isLoaded, items } = this.state;
    if (error) {
      return <div>Error: {error.message}</div>;
    } else if (!isLoaded) {
      return <div>Loading...</div>;
    } else {
      return (
        <ul>
          {items.map(item => (
            <li key={item.chapter_number}>
              {item.chapter_number} {item.chapter_name}
            </li>
          ))}
        </ul>
      )
    }
  }
}

class Book extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      items: []
    }
  }

  componentDidMount() {
    let url = "http://127.0.0.1:8000/api/book"

    fetch(url)
      .then(res => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            items: result
          });
        },
        (error) => {
          this.setState({
            isLoaded: true,
            error
          })
        }
      )
  }

  render() {
    const { error, isLoaded, items } = this.state;
    if (error) {
      return <div>Error: {error.message}</div>;
    } else if (!isLoaded) {
      return <div>Loading...</div>;
    } else {
      return (
        <ul>
          {items.map(item => (
            <li key={item.book_number}>
              {item.book_number} {item.book_name}
            </li>
          ))}
        </ul>
      )
    }
  }
}

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="Book">
          <Book />
        </div>
        <div className="Chapter">
          <Chapter />
        </div>
        <Canvas />
      </div>
    );
  }
}

export default App;
