module P5.Data
  ( module P5.Data.Conversion
  , module P5.Data.Dictionary
  , module P5.Data.StringFunctions
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

import P5.Data.Conversion
import P5.Data.Dictionary
import P5.Data.StringFunctions



