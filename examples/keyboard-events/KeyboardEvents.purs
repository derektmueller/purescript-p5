module KeyboardEvents where

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
import P5.Events.Keyboard

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

  keyPressed p do
    log "key pressed"
    pure false

  keyReleased p do
    log "key released"
    pure true

  keyTyped p do
    log "key typed"
    pure true

  setup p do
    _ <- createCanvas p w h Nothing
    pure unit

  pure $ Just { p5: p }
