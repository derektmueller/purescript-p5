module P5.Shape.TwoDPrimitives
  ( arc
  , ellipse
  , ellipse2
  , line
  , line2
  , point
  , quad
  , rect
  , rect2
  , triangle
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import arcImpl :: Fn9 P5 Number Number Number Number Number Number (Maybe ArcMode) (Maybe Number) (Effect Unit)
foreign import ellipseImpl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import ellipse2Impl :: Fn6 P5 Number Number Number Number Int (Effect Unit)
foreign import lineImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import line2Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import pointImpl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import quadImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import rectImpl :: Fn7 P5 Number Number Number Number (Maybe Int) (Maybe Int) (Effect Unit)
foreign import rect2Impl :: Fn9 P5 Number Number Number Number (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import triangleImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/arc)
arc :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe ArcMode) -> (Maybe Number) -> (Effect Unit)
arc p5 x y w h start stop mode detail = runFn9 arcImpl p5 x y w h start stop mode detail

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
ellipse p5 x y w h = runFn5 ellipseImpl p5 x y w h

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse2 :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
ellipse2 p5 x y w h detail = runFn6 ellipse2Impl p5 x y w h detail

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
line p5 x1 y1 x2 y2 = runFn5 lineImpl p5 x1 y1 x2 y2

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
line2 p5 x1 y1 z1 x2 y2 z2 = runFn7 line2Impl p5 x1 y1 z1 x2 y2 z2

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/point)
point :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
point p5 x y z = runFn4 pointImpl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quad)
quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quad p5 x1 y1 x2 y2 x3 y3 x4 y4 = runFn9 quadImpl p5 x1 y1 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect :: P5 -> Number -> Number -> Number -> Number -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
rect p5 x y w h detailX detailY = runFn7 rectImpl p5 x y w h detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect2 :: P5 -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
rect2 p5 x y w h tl tr br bl = runFn9 rect2Impl p5 x y w h tl tr br bl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/triangle)
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
triangle p5 x1 y1 x2 y2 x3 y3 = runFn7 triangleImpl p5 x1 y1 x2 y2 x3 y3
