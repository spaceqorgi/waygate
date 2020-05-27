import React, { Component } from 'react';
import './App.css';
import { Accordion, Card, Button, ButtonGroup, Container, Row, Col} from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css';
import { MapInteractionCSS } from 'react-map-interaction';
import { Scrollbars } from 'react-custom-scrollbars';

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
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.beginPath();
    ctx.drawImage(img, 0, 0);
    ctx.lineWidth = 4;
    ctx.stroke();
    
    // Draw on the map using canvas, point, and narrators
    let narrators = this.props.narrators;
    if(narrators !== {}){
      console.log("DEBUG: You select a chapter");
      console.log(narrators);
      for (const [id, narrator] of Object.entries(narrators)){
        // For each narrator, do
        console.log("DEBUG: point id:" + id);
        ctx.strokeStyle = narrator.color;
        for (const [p_id, point] of Object.entries(narrator.points)){
          // For each point, do
          console.log("DEBUG:  id:" + id);
          if(p_id === 0){
            // Draw on the 1st point
            ctx.moveTo(point.x, point.y);
            ctx.beginPath();
            ctx.arc(point.x, point.y, 5, 0, 2 * Math.PI);
          }
          else {
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
          defaultTranslation={{x: 0, y: 0}}
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
    console.log("DEBUG: You select chapter=" + this.state.currentChapter.chapter_number)
    const { scrollbars } = this.refs;
    const scrollHeight = scrollbars.getValues();
    console.log("DEBUG: Scroll height=" + scrollHeight);
    scrollbars.scrollTop(50 * chapter.chapter_number);
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
            <Scrollbars
              ref="scrollbars"
              style={{ width:500, height: 800}}
            >
            <Accordion>
              {items.map(item => (
                  <Card key={item.chapter_number}>
                    <Accordion.Toggle
                        as={Card.Header}
                        eventKey={item.chapter_number}
                        onClick={() => this.onChapterSelected(item)}
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
            </Scrollbars>
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
