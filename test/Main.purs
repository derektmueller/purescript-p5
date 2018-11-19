module Test.Main where

import Prelude

import Control.Monad.Except
import Control.Monad.Maybe.Trans
import Data.ArrayBuffer.Types (Uint8ClampedArray)
import Data.Either
import Data.Maybe
import Data.Time.Duration
import Effect.Aff
import Effect.Class
import Effect.Console (log)
import Effect (Effect)
import Foreign (F)
import Foreign.Generic
import Foreign (readArray, readNumber, readString)
import Graphics.Canvas (
  getCanvasElementById, getImageData, getContext2D, imageDataBuffer)
import JsdomGlobal
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readTextFile)
import Test.Spec.Assertions (shouldEqual, fail)
import Test.Spec (pending, describe, it)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (run, run', defaultConfig)
import Unsafe.Coerce (unsafeCoerce)
import P5
import P5.Generated as Gen

lineDrawing :: String -> Number -> Number -> Effect Unit
lineDrawing canvasId w h = do
  p <- getP5

  setup p do
    e <- createCanvas p w h
    setId e canvasId
    pure unit

  draw p do
    background p "red"
    stroke p "green"
    Gen.strokeWeight p 3.0
    Gen.line p 0.0 0.0 100.0 100.0
    Gen.line p 100.0 100.0 100.0 200.0
    Gen.strokeWeight p 10.0
    Gen.line p 100.0 200.0 200.0 200.0
    Gen.line p 200.0 200.0 300.0 300.0
    strokeJoin p Round
    strokeJoin p Bevel
    strokeJoin p Miter
    pure unit
  pure unit

asIntArray ∷ Uint8ClampedArray -> Array Int
asIntArray = unsafeCoerce

fromIntArray ∷ Array Int -> Uint8ClampedArray
fromIntArray = unsafeCoerce

rendersALineDrawing :: Aff Unit
rendersALineDrawing = do
  json <- liftEffect 
    $ readTextFile UTF8 "./snapshots/lineDrawing.json"

  let eLineDrawing = 
        runExcept $ decodeJSON json :: F (Array Int)

  let canvasId = "test-canvas"
      w = 500.0
      h = 500.0

  _ <- liftEffect $ lineDrawing canvasId w h

  delay $ Milliseconds 0.0
  mCanvas <- liftEffect $ getCanvasElementById canvasId
  case mCanvas of
    Just canvas -> do
      ctx <- liftEffect $ getContext2D canvas
      imageData <- liftEffect $ 
        getImageData ctx 0.0 0.0 w h
      (Right $ asIntArray $ imageDataBuffer imageData)
        `shouldEqual` eLineDrawing
      pure unit
    Nothing ->
      fail "failed to retrieve canvas"

main :: Effect Unit
main = do
  _ <- jsdomGlobal
  run' testConfig [consoleReporter] do
    describe "purescript-spec" do
      describe "snapshots" do
        it "renders a line drawing" do
           _ <- rendersALineDrawing
           true `shouldEqual` true
      describe "math" do
         describe "dist" do
            it "calculates distance between points" do
               p <- liftEffect getP5
               Gen.dist p 0.0 0.0 1.0 0.0 `shouldEqual` 1.0
               pure unit
         describe "abs" do
            it "calculates absolute value" do
               p <- liftEffect getP5
               Gen.abs p (-3.0) `shouldEqual` 3.0
               pure unit
               
  where
    testConfig = defaultConfig { timeout = Just 10000 }

