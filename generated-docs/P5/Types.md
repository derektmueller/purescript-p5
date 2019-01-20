## Module P5.Types

#### `P5`

``` purescript
data P5 :: Type
```

#### `Element`

``` purescript
data Element :: Type
```

#### `Vector`

``` purescript
data Vector :: Type
```

#### `Color`

``` purescript
data Color :: Type
```

#### `Image`

``` purescript
data Image :: Type
```

#### `Graphics`

``` purescript
data Graphics :: Type
```

#### `MediaElement`

``` purescript
data MediaElement :: Type
```

#### `Shader`

``` purescript
data Shader :: Type
```

#### `Camera`

``` purescript
data Camera :: Type
```

#### `Table`

``` purescript
data Table :: Type
```

#### `PrintWriter`

``` purescript
data PrintWriter :: Type
```

#### `StringDict`

``` purescript
data StringDict :: Type
```

#### `Font`

``` purescript
data Font :: Type
```

#### `Geometry`

``` purescript
data Geometry :: Type
```

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

#### `CreateCanvasRenderer`

``` purescript
data CreateCanvasRenderer
  = CREATE_CANVAS_RENDERER_P2D
  | CREATE_CANVAS_RENDERER_WEBGL
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


