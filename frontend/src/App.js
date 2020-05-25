import React, { Component } from 'react';
import './App.css';
import { Accordion, Card, Button, ButtonGroup, Container, Row, Col, Image } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css';
import { MapInteractionCSS } from 'react-map-interaction';

class Canvas extends React.Component {
  componentDidMount() {
    const canvas = this.canvas;
    const ctx = canvas.getContext("2d");
    const img = this.image;

    img.onload = () => {
      ctx.drawImage(img, 0, 0);
      ctx.lineWidth = 3;
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
        <Accordion>
          {items.map(item => (
          <Card key={item.chapter_number}>
            <Accordion.Toggle as={Card.Header} eventKey={item.chapter_number}>
              {item.chapter_number} {item.chapter_name}
            </Accordion.Toggle>
            <Accordion.Collapse eventKey={item.chapter_number}>
              <Card.Body> {item.summary} </Card.Body>
            </Accordion.Collapse>
          </Card>
          ))}
        </Accordion>
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
          <Col lg={9} md={12}>
            <MapInteractionCSS
              scale={0.30}
              defaultScale={0.35}
              height="800px"
              width="100%"
            >
              <Canvas />
            </MapInteractionCSS>
          </Col>
          <Col lg={3} md={6} className="Chapter">
            <Chapter />
          </Col>
          <Col lg={3} md={6} className="Book">
            <Book />
          </Col>
        </Row>
      </Container>
    );
  }
}

export default App;
