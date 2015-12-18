class StarShip
  @shipName
  @x: 200
  @y: 200
  @vx: 0
  @vy: 0
  constructor: (@shipName, @x, @y) ->
    @shipName = shipName
    @x = x || 200
    @y = y || 200
    return
  render: ->
    context.beginPath()
    context.arc(@x, @y, 4, 2*Math.PI, false)
    context.fillStyle = "rgba(255, 255, 255, 1)"
    context.fill()
    return
  move: (x, y) ->
    @vx += x
    @vy += y
    if @x < 0
      @x = 0
      @vx = 0
    if @x > CANVAS_WIDTH
      @x = CANVAS_WIDTH
      @vx = 0
    if @y < 0
      @y = 0
      @vy = 0
    if @y > CANVAS_HEIGHT
      @y = CANVAS_HEIGHT
      @vy = 0


class Player
  @name
  @ship
  constructor: (@name, @ship) ->
    @name = @name
    @ship = @ship
  update: ->
    for key of keydown
      val = Number(key)
      if val == 37
        @ship.move(-1, 0)
      if val == 38
        @ship.move(0, 1)
      if val == 39
        @ship.move(1, 0)
      if val == 40
        @ship.move(0, -1)
    return
