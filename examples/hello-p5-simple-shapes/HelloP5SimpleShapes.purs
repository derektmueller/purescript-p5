module HelloP5SimpleShapes where

-- based on https://p5js.org/examples/hello-p5-simple-shapes.html
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
import Control.Monad.Reader

import P5
import P5.Color
import P5.Data
import P5.Environment
import P5.Events
import P5.IO
import P5.Image
import P5.LightsAndCamera
import P5.Math
import P5.Rendering
import P5.Shape
import P5.Structure
import P5.Transform
import P5.Typography

import Data.Enum
import Math (pi)

type AppState = {
  p5 :: P5
}

initialState :: Maybe AppState
initialState = Nothing

drawExample :: P5M Unit
drawExample = do
  p <- ask
  lift $ resetMatrix p
  lift $ background4 p 200.0 Nothing
  lift $ fill5 p 204.0 101.0 192.0 (Just 127.0)
  lift $ stroke5 p 127.0 63.0 120.0 Nothing
  lift $ rect p 40.0 120.0 120.0 40.0 Nothing Nothing
  lift $ ellipse p 240.0 240.0 80.0 (Just 80.0)  
  lift $ triangle p 300.0 100.0 320.0 100.0 310.0 80.0
  lift $ translate2 p 580.0 200.0 Nothing
  lift $ noStroke p

  _ <- lift $ traverse
    (\_ -> do
      ellipse p 0.0 30.0 20.0 (Just 80.0)  
      rotate p (pi / 5.0) Nothing
    )
    (enumFromTo 0 9) :: Effect (Array Unit)

  pure unit

main :: Maybe AppState -> Effect (Maybe AppState)
main mAppState = do
  let w = 720
      h = 400
  p <- maybe getP5 (\x -> pure x.p5) mAppState

  case mAppState of
    Nothing ->
      p5Opts {p5: Just p} do
        setupT (do
          e <- lift $ createCanvas p (toNumber w) (toNumber h) Nothing
          setIdT e "helloP5SimpleShapes"
          drawExample
          pure unit)
    _ -> p5Opts {p5: Just p } drawExample

  pure $ Just { p5: p }
