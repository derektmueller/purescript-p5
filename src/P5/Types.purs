module P5.Types
  ( P5
  , Element
  , Vector
  , Color
  , Image
  , Graphics
  , MediaElement
  , Shader
  , Camera
  , Table
  , PrintWriter
  , StringDict
  , Font
  , Geometry
  , ArrayNumberOrStringOrColor(..)
  , BooleanOrNumberOrString(..)
  , NumberOrString(..)
  , IntOrString(..)
  , CursorTypeOrString(..)
  , ElementOrImage(..)
  , ArrayNumberOrImage(..)
  , NumberOrArrayNumberOrColorOrImage(..)
  , GraphicsOrImageOrMediaElement(..)
  , ArrayNumberOrVector(..)
  , NumberOrArrayNumberOrVector(..)
  , ColorMode(..)
  , CursorType(..)
  , BlendMode(..)
  , FilterType(..)
  , ImageMode(..)
  , DebugMode(..)
  , AngleMode(..)
  , BlendMode(..)
  , CreateGraphicsRenderer(..)
  , CreateCanvasRenderer(..)
  , ArcMode(..)
  , BeginShapeKind(..)
  , EllipseMode(..)
  , EndShapeMode(..)
  , RectMode(..)
  , StrokeCap(..)
  , StrokeJoin(..)
  , TextAlignHorizAlign(..)
  , TextAlignVertAlign(..)
  , TextStyle(..)
  ) where

foreign import data P5 :: Type
foreign import data Element :: Type
foreign import data Vector :: Type
foreign import data Color :: Type
foreign import data Image :: Type
foreign import data Graphics :: Type
foreign import data MediaElement :: Type
foreign import data Shader :: Type
foreign import data Camera :: Type
foreign import data Table :: Type
foreign import data PrintWriter :: Type
foreign import data StringDict :: Type
foreign import data Font :: Type
foreign import data Geometry :: Type

data ArrayNumberOrStringOrColor = ArrayNumberOrStringOrColorArrayNumber (Array Number) | ArrayNumberOrStringOrColorString String | ArrayNumberOrStringOrColorColor Color
data BooleanOrNumberOrString = BooleanOrNumberOrStringBoolean Boolean | BooleanOrNumberOrStringNumber Number | BooleanOrNumberOrStringString String
data NumberOrString = NumberOrStringNumber Number | NumberOrStringString String
data IntOrString = IntOrStringInt Int | IntOrStringString String
data CursorTypeOrString = CursorTypeOrStringCursorType CursorType | CursorTypeOrStringString String
data ElementOrImage = ElementOrImageElement Element | ElementOrImageImage Image
data ArrayNumberOrImage = ArrayNumberOrImageArrayNumber (Array Number) | ArrayNumberOrImageImage Image
data NumberOrArrayNumberOrColorOrImage = NumberOrArrayNumberOrColorOrImageNumber Number | NumberOrArrayNumberOrColorOrImageArrayNumber (Array Number) | NumberOrArrayNumberOrColorOrImageColor Color | NumberOrArrayNumberOrColorOrImageImage Image
data GraphicsOrImageOrMediaElement = GraphicsOrImageOrMediaElementGraphics Graphics | GraphicsOrImageOrMediaElementImage Image | GraphicsOrImageOrMediaElementMediaElement MediaElement
data ArrayNumberOrVector = ArrayNumberOrVectorArrayNumber (Array Number) | ArrayNumberOrVectorVector Vector
data NumberOrArrayNumberOrVector = NumberOrArrayNumberOrVectorNumber Number | NumberOrArrayNumberOrVectorArrayNumber (Array Number) | NumberOrArrayNumberOrVectorVector Vector

data CreateCanvasRenderer = CREATE_CANVAS_RENDERER_P2D | CREATE_CANVAS_RENDERER_WEBGL
data ColorMode = COLOR_MODE_RGB | COLOR_MODE_HSB | COLOR_MODE_HSL
data CursorType = CURSOR_TYPE_ARROW | CURSOR_TYPE_CROSS | CURSOR_TYPE_HAND | CURSOR_TYPE_MOVE | CURSOR_TYPE_TEXT | CURSOR_TYPE_WAIT
data BlendMode = BLEND_MODE_BLEND | BLEND_MODE_DARKEST | BLEND_MODE_LIGHTEST | BLEND_MODE_DIFFERENCE | BLEND_MODE_MULTIPLY | BLEND_MODE_EXCLUSION | BLEND_MODE_SCREEN | BLEND_MODE_REPLACE | BLEND_MODE_OVERLAY | BLEND_MODE_HARD_LIGHT | BLEND_MODE_SOFT_LIGHT | BLEND_MODE_DODGE | BLEND_MODE_BURN | BLEND_MODE_ADD | BLEND_MODE_NORMAL
data FilterType = FILTER_TYPE_THRESHOLD | FILTER_TYPE_GRAY | FILTER_TYPE_OPAQUE | FILTER_TYPE_INVERT | FILTER_TYPE_POSTERIZE | FILTER_TYPE_ERODE | FILTER_TYPE_DILATE | FILTER_TYPE_BLUR
data ImageMode = IMAGE_MODE_CORNER | IMAGE_MODE_CORNERS | IMAGE_MODE_CENTER
data DebugMode = DEBUG_MODE_GRID | DEBUG_MODE_AXES
data AngleMode = ANGLE_MODE_RADIANS | ANGLE_MODE_DEGREES
data CreateGraphicsRenderer = CREATE_GRAPHICS_RENDERER_WEBGL
data ArcMode = ARC_MODE_CHORD | ARC_MODE_PIE | ARC_MODE_OPEN
data BeginShapeKind = BEGIN_SHAPE_KIND_POINTS | BEGIN_SHAPE_KIND_LINES | BEGIN_SHAPE_KIND_TRIANGLES | BEGIN_SHAPE_KIND_TRIANGLE_FAN | BEGIN_SHAPE_KIND_TRIANGLE_STRIP | BEGIN_SHAPE_KIND_QUADS | BEGIN_SHAPE_KIND_QUAD_STRIP
data EllipseMode = ELLIPSE_MODE_CENTER | ELLIPSE_MODE_RADIUS | ELLIPSE_MODE_CORNER | ELLIPSE_MODE_CORNERS
data EndShapeMode = END_SHAPE_MODE_CLOSE
data RectMode = RECT_MODE_CORNER | RECT_MODE_CORNERS | RECT_MODE_CENTER | RECT_MODE_RADIUS
data StrokeCap = STROKE_CAP_SQUARE | STROKE_CAP_PROJECT | STROKE_CAP_ROUND
data StrokeJoin = STROKE_JOIN_MITER | STROKE_JOIN_BEVEL | STROKE_JOIN_ROUND
data TextAlignHorizAlign = TEXT_ALIGN_HORIZ_ALIGN_LEFT | TEXT_ALIGN_HORIZ_ALIGN_CENTER | TEXT_ALIGN_HORIZ_ALIGN_RIGHT
data TextAlignVertAlign = TEXT_ALIGN_VERT_ALIGN_TOP | TEXT_ALIGN_VERT_ALIGN_BOTTOM | TEXT_ALIGN_VERT_ALIGN_CENTER | TEXT_ALIGN_VERT_ALIGN_BASELINE
data TextStyle = TEXT_STYLE_NORMAL | TEXT_STYLE_ITALIC | TEXT_STYLE_BOLD
