import React, { Component } from 'react';
import './App.css';
import { Accordion, Card, Button, ButtonGroup, Container, Row, Col, Image } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css';
import { MapInteractionCSS } from 'react-map-interaction';

class Canvas extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      narrators: this.props.narrators
    }
  }

  componentDidMount() {
    const canvas = this.refs.canvas;
    const ctx = canvas.getContext("2d");
    const img = this.refs.image;

    img.onload = () => {
      ctx.drawImage(img, 0, 0);
    }
  }

  shouldComponentUpdate(nextProps){
    return nextProps.narrators !== this.state.narrators;
  }

  componentDidUpdate(prevProps, prevState, snapshot) {

    // Have to re-define canvas for some reason
    const canvas = this.refs.canvas;
    const ctx = canvas.getContext("2d");
    const img = this.refs.image;
    ctx.clearRect(0, 0, canvas.width, canvas.height)
    ctx.drawImage(img, 0, 0);
    ctx.lineWidth = 3;

    let narrators = this.props.narrators;
    if(narrators !== {}){
      console.log("DEBUG: You select a chapter");
      console.log(narrators);
      for (const [id, narrator] of Object.entries(narrators)){
        let isFirstPoint = true;
        for (const [id, point] of Object.entries(narrator.points)){
          if(isFirstPoint){
            ctx.moveTo(point.x, point.y)
            isFirstPoint = false;
            ctx.beginPath();
            ctx.rect(point.x, point.y, 10, 10)
            ctx.stroke();
          } else {
            ctx.lineTo(point.x, point.y);
          }
          console.log(point);
        }
        ctx.stroke();
      }
    } else {
      console.log("DEBUG: There is no current selected Chapter!");
    }

  }

  render() {
    let height = 3374;
    let width = 2427;
    return (
      <MapInteractionCSS
          scale={0.80}
          defaultScale={0.30}
          height="800px"
          width="100%"
          defaultTranslation={{x: -600, y: -600}}
      >
          <div>
            <canvas ref="canvas" width={height} height={width} />
            <img ref="image" alt="map" src={require('./images/map-big-clean.png')} className="hidden" />
          </div>
      </MapInteractionCSS>
    );
  }
}

class Chapter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentChapter: {},
    }
  }

  onChapterSelected(chapter) {
    console.log(chapter)
    this.setState({
      currentChapter: chapter
    })
  }

  render() {
    const { error, isLoaded, items } = this.props;
    if (error) {
      return <div>Error: {error.message}</div>;
    } else if (!isLoaded) {
      return <div>Loading...</div>;
    } else {
      return (
          <Row>
            <Col lg={9} md={12}>
               <Canvas narrators={this.state.currentChapter.narrators}
               />
            </Col>
            <Col lg={3} md={6} className="Chapter">
            <Accordion>
              {items.map(item => (
                  <Card key={item.chapter_number}>
                    <Accordion.Toggle
                        as={Card.Header}
                        eventKey={item.chapter_number}
                        onClick={(i) => this.onChapterSelected(item)}
                    >
                      Ch. {item.chapter_number}: {item.chapter_name}
                    </Accordion.Toggle>
                    <Accordion.Collapse
                        eventKey={item.chapter_number}
                    >
                      <Card.Body>
                        <strong>{item.period}</strong>
                        <p>{item.summary}</p>
                      </Card.Body>
                    </Accordion.Collapse>
                  </Card>
              ))}
            </Accordion>
            </Col>
          </Row>
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
      items: [],
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
    return (
      <Container fluid className="App">
            <Chapter
              error={this.state.error}
              isLoaded={this.state.isLoaded}
              items={this.state.items}
            />
      </Container>
    );
  }
}

export default App;
