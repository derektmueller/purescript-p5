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
import P5.Color
import P5.Data
import P5.Environment
import P5.Events
import P5.IO
import P5.LightsAndCamera
import P5.Math
import P5.Rendering
import P5.Shape
import P5.Structure
import P5.Transform
import P5.Typography

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
    e <- createCanvas p (toNumber w) (toNumber h) Nothing
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

  pure $ Just { p5: p }
