module P5.Events.Keyboard
  ( keyIsDown
  , keyPressed
  , keyReleased
  , keyTyped
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import keyIsDownImpl :: Fn2 P5 Number Boolean
foreign import keyPressedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import keyReleasedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)
foreign import keyTypedImpl :: Fn2 P5 (Effect Boolean) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyIsDown)
keyIsDown :: P5 -> Number -> Boolean
keyIsDown p5 code = runFn2 keyIsDownImpl p5 code

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyPressed)
keyPressed :: P5 -> (Effect Boolean) -> (Effect Unit)
keyPressed p5 eff = runFn2 keyPressedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyReleased)
keyReleased :: P5 -> (Effect Boolean) -> (Effect Unit)
keyReleased p5 eff = runFn2 keyReleasedImpl p5 eff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyTyped)
keyTyped :: P5 -> (Effect Boolean) -> (Effect Unit)
keyTyped p5 eff = runFn2 keyTypedImpl p5 eff
