import React, { Component } from "react";
import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import { MapInteractionCSS } from "react-map-interaction";
import { Scrollbars } from "react-custom-scrollbars";
import PropTypes from "prop-types";
import styled from "styled-components";
import {
  Accordion,
  Card,
  Container,
  Row,
  Col,
  Nav,
  Navbar,
  NavDropdown,
  Button,
  Badge,
} from "react-bootstrap";

function NarratorList(props) {
  const { narrating_characters } = props;
  return (
    <div>
      {narrating_characters.map((character) => (
        <Badge variant="primary" key={character.id}>
          {character.display_name}
        </Badge>
      ))}
    </div>
  );
}

function MenuBar(props) {
  return (
    <Navbar bg="dark" variant="dark" expand="lg" className="waygate-navbar">
      <Navbar.Brand href="#home">
        Waygate - The Wheel of Time Interactive Map
      </Navbar.Brand>
      <Navbar.Toggle aria-controls="basic-navbar-nav" />
      <Navbar.Collapse id="basic-navbar-nav">
        <Nav className="mr-auto">
          <Nav.Link href="http://127.0.0.1:8000/api/book">Books</Nav.Link>
          <Nav.Link href="http://127.0.0.1:8000/api/chapter">Chapters</Nav.Link>
          <Nav.Link href="http://127.0.0.1:8000/api">API</Nav.Link>
          <Nav.Link href="http://127.0.0.1:8000/docs">Docs</Nav.Link>
          <NavDropdown title="Resources" id="basic-nav-dropdown">
            <NavDropdown.Item href="https://wot.fandom.com/wiki/A_beginning">
              The Wheel of Time Wiki
            </NavDropdown.Item>
            <NavDropdown.Item href="https://dragonmount.com/Books/index/">
              Dragonmount
            </NavDropdown.Item>
            <NavDropdown.Item href="https://www.tarvalon.net/index.php?pages/Library/">
              Tar Valon Library
            </NavDropdown.Item>
            <NavDropdown.Divider />
            <NavDropdown.Item href="https://dragonmount.com/store/category/8-robert-jordan-ebooks/">
              Buy The Wheel of Time E-books
            </NavDropdown.Item>
          </NavDropdown>
        </Nav>
        <Button href="http://127.0.0.1:8000/admin" variant="warning">
          Admin
        </Button>
      </Navbar.Collapse>
    </Navbar>
  );
}

class Map extends React.Component {
  drawX(x, y, ctx) {
    ctx.beginPath();

    ctx.moveTo(x - 9.5, y - 9.5);
    ctx.lineTo(x + 9.5, y + 9.5);

    ctx.moveTo(x + 9.5, y - 9.5);
    ctx.lineTo(x - 9.5, y + 9.5);
    ctx.stroke();
  }

  componentDidMount() {
    const { canvas } = this.refs;
    const ctx = canvas.getContext("2d");
    const { img } = this.refs;

    img.onload = () => {
      ctx.drawImage(img, 0, 0);
    };
  }

  shouldComponentUpdate(nextProps) {
    return nextProps.narrators !== this.props.narrators;
  }

  componentDidUpdate(prevProps, prevState, snapshot) {
    // Have to re-define canvas for some reason
    const { canvas } = this.refs;
    const ctx = canvas.getContext("2d");
    const { img } = this.refs;

    // setup image
    ctx.globalAlpha = 1;
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.beginPath();
    ctx.drawImage(img, 0, 0);
    ctx.stroke();

    // Set opacity for points
    ctx.lineWidth = 5;

    ctx.globalAlpha = 0.8;
    ctx.lineCap = "round";

    // Draw on the map using canvas, point, and narrators
    const { narrators } = this.props;
    if (narrators !== {}) {
      for (const [id, narrator] of Object.entries(narrators)) {
        // For each narrator, do
        console.log(`DEBUG: narrator id:${id}`);
        ctx.strokeStyle = narrator.color;
        const pointLenght = Object.keys(narrator.points).length;
        for (const [pointId, point] of Object.entries(narrator.points)) {
          // For each point, do
          console.log(`DEBUG:  point id:${id}`);
          const { x } = point;
          const { y } = point;
          if (pointLenght === 1) {
            // If there is only one point, draw rectangle
            ctx.moveTo(x, y);
            ctx.beginPath();
            ctx.rect(x - 7, y - 7, 14, 14);
            ctx.stroke();
          } else if (parseInt(pointId) === pointLenght - 1) {
            // Draw rectangle the final point
            ctx.lineTo(x, y);
            ctx.stroke();
            this.drawX(x, y, ctx);
          } else if (parseInt(pointId) === 0) {
            // Draw a circle on the first point
            ctx.moveTo(x, y);
            ctx.beginPath();
            ctx.arc(x, y, 8, 0, 2 * Math.PI);
            ctx.moveTo(x, y);
            ctx.stroke();
          } else {
            // Draw a line on other points
            ctx.lineTo(x, y);
            ctx.stroke();
          }
          console.log(point);
        }
      }
    }
  }

  render() {
    const height = 3374;
    const width = 2427;
    const { scale, translation } = this.props;
    return (
      <MapInteractionCSS
        scale={scale}
        translation={translation}
        onChange={({ scale, translation }) =>
          this.setState({ scale, translation })
        }
      >
        <div>
          <canvas ref="canvas" width={height} height={width} />
          <img
            ref="img"
            alt="map"
            src={require("./images/map-big-clean.png")}
            className="hidden"
          />
        </div>
      </MapInteractionCSS>
    );
  }
}

Map.propTypes = {
  narrators: PropTypes.array,
  scale: PropTypes.number,
  translation: PropTypes.shape({ x: PropTypes.number, y: PropTypes.number }),
};

class Chapter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentChapter: {},
      scale: 0.35,
      translation: {
        x: 15,
        y: 15,
      },
    };
  }

  onChapterSelected(chapter) {
    let position = {
      x: 0,
      y: 0,
    };
    const narrators = Object.values(chapter.narrators);
    for (const narrator of narrators) {
      // TODO Make this works with multiple narrators
      const points = Object.values(narrator.points);
      for (const point of points) {
        position.x += point.x;
        position.y += point.y;
      }
      position.x = Math.round(-(position.x / points.length) / 3.0);
      position.y = Math.round(-(position.y / points.length) / 3.0);
      break;
    }

    this.setState({
      currentChapter: chapter,
      scale: 0.8,
      translation: position,
    });

    const { scrollbars } = this.refs;
    scrollbars.scrollTop(45 * chapter.chapter_number);
  }

  lookupCharacter(chapter_id) {
    const { characters } = this.props;

    // Filter only Character that appears in the currentChapter
    let matched_characters = characters.filter((character) => {
      const narrators = Object.values(character.narrators);
      for (const narrator of narrators) {
        if (narrator.chapter === chapter_id) return true;
      }
      return false;
    });

    return matched_characters;
  }

  render() {
    const { currentChapter, scale, translation } = this.state;
    const { chapters } = this.props;
    return (
      <Row>
        <Col lg={9} md={12}>
          <div className="waygate-map-container">
            <Map
              narrators={currentChapter.narrators}
              scale={scale}
              translation={translation}
            />
          </div>
        </Col>
        <Col lg={3} md={12}>
          <Scrollbars ref="scrollbars" className="waygate-scrollbars">
            <Accordion>
              {chapters.map((chapter) => (
                <Card key={chapter.chapter_number}>
                  <Accordion.Toggle
                    as={Card.Header}
                    eventKey={chapter.chapter_number}
                    onClick={() => this.onChapterSelected(chapter)}
                    className="waygate-chapter-header"
                  >
                    <h5>
                      <Badge variant="dark">
                        Chapter {chapter.chapter_number}
                      </Badge>
                      &nbsp;
                      {chapter.chapter_name}
                    </h5>
                  </Accordion.Toggle>
                  <Accordion.Collapse eventKey={chapter.chapter_number}>
                    <Card.Body className="waygate-chapter-body">
                      <h4>{chapter.chapter_name}</h4>
                      <Badge variant="info">{chapter.period}</Badge>
                      <NarratorList
                        narrating_characters={this.lookupCharacter(chapter.id)}
                      />
                      <p>{chapter.summary}</p>
                    </Card.Body>
                  </Accordion.Collapse>
                </Card>
              ))}
            </Accordion>
          </Scrollbars>
        </Col>
      </Row>
    );
  }
}

Chapter.propTypes = {
  items: PropTypes.array,
};

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      chapters: [],
      characters: [],
    };
  }

  componentDidMount() {
    let url;

    // Fetch chapters data
    url = "http://127.0.0.1:8000/api/chapter";
    fetch(url)
      .then((res) => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            chapters: result,
          });
        },
        (error) => {
          this.setState({
            isLoaded: true,
            error,
          });
        }
      );

    // Fetch characters data
    url = "http://127.0.0.1:8000/api/character";
    fetch(url)
      .then((res) => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            characters: result,
          });
        },
        (error) => {
          this.setState({
            isLoaded: true,
            error,
          });
        }
      );
  }

  render() {
    const { error, isLoaded, chapters, characters } = this.state;
    if (error) {
      return (
        <div>
          Error:
          {error.message}
        </div>
      );
    }
    if (!isLoaded) {
      return <div>Loading...</div>;
    }
    return (
      <div className="App">
        <MenuBar />
        <Container fluid className="waygate-app-container">
          <Chapter chapters={chapters} characters={characters} />
        </Container>
      </div>
    );
  }
}

export default App;
