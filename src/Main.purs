module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import P5

main :: Effect Unit
main = do
  log "hello p5.purs!"

  p5 $ \p -> do
    log "p5"
    setup p do
      log "setting up"
      createCanvas p 500 500
      pure unit

    draw p do
      background p "red"
      pure unit
