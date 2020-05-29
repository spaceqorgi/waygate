import React, { Component } from 'react'
import './App.css'
import { Accordion, Card, Container, Row, Col } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import { MapInteractionCSS } from 'react-map-interaction'
import { Scrollbars } from 'react-custom-scrollbars'
import PropTypes from 'prop-types'

function drawX (x, y, ctx) {
  ctx.beginPath()

  ctx.moveTo(x - 7.5, y - 7.5)
  ctx.lineTo(x + 7.5, y + 7.5)

  ctx.moveTo(x + 7.5, y - 7.5)
  ctx.lineTo(x - 7.5, y + 7.5)
  ctx.stroke()
}

class Map extends React.Component {
  componentDidMount () {
    const canvas = this.refs.canvas
    const ctx = canvas.getContext('2d')
    const img = this.refs.img

    img.onload = () => {
      ctx.drawImage(img, 0, 0)
    }
  }

  shouldComponentUpdate (nextProps) {
    return nextProps.narrators !== this.props.narrators
  }

  componentDidUpdate (prevProps, prevState, snapshot) {
    // Have to re-define canvas for some reason
    const canvas = this.refs.canvas
    const ctx = canvas.getContext('2d')
    const img = this.refs.img

    ctx.clearRect(0, 0, canvas.width, canvas.height)
    ctx.beginPath()
    ctx.drawImage(img, 0, 0)
    ctx.lineWidth = 4
    ctx.stroke()

    // Draw on the map using canvas, point, and narrators
    const narrators = this.props.narrators
    if (narrators !== {}) {
      console.log('DEBUG: You select a chapter')
      for (const [id, narrator] of Object.entries(narrators)) {
        // For each narrator, do
        console.log('DEBUG: narrator id:' + id)
        ctx.strokeStyle = narrator.color
        const pointLenght = Object.keys(narrator.points).length
        for (const [pointId, point] of Object.entries(narrator.points)) {
         // For each point, do
          console.log('DEBUG:  point id:' + id)
          const x = point.x
          const y = point.y
          if (pointLenght === 1) {
            // If there is only one point, draw rectangle
            ctx.moveTo(x, y)
            ctx.beginPath()
            ctx.rect(x - 5, y - 5, 10, 10)
            ctx.stroke()
          } else if (parseInt(pointId) === pointLenght - 1) {
            // Draw rectangle the final point
            ctx.lineTo(x, y)
            ctx.stroke()
            drawX(x, y, ctx)
          } else if (parseInt(pointId) === 0) {
            // Draw a circle on the first point
            ctx.moveTo(x, y)
            ctx.beginPath()
            ctx.arc(x, y, 5, 0, 2 * Math.PI)
            ctx.moveTo(x, y)
            ctx.stroke()
          } else {
            // Draw a line on other points
            ctx.lineTo(x, y)
            ctx.stroke()
          }
          console.log(point)
        }
        ctx.stroke()
      }
    }
  }

  render () {
    const height = 3374
    const width = 2427
    const { scale, translation } = this.props
    return (
      <MapInteractionCSS
        scale={scale}
        translation={translation}
        onChange={ ({ scale, translation }) => this.setState({ scale, translation })}
        height="800px"
        width="100%" >
        <div>
          <canvas
            ref="canvas"
            width={height}
            height={width}/>
          <img
            ref="img"
            alt="map"
            src={require('./images/map-big-clean.png')}
            className="hidden"/>
        </div>
      </MapInteractionCSS>
    )
  }
}

Map.propTypes = {
  narrators: PropTypes.array,
  scale: PropTypes.number,
  translation: PropTypes.shape({ x: PropTypes.number, y: PropTypes.number })
}

class Chapter extends React.Component {
  constructor (props) {
    super(props)
    this.state = {
      currentChapter: {},
      scale: 0.8,
      translation: {
        x: -500,
        y: -500
      }
    }
  }

  onChapterSelected (chapter) {
    let position = {
      x: 0,
      y: 0
    }
    for(const [narratorId, narrator] of Object.entries(chapter.narrators)){
      // TODO Make this works with multiple narrators
      const points = Object.entries(narrator.points)
      for(const [pointId, point] of points){
        position.x += point.x
        position.y += point.y
      }
      position.x = Math.round(-(position.x / points.length) / 3)
      position.y = Math.round(-(position.y / points.length) / 3)
      break
    }
    console.log(position)

    this.setState({
      currentChapter: chapter,
      scale: 0.8,
      translation: position
    })

    console.log('DEBUG: You select chapter=' + chapter.chapter_number)
    const scrollbars = this.refs.scrollbars
    scrollbars.scrollTop(45 * chapter.chapter_number)
  }

  render () {
    const { currentChapter, scale, translation } = this.state
    const { items } = this.props
    return (
      <Row>
        <Col lg={9} md={12}>
          <Map
            narrators={currentChapter.narrators}
            scale={scale}
            translation={translation}/>
        </Col>
        <Col lg={3} md={6} className="Chapter">

          <Scrollbars
            ref="scrollbars"
            style={{ width: 450, height: 800 }}
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
                      <h1>{item.chapter_name}</h1>
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

Chapter.propTypes = {
  items: PropTypes.array
}

class App extends Component {
  constructor (props) {
    super(props)
    this.state = {
      error: null,
      isLoaded: false,
      items: []
    }
  }

  componentDidMount () {
    const url = 'http://127.0.0.1:8000/api/chapter'

    fetch(url)
      .then(res => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            items: result
          })
        },
        (error) => {
          this.setState({
            isLoaded: true,
            error
          })
        }
      )
  }

  render () {
    const { error, isLoaded, items } = this.state
    if (error) {
      return <div>Error: {error.message}</div>
    } else if (!isLoaded) {
      return <div>Loading...</div>
    } else {
      return (
        <Container fluid className="App">
          <Chapter items={items}/>
        </Container>
      )
    }
  }
}

export default App
