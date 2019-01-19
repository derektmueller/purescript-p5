module P5.Image.Image
  ( createImage
  , saveCanvas
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import createImageImpl :: Fn3 P5 Int Int Image
foreign import saveCanvasImpl :: Fn3 P5 (Maybe String) (Maybe String) (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createImage)
createImage :: P5 -> Int -> Int -> Image
createImage p5 width height = runFn3 createImageImpl p5 width height

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)
saveCanvas :: P5 -> (Maybe String) -> (Maybe String) -> (Effect Unit)
saveCanvas p5 filename extension = runFn3 saveCanvasImpl p5 filename extension

-- TODO: unsupported: saveCanvas2 :: P5 -> UnsupportedProduct(Unsupported(HTMLCanvasElement)|Element) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- TODO: unsupported: saveFrames :: P5 -> String -> String -> Number -> Number -> Unsupported(Function(Array)) -> (Effect Unit)
