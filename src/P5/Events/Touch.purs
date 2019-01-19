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



foreign import touchEndedImpl :: Fn1 P5 (Effect Unit)
foreign import touchMovedImpl :: Fn1 P5 (Effect Unit)
foreign import touchStartedImpl :: Fn1 P5 (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchEnded)
touchEnded :: P5 -> (Effect Unit)
touchEnded p5  = runFn1 touchEndedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchMoved)
touchMoved :: P5 -> (Effect Unit)
touchMoved p5  = runFn1 touchMovedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchStarted)
touchStarted :: P5 -> (Effect Unit)
touchStarted p5  = runFn1 touchStartedImpl p5 
