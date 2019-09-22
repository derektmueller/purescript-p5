module MouseEvents where

import Prelude 
  (Unit, show, bind, (<$>), pure, discard, unit, ($))
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe (Maybe(..), maybe)
import Data.Int (toNumber)
import Web.HTML (window)
import Web.HTML.Window (innerWidth, innerHeight)

import P5
import P5.Color
import P5.Environment
import P5.Rendering
import P5.Events.Mouse

type AppState = {
  p5 :: P5
}

initialState :: Maybe AppState
initialState = Nothing

main :: Maybe AppState -> Effect (Maybe AppState)
main mAppState = do
  win <- window
  w <- toNumber <$> innerWidth win
  h <- toNumber <$> innerHeight win
  p <- maybe getP5 (\x -> pure x.p5) mAppState

  mouseMoved p do
    log "mouse moved"
    pure true

  mouseDragged p do
    log "mouse dragged"
    pure true

  mousePressed p do
    log "mouse pressed"
    pure false

  mouseReleased p do
    log "mouse released"
    pure true

  mouseClicked p do
    log "mouse clicked"
    pure true

  setup p do
    _ <- createCanvas p w h Nothing
    pure unit

  pure $ Just { p5: p }
