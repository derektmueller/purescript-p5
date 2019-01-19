module P5.Data.Dictionary
  ( createStringDict2
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import createStringDict2Impl :: Fn3 P5 String String StringDict

-- TODO: unsupported: createStringDict :: P5 -> Unsupported(Object) -> StringDict

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createStringDict)
createStringDict2 :: P5 -> String -> String -> StringDict
createStringDict2 p5 key value = runFn3 createStringDict2Impl p5 key value
