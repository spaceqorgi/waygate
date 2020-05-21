import React, { Component } from 'react';
import './App.css';
import { ButtonGroup, Button, Container, Row, Col, Image } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css';
import { MapInteractionCSS } from 'react-map-interaction';

class Canvas extends React.Component {
  componentDidMount() {
    const canvas = this.refs.canvas;
    const ctx = canvas.getContext("2d");
    const img = this.refs.image;

    img.onload = () => {
      ctx.drawImage(img, 0, 0);
      ctx.lineWidth = 10;
      ctx.moveTo(1500, 1291)
      ctx.lineTo(1531, 1293)
      ctx.stroke();
    }
  }

  render() {
    let height = 3374;
    let width = 2427;
    return (
      <div className>
        <canvas ref="canvas" width={height} height={width} />
        <Image fluid ref="image" alt="map" src={require('./images/map-big-clean.png')} className="hidden" />
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
        <ButtonGroup vertical>
          {items.map(item => (
            <Button key={item.chapter_number}>
              {item.chapter_number} {item.chapter_name}
            </Button>
          ))}
        </ButtonGroup>
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
        <ButtonGroup vertical>
          {items.map(item => (
            <Button key={item.book_number}>
              {item.book_number} {item.book_name}
            </Button>
          ))}
        </ButtonGroup>
      )
    }
  }
}

class App extends Component {
  render() {
    return (
      <Container fluid className="App">
        <Row>
          <Col lg={8}>
            <MapInteractionCSS scale="0.35">
              <Canvas />
            </MapInteractionCSS>
          </Col>
          <Col lg={2} className="Book">
            <Book />
          </Col>
          <Col lg={2} className="Chapter">
            <Chapter />
          </Col>
        </Row>
      </Container>
    );
  }
}

export default App;
