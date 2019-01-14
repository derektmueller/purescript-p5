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

#### `CursorTypeOrString`

``` purescript
data CursorTypeOrString
  = CursorTypeOrStringCursorType CursorType
  | CursorTypeOrStringString String
```

#### `ElementOrImage`

``` purescript
data ElementOrImage
  = ElementOrImageElement Element
  | ElementOrImageImage Image
```

#### `ArrayNumberOrImage`

``` purescript
data ArrayNumberOrImage
  = ArrayNumberOrImageArrayNumber (Array Number)
  | ArrayNumberOrImageImage Image
```

#### `NumberOrArrayNumberOrColorOrImage`

``` purescript
data NumberOrArrayNumberOrColorOrImage
  = NumberOrArrayNumberOrColorOrImageNumber Number
  | NumberOrArrayNumberOrColorOrImageArrayNumber (Array Number)
  | NumberOrArrayNumberOrColorOrImageColor Color
  | NumberOrArrayNumberOrColorOrImageImage Image
```

#### `GraphicsOrImageOrMediaElement`

``` purescript
data GraphicsOrImageOrMediaElement
  = GraphicsOrImageOrMediaElementGraphics Graphics
  | GraphicsOrImageOrMediaElementImage Image
  | GraphicsOrImageOrMediaElementMediaElement MediaElement
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

#### `ColorMode`

``` purescript
data ColorMode
  = COLOR_MODE_RGB
  | COLOR_MODE_HSB
  | COLOR_MODE_HSL
```

#### `CursorType`

``` purescript
data CursorType
  = CURSOR_TYPE_ARROW
  | CURSOR_TYPE_CROSS
  | CURSOR_TYPE_HAND
  | CURSOR_TYPE_MOVE
  | CURSOR_TYPE_TEXT
  | CURSOR_TYPE_WAIT
```

#### `FilterType`

``` purescript
data FilterType
  = FILTER_TYPE_THRESHOLD
  | FILTER_TYPE_GRAY
  | FILTER_TYPE_OPAQUE
  | FILTER_TYPE_INVERT
  | FILTER_TYPE_POSTERIZE
  | FILTER_TYPE_ERODE
  | FILTER_TYPE_DILATE
  | FILTER_TYPE_BLUR
```

#### `ImageMode`

``` purescript
data ImageMode
  = IMAGE_MODE_CORNER
  | IMAGE_MODE_CORNERS
  | IMAGE_MODE_CENTER
```

#### `DebugMode`

``` purescript
data DebugMode
  = DEBUG_MODE_GRID
  | DEBUG_MODE_AXES
```

#### `AngleMode`

``` purescript
data AngleMode
  = ANGLE_MODE_RADIANS
  | ANGLE_MODE_DEGREES
```

#### `BlendMode`

``` purescript
data BlendMode
  = BLEND_MODE_BLEND
  | BLEND_MODE_DARKEST
  | BLEND_MODE_LIGHTEST
  | BLEND_MODE_DIFFERENCE
  | BLEND_MODE_MULTIPLY
  | BLEND_MODE_EXCLUSION
  | BLEND_MODE_SCREEN
  | BLEND_MODE_REPLACE
  | BLEND_MODE_OVERLAY
  | BLEND_MODE_HARD_LIGHT
  | BLEND_MODE_SOFT_LIGHT
  | BLEND_MODE_DODGE
  | BLEND_MODE_BURN
  | BLEND_MODE_ADD
  | BLEND_MODE_NORMAL
```

#### `CreateGraphicsRenderer`

``` purescript
data CreateGraphicsRenderer
  = CREATE_GRAPHICS_RENDERER_WEBGL
```

#### `ArcMode`

``` purescript
data ArcMode
  = ARC_MODE_CHORD
  | ARC_MODE_PIE
  | ARC_MODE_OPEN
```

#### `BeginShapeKind`

``` purescript
data BeginShapeKind
  = BEGIN_SHAPE_KIND_POINTS
  | BEGIN_SHAPE_KIND_LINES
  | BEGIN_SHAPE_KIND_TRIANGLES
  | BEGIN_SHAPE_KIND_TRIANGLE_FAN
  | BEGIN_SHAPE_KIND_TRIANGLE_STRIP
  | BEGIN_SHAPE_KIND_QUADS
  | BEGIN_SHAPE_KIND_QUAD_STRIP
```

#### `EllipseMode`

``` purescript
data EllipseMode
  = ELLIPSE_MODE_CENTER
  | ELLIPSE_MODE_RADIUS
  | ELLIPSE_MODE_CORNER
  | ELLIPSE_MODE_CORNERS
```

#### `EndShapeMode`

``` purescript
data EndShapeMode
  = END_SHAPE_MODE_CLOSE
```

#### `RectMode`

``` purescript
data RectMode
  = RECT_MODE_CORNER
  | RECT_MODE_CORNERS
  | RECT_MODE_CENTER
  | RECT_MODE_RADIUS
```

#### `StrokeCap`

``` purescript
data StrokeCap
  = STROKE_CAP_SQUARE
  | STROKE_CAP_PROJECT
  | STROKE_CAP_ROUND
```

#### `StrokeJoin`

``` purescript
data StrokeJoin
  = STROKE_JOIN_MITER
  | STROKE_JOIN_BEVEL
  | STROKE_JOIN_ROUND
```

#### `TextAlignHorizAlign`

``` purescript
data TextAlignHorizAlign
  = TEXT_ALIGN_HORIZ_ALIGN_LEFT
  | TEXT_ALIGN_HORIZ_ALIGN_CENTER
  | TEXT_ALIGN_HORIZ_ALIGN_RIGHT
```

#### `TextAlignVertAlign`

``` purescript
data TextAlignVertAlign
  = TEXT_ALIGN_VERT_ALIGN_TOP
  | TEXT_ALIGN_VERT_ALIGN_BOTTOM
  | TEXT_ALIGN_VERT_ALIGN_CENTER
  | TEXT_ALIGN_VERT_ALIGN_BASELINE
```

#### `TextStyle`

``` purescript
data TextStyle
  = TEXT_STYLE_NORMAL
  | TEXT_STYLE_ITALIC
  | TEXT_STYLE_BOLD
```

#### `alpha`

``` purescript
alpha :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/alpha)

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

#### `background5`

``` purescript
background5 :: P5 -> Image -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/background)

#### `background6`

``` purescript
background6 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/background)

#### `blue`

``` purescript
blue :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/blue)

#### `brightness`

``` purescript
brightness :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/brightness)

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

#### `colorMode`

``` purescript
colorMode :: P5 -> ColorMode -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/colorMode)

#### `colorMode2`

``` purescript
colorMode2 :: P5 -> ColorMode -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/colorMode)

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

#### `green`

``` purescript
green :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/green)

#### `hue`

``` purescript
hue :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/hue)

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

#### `noFill`

``` purescript
noFill :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noFill)

#### `noStroke`

``` purescript
noStroke :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noStroke)

#### `red`

``` purescript
red :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/red)

#### `saturation`

``` purescript
saturation :: P5 -> ArrayNumberOrStringOrColor -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saturation)

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

#### `byte`

``` purescript
byte :: P5 -> BooleanOrNumberOrString -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/byte)

#### `char`

``` purescript
char :: P5 -> NumberOrString -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/char)

#### `createStringDict2`

``` purescript
createStringDict2 :: P5 -> String -> String -> StringDict
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createStringDict)

#### `float`

``` purescript
float :: P5 -> String -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/float)

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

#### `int2`

``` purescript
int2 :: P5 -> BooleanOrNumberOrString -> (Maybe Int) -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/int)

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

#### `nfc2`

``` purescript
nfc2 :: P5 -> (Array Number) -> (Maybe IntOrString) -> (Array String)
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

#### `nfs2`

``` purescript
nfs2 :: P5 -> (Array Int) -> (Maybe Int) -> (Maybe Int) -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/nfs)

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

#### `str`

``` purescript
str :: P5 -> BooleanOrNumberOrString -> String
```

[p5js.org documentation](https://p5js.org/reference/#/p5/str)

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

#### `unchar2`

``` purescript
unchar2 :: P5 -> (Array String) -> (Array Number)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/unchar)

#### `unhex`

``` purescript
unhex :: P5 -> String -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/unhex)

#### `unhex2`

``` purescript
unhex2 :: P5 -> (Array String) -> (Array Number)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/unhex)

#### `cursor`

``` purescript
cursor :: P5 -> CursorTypeOrString -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/cursor)

#### `displayDensity`

``` purescript
displayDensity :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/displayDensity)

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

#### `noCursor`

``` purescript
noCursor :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noCursor)

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

#### `windowResized`

``` purescript
windowResized :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/windowResized)

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

#### `doubleClicked`

``` purescript
doubleClicked :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/doubleClicked)

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

#### `mouseClicked`

``` purescript
mouseClicked :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/mouseClicked)

#### `mouseDragged`

``` purescript
mouseDragged :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/mouseDragged)

#### `mouseMoved`

``` purescript
mouseMoved :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/mouseMoved)

#### `mousePressed`

``` purescript
mousePressed :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/mousePressed)

#### `mouseReleased`

``` purescript
mouseReleased :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/mouseReleased)

#### `mouseWheel`

``` purescript
mouseWheel :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/mouseWheel)

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

#### `touchEnded`

``` purescript
touchEnded :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/touchEnded)

#### `touchMoved`

``` purescript
touchMoved :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/touchMoved)

#### `touchStarted`

``` purescript
touchStarted :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/touchStarted)

#### `createWriter`

``` purescript
createWriter :: P5 -> String -> (Maybe String) -> PrintWriter
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createWriter)

#### `day`

``` purescript
day :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/day)

#### `hour`

``` purescript
hour :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/hour)

#### `loadStrings`

``` purescript
loadStrings :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> (Array String)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadStrings)

#### `millis`

``` purescript
millis :: P5 -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/millis)

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

#### `saveStrings`

``` purescript
saveStrings :: P5 -> (Array String) -> String -> (Maybe String) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)

#### `saveTable`

``` purescript
saveTable :: P5 -> Table -> String -> (Maybe String) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saveTable)

#### `second`

``` purescript
second :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/second)

#### `year`

``` purescript
year :: P5 -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/year)

#### `blend`

``` purescript
blend :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> BlendMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/blend)

#### `copy`

``` purescript
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/copy)

#### `copy2`

``` purescript
copy2 :: P5 -> ElementOrImage -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/copy)

#### `createImage`

``` purescript
createImage :: P5 -> Int -> Int -> Image
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createImage)

#### `filter`

``` purescript
filter :: P5 -> FilterType -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/filter)

#### `get`

``` purescript
get :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> ArrayNumberOrImage
```

[p5js.org documentation](https://p5js.org/reference/#/p5/get)

#### `image`

``` purescript
image :: P5 -> ElementOrImage -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/image)

#### `image2`

``` purescript
image2 :: P5 -> ElementOrImage -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/image)

#### `imageMode`

``` purescript
imageMode :: P5 -> ImageMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/imageMode)

#### `loadPixels`

``` purescript
loadPixels :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)

#### `noTint`

``` purescript
noTint :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noTint)

#### `saveCanvas`

``` purescript
saveCanvas :: P5 -> (Maybe String) -> (Maybe String) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)

#### `set`

``` purescript
set :: P5 -> Number -> Number -> NumberOrArrayNumberOrColorOrImage -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/set)

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

#### `updatePixels`

``` purescript
updatePixels :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)

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

#### `camera`

``` purescript
camera :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/camera)

#### `createCamera`

``` purescript
createCamera :: P5 -> Camera
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createCamera)

#### `createShader`

``` purescript
createShader :: P5 -> String -> String -> Shader
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createShader)

#### `debugMode`

``` purescript
debugMode :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode2`

``` purescript
debugMode2 :: P5 -> DebugMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode3`

``` purescript
debugMode3 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode4`

``` purescript
debugMode4 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode5`

``` purescript
debugMode5 :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

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

#### `loadShader`

``` purescript
loadShader :: P5 -> (Maybe String) -> (Maybe String) -> Shader
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadShader)

#### `noDebugMode`

``` purescript
noDebugMode :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noDebugMode)

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

#### `setCamera`

``` purescript
setCamera :: P5 -> Camera -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/setCamera)

#### `shader`

``` purescript
shader :: P5 -> (Maybe Shader) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/shader)

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

#### `texture`

``` purescript
texture :: P5 -> GraphicsOrImageOrMediaElement -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/texture)

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

#### `angleMode`

``` purescript
angleMode :: P5 -> AngleMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/angleMode)

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

#### `ceil`

``` purescript
ceil :: P5 -> Number -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ceil)

#### `constrain`

``` purescript
constrain :: P5 -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/constrain)

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

#### `degrees`

``` purescript
degrees :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/degrees)

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

#### `exp`

``` purescript
exp :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/exp)

#### `floor`

``` purescript
floor :: P5 -> Number -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/floor)

#### `lerp`

``` purescript
lerp :: P5 -> Number -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/lerp)

#### `log`

``` purescript
log :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/log)

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

#### `pow`

``` purescript
pow :: P5 -> Number -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pow)

#### `radians`

``` purescript
radians :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/radians)

#### `randomSeed`

``` purescript
randomSeed :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/randomSeed)

#### `round`

``` purescript
round :: P5 -> Number -> Int
```

[p5js.org documentation](https://p5js.org/reference/#/p5/round)

#### `sin`

``` purescript
sin :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/sin)

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

#### `tan`

``` purescript
tan :: P5 -> Number -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tan)

#### `blendMode`

``` purescript
blendMode :: P5 -> BlendMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/blendMode)

#### `createGraphics`

``` purescript
createGraphics :: P5 -> Number -> Number -> (Maybe CreateGraphicsRenderer) -> Graphics
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createGraphics)

#### `noCanvas`

``` purescript
noCanvas :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noCanvas)

#### `resizeCanvas`

``` purescript
resizeCanvas :: P5 -> Number -> Number -> (Maybe Boolean) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/resizeCanvas)

#### `setAttributes2`

``` purescript
setAttributes2 :: P5 -> String -> Boolean -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/setAttributes)

#### `arc`

``` purescript
arc :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe ArcMode) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/arc)

#### `beginContour`

``` purescript
beginContour :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)

#### `beginShape`

``` purescript
beginShape :: P5 -> (Maybe BeginShapeKind) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/beginShape)

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

#### `box`

``` purescript
box :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/box)

#### `cone`

``` purescript
cone :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/cone)

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

#### `ellipseMode`

``` purescript
ellipseMode :: P5 -> EllipseMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ellipseMode)

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

#### `endShape`

``` purescript
endShape :: P5 -> (Maybe EndShapeMode) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/endShape)

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

#### `model`

``` purescript
model :: P5 -> Geometry -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/model)

#### `noSmooth`

``` purescript
noSmooth :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noSmooth)

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

#### `rectMode`

``` purescript
rectMode :: P5 -> RectMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/rectMode)

#### `smooth`

``` purescript
smooth :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/smooth)

#### `sphere`

``` purescript
sphere :: P5 -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/sphere)

#### `strokeCap`

``` purescript
strokeCap :: P5 -> StrokeCap -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/strokeCap)

#### `strokeJoin`

``` purescript
strokeJoin :: P5 -> StrokeJoin -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/strokeJoin)

#### `strokeWeight`

``` purescript
strokeWeight :: P5 -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)

#### `torus`

``` purescript
torus :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/torus)

#### `triangle`

``` purescript
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/triangle)

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

#### `loop`

``` purescript
loop :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loop)

#### `noLoop`

``` purescript
noLoop :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noLoop)

#### `pop`

``` purescript
pop :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pop)

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

#### `applyMatrix`

``` purescript
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/applyMatrix)

#### `resetMatrix`

``` purescript
resetMatrix :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/resetMatrix)

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

#### `loadFont`

``` purescript
loadFont :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Font
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadFont)

#### `textAlign2`

``` purescript
textAlign2 :: P5 -> TextAlignHorizAlign -> (Maybe TextAlignVertAlign) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textAlign)

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

#### `textStyle2`

``` purescript
textStyle2 :: P5 -> TextStyle -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textStyle)

#### `textWidth`

``` purescript
textWidth :: P5 -> String -> Number
```

[p5js.org documentation](https://p5js.org/reference/#/p5/textWidth)


