module P5.Shape.Vertex
  ( beginContour
  , beginShape
  , bezierVertex
  , bezierVertex2
  , curveVertex
  , curveVertex2
  , endContour
  , endShape
  , quadraticVertex
  , quadraticVertex2
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



foreign import beginContourImpl :: Fn1 P5 (Effect Unit)
foreign import beginShapeImpl :: Fn2 P5 (Maybe BeginShapeKind) (Effect Unit)
foreign import bezierVertexImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import bezierVertex2Impl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import curveVertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import curveVertex2Impl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import endContourImpl :: Fn1 P5 (Effect Unit)
foreign import endShapeImpl :: Fn2 P5 (Maybe EndShapeMode) (Effect Unit)
foreign import quadraticVertexImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import quadraticVertex2Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import vertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import vertex2Impl :: Fn6 P5 Number Number Number (Maybe Number) (Maybe Number) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)
beginContour :: P5 -> (Effect Unit)
beginContour p5  = runFn1 beginContourImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginShape)
beginShape :: P5 -> (Maybe BeginShapeKind) -> (Effect Unit)
beginShape p5 kind = runFn2 beginShapeImpl p5 kind

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex p5 x2 y2 x3 y3 x4 y4 = runFn7 bezierVertexImpl p5 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex2 p5 x2 y2 z2 x3 y3 z3 x4 y4 z4 = runFn10 bezierVertex2Impl p5 x2 y2 z2 x3 y3 z3 x4 y4 z4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex :: P5 -> Number -> Number -> (Effect Unit)
curveVertex p5 x y = runFn3 curveVertexImpl p5 x y

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
curveVertex2 p5 x y z = runFn4 curveVertex2Impl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endContour)
endContour :: P5 -> (Effect Unit)
endContour p5  = runFn1 endContourImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endShape)
endShape :: P5 -> (Maybe EndShapeMode) -> (Effect Unit)
endShape p5 mode = runFn2 endShapeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex p5 cx cy x3 y3 = runFn5 quadraticVertexImpl p5 cx cy x3 y3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex2 p5 cx cy cz x3 y3 z3 = runFn7 quadraticVertex2Impl p5 cx cy cz x3 y3 z3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex :: P5 -> Number -> Number -> (Effect Unit)
vertex p5 x y = runFn3 vertexImpl p5 x y

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex2 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
vertex2 p5 x y z u v = runFn6 vertex2Impl p5 x y z u v
