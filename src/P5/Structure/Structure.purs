module P5.Structure.Structure
  ( loop
  , noLoop
  , pop
  , preload
  , push
  , redraw
  , remove
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)



foreign import loopImpl :: Fn1 P5 (Effect Unit)
foreign import noLoopImpl :: Fn1 P5 (Effect Unit)
foreign import popImpl :: Fn1 P5 (Effect Unit)
foreign import preloadImpl :: Fn1 P5 (Effect Unit)
foreign import pushImpl :: Fn1 P5 (Effect Unit)
foreign import redrawImpl :: Fn2 P5 (Maybe Int) (Effect Unit)
foreign import removeImpl :: Fn1 P5 (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loop)
loop :: P5 -> (Effect Unit)
loop p5  = runFn1 loopImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noLoop)
noLoop :: P5 -> (Effect Unit)
noLoop p5  = runFn1 noLoopImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pop)
pop :: P5 -> (Effect Unit)
pop p5  = runFn1 popImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/preload)
preload :: P5 -> (Effect Unit)
preload p5  = runFn1 preloadImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/push)
push :: P5 -> (Effect Unit)
push p5  = runFn1 pushImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/redraw)
redraw :: P5 -> (Maybe Int) -> (Effect Unit)
redraw p5 n = runFn2 redrawImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/remove)
remove :: P5 -> (Effect Unit)
remove p5  = runFn1 removeImpl p5 
