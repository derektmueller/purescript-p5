## Module P5.Generated

#### `ArrayNumberOrStringOrColor`

``` purescript
data ArrayNumberOrStringOrColor
  = ArrayNumberOrStringOrColorArrayNumber (Array Number)
  | ArrayNumberOrStringOrColorString String
  | ArrayNumberOrStringOrColorColor Color
```

#### `BooleanOrNumberOrString`

``` purescript
data BooleanOrNumberOrString
  = BooleanOrNumberOrStringBoolean Boolean
  | BooleanOrNumberOrStringNumber Number
  | BooleanOrNumberOrStringString String
```

#### `NumberOrString`

``` purescript
data NumberOrString
  = NumberOrStringNumber Number
  | NumberOrStringString String
```

#### `IntOrString`

``` purescript
data IntOrString
  = IntOrStringInt Int
  | IntOrStringString String
```

#### `ArrayNumberOrVector`

``` purescript
data ArrayNumberOrVector
  = ArrayNumberOrVectorArrayNumber (Array Number)
  | ArrayNumberOrVectorVector Vector
```

#### `NumberOrArrayNumberOrVector`

``` purescript
data NumberOrArrayNumberOrVector
  = NumberOrArrayNumberOrVectorNumber Number
  | NumberOrArrayNumberOrVectorArrayNumber (Array Number)
  | NumberOrArrayNumberOrVectorVector Vector
```

#### `abs`

``` purescript
abs :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/abs)

#### `acos`

``` purescript
acos :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/acos)

#### `alpha`

``` purescript
alpha :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/alpha)

#### `ambientLight`

``` purescript
ambientLight :: P5 -> String -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight2`

``` purescript
ambientLight2 :: P5 -> (Array Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight3`

``` purescript
ambientLight3 :: P5 -> Color -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight4`

``` purescript
ambientLight4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight5`

``` purescript
ambientLight5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientMaterial`

``` purescript
ambientMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)

#### `ambientMaterial2`

``` purescript
ambientMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)

#### `applyMatrix`

``` purescript
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/applyMatrix)

#### `asin`

``` purescript
asin :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/asin)

#### `atan`

``` purescript
atan :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/atan)

#### `atan2`

``` purescript
atan2 :: P5 -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/atan2)

#### `background`

``` purescript
background :: P5 -> Color -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/background)

#### `background2`

``` purescript
background2 :: P5 -> (Array Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/background)

#### `background3`

``` purescript
background3 :: P5 -> String -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/background)

#### `background4`

``` purescript
background4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/background)

#### `background6`

``` purescript
background6 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/background)

#### `beginContour`

``` purescript
beginContour :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)

#### `bezier`

``` purescript
bezier :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezier)

#### `bezierDetail`

``` purescript
bezierDetail :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierDetail)

#### `bezierPoint`

``` purescript
bezierPoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierPoint)

#### `bezierTangent`

``` purescript
bezierTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierTangent)

#### `bezierVertex`

``` purescript
bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)

#### `bezierVertex2`

``` purescript
bezierVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)

#### `blue`

``` purescript
blue :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/blue)

#### `box`

``` purescript
box :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/box)

#### `brightness`

``` purescript
brightness :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/brightness)

#### `byte`

``` purescript
byte :: P5 -> BooleanOrNumberOrString -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/byte)

#### `camera`

``` purescript
camera :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/camera)

#### `ceil`

``` purescript
ceil :: P5 -> Number -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ceil)

#### `char`

``` purescript
char :: P5 -> NumberOrString -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/char)

#### `clear`

``` purescript
clear :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/clear)

#### `color`

``` purescript
color :: P5 -> String -> Color
```

[p5js.org documentation](https://p5js.org/reference/#/p5/color)

#### `color2`

``` purescript
color2 :: P5 -> (Array Number) -> Color
```

[p5js.org documentation](https://p5js.org/reference/#/p5/color)

#### `color3`

``` purescript
color3 :: P5 -> Color -> Color
```

[p5js.org documentation](https://p5js.org/reference/#/p5/color)

#### `color4`

``` purescript
color4 :: P5 -> Number -> (Maybe Number) -> Color
```

[p5js.org documentation](https://p5js.org/reference/#/p5/color)

#### `color5`

``` purescript
color5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> Color
```

[p5js.org documentation](https://p5js.org/reference/#/p5/color)

#### `cone`

``` purescript
cone :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/cone)

#### `constrain`

``` purescript
constrain :: P5 -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/constrain)

#### `copy`

``` purescript
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/copy)

#### `cos`

``` purescript
cos :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/cos)

#### `createVector`

``` purescript
createVector :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> Vector
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createVector)

#### `curve`

``` purescript
curve :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curve)

#### `curveDetail`

``` purescript
curveDetail :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveDetail)

#### `curvePoint`

``` purescript
curvePoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curvePoint)

#### `curveTangent`

``` purescript
curveTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveTangent)

#### `curveTightness`

``` purescript
curveTightness :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveTightness)

#### `curveVertex`

``` purescript
curveVertex :: P5 -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)

#### `curveVertex2`

``` purescript
curveVertex2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)

#### `cylinder`

``` purescript
cylinder :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Maybe Boolean) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/cylinder)

#### `day`

``` purescript
day :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/day)

#### `debugMode`

``` purescript
debugMode :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode5`

``` purescript
debugMode5 :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `degrees`

``` purescript
degrees :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/degrees)

#### `deviceMoved`

``` purescript
deviceMoved :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/deviceMoved)

#### `deviceShaken`

``` purescript
deviceShaken :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/deviceShaken)

#### `deviceTurned`

``` purescript
deviceTurned :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/deviceTurned)

#### `directionalLight`

``` purescript
directionalLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `directionalLight2`

``` purescript
directionalLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `directionalLight3`

``` purescript
directionalLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `directionalLight4`

``` purescript
directionalLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `displayDensity`

``` purescript
displayDensity :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/displayDensity)

#### `dist`

``` purescript
dist :: P5 -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/dist)

#### `dist2`

``` purescript
dist2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/dist)

#### `ellipse`

``` purescript
ellipse :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)

#### `ellipse2`

``` purescript
ellipse2 :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)

#### `ellipsoid`

``` purescript
ellipsoid :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)

#### `endContour`

``` purescript
endContour :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/endContour)

#### `exp`

``` purescript
exp :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/exp)

#### `fill`

``` purescript
fill :: P5 -> String -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/fill)

#### `fill2`

``` purescript
fill2 :: P5 -> (Array Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/fill)

#### `fill3`

``` purescript
fill3 :: P5 -> Color -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/fill)

#### `fill4`

``` purescript
fill4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/fill)

#### `fill5`

``` purescript
fill5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/fill)

#### `float`

``` purescript
float :: P5 -> String -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/float)

#### `floor`

``` purescript
floor :: P5 -> Number -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/floor)

#### `frameRate`

``` purescript
frameRate :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)

#### `frameRate2`

``` purescript
frameRate2 :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)

#### `fullscreen`

``` purescript
fullscreen :: P5 -> (Maybe Boolean) -> Boolean
```

[p5js.org documentation](https://p5js.org/reference/#/p5/fullscreen)

#### `getURL`

``` purescript
getURL :: P5 -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/getURL)

#### `getURLPath`

``` purescript
getURLPath :: P5 -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/getURLPath)

#### `green`

``` purescript
green :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/green)

#### `hex`

``` purescript
hex :: P5 -> Number -> (Maybe Number) -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/hex)

#### `hex2`

``` purescript
hex2 :: P5 -> (Array Number) -> (Maybe Number) -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/hex)

#### `hour`

``` purescript
hour :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/hour)

#### `hue`

``` purescript
hue :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/hue)

#### `int2`

``` purescript
int2 :: P5 -> BooleanOrNumberOrString -> (Maybe Int) -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/int)

#### `keyIsDown`

``` purescript
keyIsDown :: P5 -> Number -> Boolean
```

[p5js.org documentation](https://p5js.org/reference/#/p5/keyIsDown)

#### `keyPressed`

``` purescript
keyPressed :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/keyPressed)

#### `keyReleased`

``` purescript
keyReleased :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/keyReleased)

#### `keyTyped`

``` purescript
keyTyped :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/keyTyped)

#### `lerp`

``` purescript
lerp :: P5 -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/lerp)

#### `lerpColor`

``` purescript
lerpColor :: P5 -> Color -> Color -> Number -> Color
```

[p5js.org documentation](https://p5js.org/reference/#/p5/lerpColor)

#### `lightness`

``` purescript
lightness :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/lightness)

#### `line`

``` purescript
line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/line)

#### `line2`

``` purescript
line2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/line)

#### `loadPixels`

``` purescript
loadPixels :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)

#### `log`

``` purescript
log :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/log)

#### `loop`

``` purescript
loop :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loop)

#### `mag`

``` purescript
mag :: P5 -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/mag)

#### `map`

``` purescript
map :: P5 -> Number -> Number -> Number -> Number -> Number -> (Maybe Boolean) -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/map)

#### `match`

``` purescript
match :: P5 -> String -> String -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/match)

#### `matchAll`

``` purescript
matchAll :: P5 -> String -> String -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/matchAll)

#### `max`

``` purescript
max :: P5 -> (Array Number) -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/max)

#### `max2`

``` purescript
max2 :: P5 -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/max)

#### `millis`

``` purescript
millis :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/millis)

#### `min`

``` purescript
min :: P5 -> (Array Number) -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/min)

#### `min2`

``` purescript
min2 :: P5 -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/min)

#### `minute`

``` purescript
minute :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/minute)

#### `month`

``` purescript
month :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/month)

#### `nf`

``` purescript
nf :: P5 -> NumberOrString -> (Maybe IntOrString) -> (Maybe IntOrString) -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/nf)

#### `nfc`

``` purescript
nfc :: P5 -> NumberOrString -> (Maybe IntOrString) -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/nfc)

#### `nfp`

``` purescript
nfp :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/nfp)

#### `nfp2`

``` purescript
nfp2 :: P5 -> (Array Number) -> (Maybe Int) -> (Maybe Int) -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/nfp)

#### `nfs`

``` purescript
nfs :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/nfs)

#### `noCanvas`

``` purescript
noCanvas :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noCanvas)

#### `noCursor`

``` purescript
noCursor :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noCursor)

#### `noDebugMode`

``` purescript
noDebugMode :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noDebugMode)

#### `noFill`

``` purescript
noFill :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noFill)

#### `noLoop`

``` purescript
noLoop :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noLoop)

#### `noSmooth`

``` purescript
noSmooth :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noSmooth)

#### `noStroke`

``` purescript
noStroke :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noStroke)

#### `noTint`

``` purescript
noTint :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noTint)

#### `noise`

``` purescript
noise :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noise)

#### `noiseDetail`

``` purescript
noiseDetail :: P5 -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noiseDetail)

#### `noiseSeed`

``` purescript
noiseSeed :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noiseSeed)

#### `norm`

``` purescript
norm :: P5 -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/norm)

#### `normalMaterial`

``` purescript
normalMaterial :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/normalMaterial)

#### `orbitControl`

``` purescript
orbitControl :: P5 -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/orbitControl)

#### `ortho`

``` purescript
ortho :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ortho)

#### `perspective`

``` purescript
perspective :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/perspective)

#### `pixelDensity`

``` purescript
pixelDensity :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)

#### `pixelDensity2`

``` purescript
pixelDensity2 :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)

#### `plane`

``` purescript
plane :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/plane)

#### `point`

``` purescript
point :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/point)

#### `pointLight`

``` purescript
pointLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `pointLight2`

``` purescript
pointLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `pointLight3`

``` purescript
pointLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `pointLight4`

``` purescript
pointLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `pop`

``` purescript
pop :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pop)

#### `pow`

``` purescript
pow :: P5 -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pow)

#### `preload`

``` purescript
preload :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/preload)

#### `push`

``` purescript
push :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/push)

#### `quad`

``` purescript
quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/quad)

#### `quadraticVertex`

``` purescript
quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)

#### `quadraticVertex2`

``` purescript
quadraticVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)

#### `radians`

``` purescript
radians :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/radians)

#### `random2`

``` purescript
random2 :: P5 -> (Maybe Number) -> (Maybe Number) -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/random)

#### `randomGaussian`

``` purescript
randomGaussian :: P5 -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/randomGaussian)

#### `randomSeed`

``` purescript
randomSeed :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/randomSeed)

#### `rect`

``` purescript
rect :: P5 -> Number -> Number -> Number -> Number -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rect)

#### `rect2`

``` purescript
rect2 :: P5 -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rect)

#### `red`

``` purescript
red :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/red)

#### `redraw`

``` purescript
redraw :: P5 -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/redraw)

#### `remove`

``` purescript
remove :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/remove)

#### `resetMatrix`

``` purescript
resetMatrix :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/resetMatrix)

#### `resizeCanvas`

``` purescript
resizeCanvas :: P5 -> Number -> Number -> (Maybe Boolean) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/resizeCanvas)

#### `rotate`

``` purescript
rotate :: P5 -> Number -> (Maybe ArrayNumberOrVector) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rotate)

#### `rotateX`

``` purescript
rotateX :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rotateX)

#### `rotateY`

``` purescript
rotateY :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rotateY)

#### `rotateZ`

``` purescript
rotateZ :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rotateZ)

#### `round`

``` purescript
round :: P5 -> Number -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/round)

#### `saturation`

``` purescript
saturation :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saturation)

#### `saveCanvas`

``` purescript
saveCanvas :: P5 -> (Maybe String) -> (Maybe String) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)

#### `saveStrings`

``` purescript
saveStrings :: P5 -> (Array String) -> String -> (Maybe String) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)

#### `scale`

``` purescript
scale :: P5 -> ArrayNumberOrVector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/scale)

#### `scale2`

``` purescript
scale2 :: P5 -> NumberOrArrayNumberOrVector -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/scale)

#### `second`

``` purescript
second :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/second)

#### `setAttributes2`

``` purescript
setAttributes2 :: P5 -> String -> Boolean -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/setAttributes)

#### `setMoveThreshold`

``` purescript
setMoveThreshold :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/setMoveThreshold)

#### `setShakeThreshold`

``` purescript
setShakeThreshold :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/setShakeThreshold)

#### `shearX`

``` purescript
shearX :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/shearX)

#### `shearY`

``` purescript
shearY :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/shearY)

#### `sin`

``` purescript
sin :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/sin)

#### `smooth`

``` purescript
smooth :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/smooth)

#### `specularMaterial`

``` purescript
specularMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)

#### `specularMaterial2`

``` purescript
specularMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)

#### `sphere`

``` purescript
sphere :: P5 -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/sphere)

#### `split`

``` purescript
split :: P5 -> String -> String -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/split)

#### `splitTokens`

``` purescript
splitTokens :: P5 -> String -> (Maybe String) -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/splitTokens)

#### `sq`

``` purescript
sq :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/sq)

#### `sqrt`

``` purescript
sqrt :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/sqrt)

#### `stroke`

``` purescript
stroke :: P5 -> String -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/stroke)

#### `stroke2`

``` purescript
stroke2 :: P5 -> (Array Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/stroke)

#### `stroke3`

``` purescript
stroke3 :: P5 -> Color -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/stroke)

#### `stroke4`

``` purescript
stroke4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/stroke)

#### `stroke5`

``` purescript
stroke5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/stroke)

#### `strokeWeight`

``` purescript
strokeWeight :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)

#### `tan`

``` purescript
tan :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tan)

#### `textAscent`

``` purescript
textAscent :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textAscent)

#### `textDescent`

``` purescript
textDescent :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textDescent)

#### `textLeading`

``` purescript
textLeading :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)

#### `textLeading2`

``` purescript
textLeading2 :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)

#### `textSize`

``` purescript
textSize :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textSize)

#### `textSize2`

``` purescript
textSize2 :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textSize)

#### `textStyle`

``` purescript
textStyle :: P5 -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textStyle)

#### `textWidth`

``` purescript
textWidth :: P5 -> String -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textWidth)

#### `tint`

``` purescript
tint :: P5 -> String -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint2`

``` purescript
tint2 :: P5 -> (Array Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint3`

``` purescript
tint3 :: P5 -> Color -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint4`

``` purescript
tint4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint5`

``` purescript
tint5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `torus`

``` purescript
torus :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/torus)

#### `translate`

``` purescript
translate :: P5 -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/translate)

#### `translate2`

``` purescript
translate2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/translate)

#### `triangle`

``` purescript
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/triangle)

#### `trim`

``` purescript
trim :: P5 -> String -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/trim)

#### `unchar`

``` purescript
unchar :: P5 -> String -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/unchar)

#### `unhex`

``` purescript
unhex :: P5 -> String -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/unhex)

#### `updatePixels`

``` purescript
updatePixels :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)

#### `vertex`

``` purescript
vertex :: P5 -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/vertex)

#### `vertex2`

``` purescript
vertex2 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/vertex)

#### `windowResized`

``` purescript
windowResized :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/windowResized)

#### `year`

``` purescript
year :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/year)


