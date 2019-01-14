module P5.Shape
  ( arc
  , beginContour
  , beginShape
  , bezier
  , bezierDetail
  , bezierPoint
  , bezierTangent
  , bezierVertex
  , bezierVertex2
  , box
  , cone
  , curve
  , curveDetail
  , curvePoint
  , curveTangent
  , curveTightness
  , curveVertex
  , curveVertex2
  , cylinder
  , ellipse
  , ellipse2
  , ellipseMode
  , ellipsoid
  , endContour
  , endShape
  , line
  , line2
  , model
  , noSmooth
  , plane
  , point
  , quad
  , quadraticVertex
  , quadraticVertex2
  , rect
  , rect2
  , rectMode
  , smooth
  , sphere
  , strokeCap
  , strokeJoin
  , strokeWeight
  , torus
  , triangle
  , vertex
  , vertex2
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

foreign import arcImpl :: Fn9 P5 Number Number Number Number Number Number (Maybe ArcMode) (Maybe Number) (Effect Unit)
foreign import beginContourImpl :: Fn1 P5 (Effect Unit)
foreign import beginShapeImpl :: Fn2 P5 (Maybe BeginShapeKind) (Effect Unit)
foreign import bezierImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import bezierDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import bezierPointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierVertexImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import bezierVertex2Impl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import boxImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import coneImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Maybe Boolean) (Effect Unit)
foreign import curveImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import curveDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import curvePointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import curveTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import curveTightnessImpl :: Fn2 P5 Number (Effect Unit)
foreign import curveVertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import curveVertex2Impl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import cylinderImpl :: Fn7 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Maybe Boolean) (Maybe Boolean) (Effect Unit)
foreign import ellipseImpl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import ellipse2Impl :: Fn6 P5 Number Number Number Number Int (Effect Unit)
foreign import ellipseModeImpl :: Fn2 P5 EllipseMode (Effect Unit)
foreign import ellipsoidImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import endContourImpl :: Fn1 P5 (Effect Unit)
foreign import endShapeImpl :: Fn2 P5 (Maybe EndShapeMode) (Effect Unit)
foreign import lineImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import line2Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import modelImpl :: Fn2 P5 Geometry (Effect Unit)
foreign import noSmoothImpl :: Fn1 P5 (Effect Unit)
foreign import planeImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import pointImpl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import quadImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import quadraticVertexImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import quadraticVertex2Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import rectImpl :: Fn7 P5 Number Number Number Number (Maybe Int) (Maybe Int) (Effect Unit)
foreign import rect2Impl :: Fn9 P5 Number Number Number Number (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import rectModeImpl :: Fn2 P5 RectMode (Effect Unit)
foreign import smoothImpl :: Fn1 P5 (Effect Unit)
foreign import sphereImpl :: Fn4 P5 (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import strokeCapImpl :: Fn2 P5 StrokeCap (Effect Unit)
foreign import strokeJoinImpl :: Fn2 P5 StrokeJoin (Effect Unit)
foreign import strokeWeightImpl :: Fn2 P5 Number (Effect Unit)
foreign import torusImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import triangleImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import vertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import vertex2Impl :: Fn6 P5 Number Number Number (Maybe Number) (Maybe Number) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/arc)
arc :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe ArcMode) -> (Maybe Number) -> (Effect Unit)
arc p5 x y w h start stop mode detail = runFn9 arcImpl p5 x y w h start stop mode detail

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)
beginContour :: P5 -> (Effect Unit)
beginContour p5  = runFn1 beginContourImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginShape)
beginShape :: P5 -> (Maybe BeginShapeKind) -> (Effect Unit)
beginShape p5 kind = runFn2 beginShapeImpl p5 kind

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezier)
bezier :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezier p5 x1 y1 x2 y2 x3 y3 x4 y4 = runFn9 bezierImpl p5 x1 y1 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierDetail)
bezierDetail :: P5 -> Number -> (Effect Unit)
bezierDetail p5 detail = runFn2 bezierDetailImpl p5 detail

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierPoint)
bezierPoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
bezierPoint p5 a b c d t = runFn6 bezierPointImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierTangent)
bezierTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
bezierTangent p5 a b c d t = runFn6 bezierTangentImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex p5 x2 y2 x3 y3 x4 y4 = runFn7 bezierVertexImpl p5 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex2 p5 x2 y2 z2 x3 y3 z3 x4 y4 z4 = runFn10 bezierVertex2Impl p5 x2 y2 z2 x3 y3 z3 x4 y4 z4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/box)
box :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
box p5 width height depth detailX detailY = runFn6 boxImpl p5 width height depth detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cone)
cone :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Effect Unit)
cone p5 radius height detailX detailY cap = runFn6 coneImpl p5 radius height detailX detailY cap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curve)
curve :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
curve p5 x1 y1 x2 y2 x3 y3 x4 y4 = runFn9 curveImpl p5 x1 y1 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveDetail)
curveDetail :: P5 -> Number -> (Effect Unit)
curveDetail p5 resolution = runFn2 curveDetailImpl p5 resolution

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curvePoint)
curvePoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
curvePoint p5 a b c d t = runFn6 curvePointImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveTangent)
curveTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
curveTangent p5 a b c d t = runFn6 curveTangentImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveTightness)
curveTightness :: P5 -> Number -> (Effect Unit)
curveTightness p5 amount = runFn2 curveTightnessImpl p5 amount

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex :: P5 -> Number -> Number -> (Effect Unit)
curveVertex p5 x y = runFn3 curveVertexImpl p5 x y

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
curveVertex2 p5 x y z = runFn4 curveVertex2Impl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cylinder)
cylinder :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Maybe Boolean) -> (Effect Unit)
cylinder p5 radius height detailX detailY bottomCap topCap = runFn7 cylinderImpl p5 radius height detailX detailY bottomCap topCap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
ellipse p5 x y w h = runFn5 ellipseImpl p5 x y w h

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse2 :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
ellipse2 p5 x y w h detail = runFn6 ellipse2Impl p5 x y w h detail

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipseMode)
ellipseMode :: P5 -> EllipseMode -> (Effect Unit)
ellipseMode p5 mode = runFn2 ellipseModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)
ellipsoid :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
ellipsoid p5 radiusx radiusy radiusz detailX detailY = runFn6 ellipsoidImpl p5 radiusx radiusy radiusz detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endContour)
endContour :: P5 -> (Effect Unit)
endContour p5  = runFn1 endContourImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endShape)
endShape :: P5 -> (Maybe EndShapeMode) -> (Effect Unit)
endShape p5 mode = runFn2 endShapeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
line p5 x1 y1 x2 y2 = runFn5 lineImpl p5 x1 y1 x2 y2

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
line2 p5 x1 y1 z1 x2 y2 z2 = runFn7 line2Impl p5 x1 y1 z1 x2 y2 z2

-- TODO: unsupported: loadModel :: P5 -> String -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Geometry

-- TODO: unsupported: loadModel2 :: P5 -> String -> Boolean -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Geometry

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/model)
model :: P5 -> Geometry -> (Effect Unit)
model p5 model = runFn2 modelImpl p5 model

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noSmooth)
noSmooth :: P5 -> (Effect Unit)
noSmooth p5  = runFn1 noSmoothImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/plane)
plane :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
plane p5 width height detailX detailY = runFn5 planeImpl p5 width height detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/point)
point :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
point p5 x y z = runFn4 pointImpl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quad)
quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quad p5 x1 y1 x2 y2 x3 y3 x4 y4 = runFn9 quadImpl p5 x1 y1 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex p5 cx cy x3 y3 = runFn5 quadraticVertexImpl p5 cx cy x3 y3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex2 p5 cx cy cz x3 y3 z3 = runFn7 quadraticVertex2Impl p5 cx cy cz x3 y3 z3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect :: P5 -> Number -> Number -> Number -> Number -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
rect p5 x y w h detailX detailY = runFn7 rectImpl p5 x y w h detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect2 :: P5 -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
rect2 p5 x y w h tl tr br bl = runFn9 rect2Impl p5 x y w h tl tr br bl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rectMode)
rectMode :: P5 -> RectMode -> (Effect Unit)
rectMode p5 mode = runFn2 rectModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/smooth)
smooth :: P5 -> (Effect Unit)
smooth p5  = runFn1 smoothImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sphere)
sphere :: P5 -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
sphere p5 radius detailX detailY = runFn4 sphereImpl p5 radius detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeCap)
strokeCap :: P5 -> StrokeCap -> (Effect Unit)
strokeCap p5 cap = runFn2 strokeCapImpl p5 cap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeJoin)
strokeJoin :: P5 -> StrokeJoin -> (Effect Unit)
strokeJoin p5 join = runFn2 strokeJoinImpl p5 join

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)
strokeWeight :: P5 -> Number -> (Effect Unit)
strokeWeight p5 weight = runFn2 strokeWeightImpl p5 weight

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/torus)
torus :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
torus p5 radius tubeRadius detailX detailY = runFn5 torusImpl p5 radius tubeRadius detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/triangle)
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
triangle p5 x1 y1 x2 y2 x3 y3 = runFn7 triangleImpl p5 x1 y1 x2 y2 x3 y3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex :: P5 -> Number -> Number -> (Effect Unit)
vertex p5 x y = runFn3 vertexImpl p5 x y

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex2 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
vertex2 p5 x y z u v = runFn6 vertex2Impl p5 x y z u v
