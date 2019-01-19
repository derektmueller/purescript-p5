module P5.Shape.Attributes
  ( ellipseMode
  , noSmooth
  , rectMode
  , smooth
  , strokeCap
  , strokeJoin
  , strokeWeight
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import ellipseModeImpl :: Fn2 P5 EllipseMode (Effect Unit)
foreign import noSmoothImpl :: Fn1 P5 (Effect Unit)
foreign import rectModeImpl :: Fn2 P5 RectMode (Effect Unit)
foreign import smoothImpl :: Fn1 P5 (Effect Unit)
foreign import strokeCapImpl :: Fn2 P5 StrokeCap (Effect Unit)
foreign import strokeJoinImpl :: Fn2 P5 StrokeJoin (Effect Unit)
foreign import strokeWeightImpl :: Fn2 P5 Number (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipseMode)
ellipseMode :: P5 -> EllipseMode -> (Effect Unit)
ellipseMode p5 mode = runFn2 ellipseModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noSmooth)
noSmooth :: P5 -> (Effect Unit)
noSmooth p5  = runFn1 noSmoothImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rectMode)
rectMode :: P5 -> RectMode -> (Effect Unit)
rectMode p5 mode = runFn2 rectModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/smooth)
smooth :: P5 -> (Effect Unit)
smooth p5  = runFn1 smoothImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeCap)
strokeCap :: P5 -> StrokeCap -> (Effect Unit)
strokeCap p5 cap = runFn2 strokeCapImpl p5 cap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeJoin)
strokeJoin :: P5 -> StrokeJoin -> (Effect Unit)
strokeJoin p5 join = runFn2 strokeJoinImpl p5 join

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)
strokeWeight :: P5 -> Number -> (Effect Unit)
strokeWeight p5 weight = runFn2 strokeWeightImpl p5 weight
