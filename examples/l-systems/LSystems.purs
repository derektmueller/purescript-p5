module LSystems where

-- based on https://p5js.org/examples/hello-p5-simple-shapes.html
-- https://creativecommons.org/licenses/by-nc-sa/4.0/

import Prelude 
import Effect (Effect)
import Effect.Console (log)
import Control.Monad.State.Trans
import Data.EuclideanRing (mod)
import Data.Maybe (Maybe(..), maybe)
import Data.Int (toNumber)
import Data.Enum
import Data.Array ((..))
import Data.Tuple
import Data.Unfoldable
import Data.Traversable
import Data.String (split, Pattern(..), joinWith)
import Data.String.CodeUnits (singleton, charAt, length)
import Web.HTML (window)
import Web.HTML.Window (innerWidth, innerHeight)
import P5 (background4, createCanvas, draw, ellipse, fill5, getP5, setId, setup, stroke5, radians, line, cos, sin) 
import P5.Types (P5)
import Data.Enum
import Math (pi)

lindenmayer :: String -> String
lindenmayer s = do
  joinWith "" $ (\c -> 
    case c of
      "A" -> "-BF+AFA+FB-"
      "B" -> "+AF-BFB-FA+"
      _ -> c
  ) <$> (split (Pattern "") s)

type AppState = {
  p5 :: P5
}

initialState :: Maybe AppState
initialState = Nothing

type DrawState = {
  x :: Number,
  y :: Number,
  angle :: Number,
  stepSize :: Number,
  stepIndex :: Int
}

initialDrawState :: DrawState
initialDrawState = {
  x: 0.0,
  y: 0.0,
  angle: 90.0,
  stepSize: 20.0,
  stepIndex: 0
}

drawStep :: P5 -> String -> StateT DrawState Effect Unit
drawStep p input = do
  state <- get
  let {x, y, stepSize, angle, stepIndex} = state
      index = stepIndex `mod` (length input)
      mChar = singleton <$> charAt index input
  case mChar of
    Just "F" -> do 
      let x' = stepSize * (cos p (radians p angle))
          y' = stepSize * (sin p (radians p angle))
      lift $ line p x y x' y'
      put $ state {x = x', y = y'}
      pure unit
    Just "+" -> do
      put $ state {angle = angle + angle}
    Just "-" -> do
      put $ state {angle = angle - angle}
    _ -> pure unit

  put $ state {stepIndex = stepIndex + 1}

  lift $ fill5 p 128.0 0.0 0.0 (Just 50.0)
  lift $ ellipse p 50.0 50.0 50.0 (Just 50.0) 

drawExample :: P5 -> String -> StateT DrawState Effect Unit
drawExample p input = do
  drawStep p input
  pure unit

--drawLoop :: P5 -> String -> StateT DrawState Effect Unit
--drawLoop p input = do
--  draw p do
--     evalStateT (drawExample p input) initialDrawState

main :: Maybe AppState -> Effect (Maybe AppState)
main mAppState = do
  let w = 710
      h = 400
  p <- maybe getP5 (\x -> pure x.p5) mAppState

  let iterations = 5
      input = 
        foldr (\s acc -> lindenmayer acc) "A" [1..iterations]

  case mAppState of
    Nothing ->
      setup p do
        e <- createCanvas p (toNumber w) (toNumber h)
        background4 p 255.0 Nothing
        stroke5 p 0.0 0.0 0.0 (Just 255.0)
        setId e "lSystems"
        pure unit
    _ -> pure unit

  draw p do
     evalStateT (drawExample p input) initialDrawState

  pure $ Just { p5: p }
