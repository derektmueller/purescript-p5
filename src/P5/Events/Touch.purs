module P5.Events.Touch
  ( touchEnded
  , touchMoved
  , touchStarted
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import touchEndedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import touchMovedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import touchStartedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchEnded)
touchEnded :: P5 -> (Effect Boolean) -> (Effect Unit)
touchEnded p5 eff = runFn2 touchEndedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchMoved)
touchMoved :: P5 -> (Effect Boolean) -> (Effect Unit)
touchMoved p5 eff = runFn2 touchMovedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchStarted)
touchStarted :: P5 -> (Effect Boolean) -> (Effect Unit)
touchStarted p5 eff = runFn2 touchStartedImpl p5 eff
