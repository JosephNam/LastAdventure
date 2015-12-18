players = require './game.coffee'
animate = window.requestAnimationFrame ||
  window.webkitRequestAnimationFrame ||
  window.mozRequestAnimationFrame ||
  (callback) ->
    window.setTimeout(callback, 1000/60)
    return

canvas = document.createElement('canvas')
CANVAS_WIDTH = 1200
CANVAS_HEIGHT = 900
canvas.width = CANVAS_WIDTH
canvas.height = CANVAS_HEIGHT
context = canvas.getContext('2d')

window.onload = ->
  document.body.appendChild(canvas)
  animate(step)
  return

keysDown = {}

window.addEventListener("keydown", (event) ->
  keysDown[event.keyCode] = true;
  return
)

window.addEventListener("keyup", (event) ->
  delete keysDown[event.keyCode]
  return
)


step = ->
  update()
  render()
  animate(step)
  return

update = ->
  return

render = ->
  context.fillStyle = "#000000"
  context.fillRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT) 
  return




