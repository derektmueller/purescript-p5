## Module P5.Shape


### Re-exported from P5.Shape.Attributes:

#### `strokeWeight`

``` purescript
strokeWeight :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)

#### `strokeJoin`

``` purescript
strokeJoin :: P5 -> StrokeJoin -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/strokeJoin)

#### `strokeCap`

``` purescript
strokeCap :: P5 -> StrokeCap -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/strokeCap)

#### `smooth`

``` purescript
smooth :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/smooth)

#### `rectMode`

``` purescript
rectMode :: P5 -> RectMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rectMode)

#### `noSmooth`

``` purescript
noSmooth :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noSmooth)

#### `ellipseMode`

``` purescript
ellipseMode :: P5 -> EllipseMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipseMode)

### Re-exported from P5.Shape.Curves:

#### `curveTightness`

``` purescript
curveTightness :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveTightness)

#### `curveTangent`

``` purescript
curveTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveTangent)

#### `curvePoint`

``` purescript
curvePoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curvePoint)

#### `curveDetail`

``` purescript
curveDetail :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveDetail)

#### `curve`

``` purescript
curve :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curve)

#### `bezierTangent`

``` purescript
bezierTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierTangent)

#### `bezierPoint`

``` purescript
bezierPoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierPoint)

#### `bezierDetail`

``` purescript
bezierDetail :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierDetail)

#### `bezier`

``` purescript
bezier :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezier)

### Re-exported from P5.Shape.ThreeDModels:

#### `model`

``` purescript
model :: P5 -> Geometry -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/model)

### Re-exported from P5.Shape.ThreeDPrimitives:

#### `torus`

``` purescript
torus :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/torus)

#### `sphere`

``` purescript
sphere :: P5 -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/sphere)

#### `plane`

``` purescript
plane :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/plane)

#### `ellipsoid`

``` purescript
ellipsoid :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)

#### `cylinder`

``` purescript
cylinder :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Maybe Boolean) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/cylinder)

#### `cone`

``` purescript
cone :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/cone)

#### `box`

``` purescript
box :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/box)

### Re-exported from P5.Shape.TwoDPrimitives:

#### `triangle`

``` purescript
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/triangle)

#### `rect2`

``` purescript
rect2 :: P5 -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rect)

#### `rect`

``` purescript
rect :: P5 -> Number -> Number -> Number -> Number -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rect)

#### `quad`

``` purescript
quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/quad)

#### `point`

``` purescript
point :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/point)

#### `line2`

``` purescript
line2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/line)

#### `line`

``` purescript
line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/line)

#### `ellipse2`

``` purescript
ellipse2 :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)

#### `ellipse`

``` purescript
ellipse :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)

#### `arc`

``` purescript
arc :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe ArcMode) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/arc)

### Re-exported from P5.Shape.Vertex:

#### `vertex2`

``` purescript
vertex2 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/vertex)

#### `vertex`

``` purescript
vertex :: P5 -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/vertex)

#### `quadraticVertex2`

``` purescript
quadraticVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)

#### `quadraticVertex`

``` purescript
quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)

#### `endShape`

``` purescript
endShape :: P5 -> (Maybe EndShapeMode) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/endShape)

#### `endContour`

``` purescript
endContour :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/endContour)

#### `curveVertex2`

``` purescript
curveVertex2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)

#### `curveVertex`

``` purescript
curveVertex :: P5 -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)

#### `bezierVertex2`

``` purescript
bezierVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)

#### `bezierVertex`

``` purescript
bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)

#### `beginShape`

``` purescript
beginShape :: P5 -> (Maybe BeginShapeKind) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/beginShape)

#### `beginContour`

``` purescript
beginContour :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)

