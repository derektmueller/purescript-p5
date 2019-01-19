module P5.Shape.ThreeDModels
  ( model
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import modelImpl :: Fn2 P5 Geometry (Effect Unit)

-- TODO: unsupported: loadModel :: P5 -> String -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Geometry

-- TODO: unsupported: loadModel2 :: P5 -> String -> Boolean -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Geometry

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/model)
model :: P5 -> Geometry -> (Effect Unit)
model p5 model = runFn2 modelImpl p5 model
