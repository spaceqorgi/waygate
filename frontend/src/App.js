import React, { Component } from 'react';
import './App.css';
import { Accordion, Card, Button, ButtonGroup, Container, Row, Col, Image } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css';
import { MapInteractionCSS } from 'react-map-interaction';

class Canvas extends React.Component {

  componentDidMount() {
    const canvas = this.refs.canvas;
    const ctx = canvas.getContext("2d");
    const img = this.refs.image;

    img.onload = () => {
      ctx.drawImage(img, 0, 0);
      ctx.lineWidth = 3;

      for (const narrator of this.props.narrators){
        ctx.lineTo(narrator.points.x, narrator.points.y)
        ctx.stroke();
      }
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

  render() {
    const { error, isLoaded, items } = this.props;
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
              <Card.Body>
                <strong>{item.period}</strong>
                <p>{item.summary}</p>
              </Card.Body>
            </Accordion.Collapse>
          </Card>
          ))}
        </Accordion>
      )
    }
  }
}

class Book extends React.Component {

  render() {
    const { error, isLoaded, items } = this.props;
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
              <Canvas
                narrators={this.state.items.chapters.narrators}
              />
            </MapInteractionCSS>
          </Col>
          <Col lg={3} md={6} className="Chapter">
            <Chapter
              error={this.state.error}
              isLoaded={this.state.isLoaded}
              chapter={this.state.items.chapters}
            />
          </Col>
          // TODO Perhaps remove this
          <Col lg={3} md={6} className="Book">
            <Book
                error={this.state.error}
                isLoaded={this.state.isLoaded}
                items={this.state.items}
            />
          </Col>
        </Row>
      </Container>
    );
  }
}

export default App;
