module P5.Events
  ( module P5.Events.Acceleration
  , module P5.Events.Mouse
  , module P5.Events.Keyboard
  , module P5.Events.Touch
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

import P5.Events.Acceleration
import P5.Events.Mouse
import P5.Events.Keyboard
import P5.Events.Touch



