module LSystems where

-- based on https://p5js.org/examples/hello-p5-simple-shapes.html
-- https://creativecommons.org/licenses/by-nc-sa/4.0/

import Prelude 
import Effect (Effect)
import Effect.Random
import Effect.Console (log, logShow)
import Control.Monad.State.Trans
import Data.EuclideanRing (mod)
import Data.Maybe (Maybe(..), maybe)
import Data.Int (toNumber)
import Data.Enum
import Data.Array ((..))
import Data.Tuple
import Data.Foldable
import Data.Unfoldable
import Data.Traversable
import Data.String (split, Pattern(..), joinWith)
import Data.String.CodeUnits (singleton, charAt, length)
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
  currentAngle :: Number,
  angle :: Number,
  stepSize :: Number,
  stepIndex :: Int
}

initialDrawState :: DrawState
initialDrawState = {
  x: 0.0,
  y: 0.0,
  currentAngle: 0.0,
  angle: 90.0,
  stepSize: 20.0,
  stepIndex: 0
}

drawStep :: P5 -> String -> StateT DrawState Effect Unit
drawStep p input = do
  state <- get
  let {x, y, stepSize, currentAngle, angle, stepIndex} = state
      index = stepIndex `mod` (length input)
      mChar = singleton <$> charAt index input
  case mChar of
    Just "F" -> do 
      let x' = x + stepSize * (cos p (radians p currentAngle))
          y' = y - stepSize * (sin p (radians p currentAngle))
      lift $ line p x y x' y'
      put $ state {x = x', y = y'}
      pure unit
    Just "+" -> do
      put $ state {currentAngle = currentAngle + angle}
    Just "-" -> do
      put $ state {currentAngle = currentAngle - angle}
    _ -> pure unit

  state' <- get
  put $ state' {stepIndex = stepIndex + 1}

  r <- lift $ randomRange 128.0 255.0
  g <- lift $ randomRange 128.0 255.0
  b <- lift $ randomRange 128.0 255.0
  a <- lift $ randomRange 128.0 255.0

  radius <- lift $ (_/3.0) <$> foldM
    (\acc _ -> do
      x <- randomRange 0.0 15.0
      pure $ x + acc) 0.0 (1..3)

  lift $ fill5 p r g b (Just a)
  lift $ ellipse p x y radius (Just radius) 

drawExample :: P5 -> String -> StateT DrawState Effect Unit
drawExample p input = do
  drawStep p input
  pure unit

statefulDraw :: P5 -> DrawState -> String -> Effect Unit
statefulDraw p state input = do
  s <- execStateT (drawExample p input) state
  draw p (statefulDraw p s input)

main :: Maybe AppState -> Effect (Maybe AppState)
main mAppState = do
  let w = 710
      h = 400
  p <- maybe getP5 (\x -> do
                     clear x.p5
                     pure x.p5) mAppState

  let iterations = 5
      input = 
        foldr (\s acc -> lindenmayer acc) "A" (1..iterations)

  case mAppState of
    Nothing ->
      setup p do
        e <- createCanvas p (toNumber w) (toNumber h) Nothing
        background4 p 255.0 Nothing
        stroke5 p 0.0 0.0 0.0 (Just 255.0)
        setId e "lSystems"
        pure unit
    _ -> pure unit

  draw p (statefulDraw p initialDrawState input)

  pure $ Just { p5: p }
