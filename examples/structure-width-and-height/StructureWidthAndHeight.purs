module StructureWidthAndHeight where

-- based on https://p5js.org/examples/structure-width-and-height.html
-- https://creativecommons.org/licenses/by-nc-sa/4.0/

import Prelude 
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe (Maybe(..), maybe)
import Data.Int (toNumber)
import Data.Enum
import Data.Array
import Data.Tuple
import Data.Unfoldable
import Data.Traversable
import Web.HTML (window)
import Web.HTML.Window (innerWidth, innerHeight)
import P5 
import P5.Types (P5)

type AppState = {
  p5 :: P5
}

initialState :: Maybe AppState
initialState = Nothing

enumFromThenTo :: Int -> Int -> Int -> Array Int
enumFromThenTo a b c = 
  a
  : unfoldr 
    (\a' -> let next = a' + (b - a) in 
            if next < c then Just (Tuple next next) else Nothing) a

main :: Maybe AppState -> Effect (Maybe AppState)
main mAppState = do
  let w = 720
      h = 400
  p <- maybe getP5 (\x -> pure x.p5) mAppState

  setup p do
    e <- createCanvas p (toNumber w) (toNumber h)
    setId e "structureWidthAndHeight"
    pure unit

  draw p do
    background4 p 127.0 Nothing
    noStroke p

    _ <- traverse (\i -> do
      fill5 p 129.0 206.0 15.0 Nothing
      rect p 0.0 (toNumber i) (toNumber w) 10.0 Nothing Nothing
      fill4 p 255.0 Nothing
      rect p (toNumber i) 0.0 10.0 (toNumber h) Nothing Nothing
    ) (enumFromThenTo 0 20 h)

    pure unit

--  p' <- getP5
--
--  setup p' do
--    e <- createCanvas p' 500.0 500.0 
--    setId e "testtest"
--    pure unit
--
--  draw p' do
--    background3 p' "red" Nothing
--    stroke p' "green"
--    strokeWeight p' 3.0
--    line p' 0.0 0.0 100.0 100.0
--    line p' 100.0 100.0 100.0 200.0
--    strokeWeight p' 10.0
--    line p' 100.0 200.0 200.0 200.0
--    line p' 200.0 200.0 300.0 300.0
--    strokeJoin p' Round
--    strokeJoin p' Bevel
--    strokeJoin p' Miter
--    pure unit

  pure $ Just { p5: p }
