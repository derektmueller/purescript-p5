module Test.Main where

import Prelude

import Control.Monad.Except (runExcept)
import Data.ArrayBuffer.Types (Uint8ClampedArray)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Effect.Aff (Aff, Milliseconds(..), delay)
import Effect.Class (liftEffect)
import Effect.Console (log)
import Effect (Effect)
import Foreign.Generic (decodeJSON)
import Foreign (F)
import Graphics.Canvas (
  getCanvasElementById, getImageData, getContext2D, imageDataBuffer)
import JsdomGlobal (jsdomGlobal)
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readTextFile)
import Test.Spec (pending, describe, it)
import Test.Spec.Assertions (shouldEqual, fail)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (run', defaultConfig)
import Unsafe.Coerce (unsafeCoerce)
import P5 (p5, P5, StrokeJoin(..), background3, createCanvas, draw, getP5, line, setId, setup, stroke, strokeJoin, strokeWeight, dist, nf, abs, NumberOrString(..), IntOrString(..), char, textLeading2, textLeading, resizeCanvas, remove)
import Node.Crypto.Hash (Algorithm(..), base64)
import Data.String.Common (trim)
import HelloP5SimpleShapes as HelloP5SimpleShapes
import StructureWidthAndHeight as StructureWidthAndHeight

lineDrawing :: P5 -> String -> Number -> Number -> Effect Unit
lineDrawing p sketchName w h = do
  draw p do
    background3 p "red" Nothing
    stroke p "green"
    strokeWeight p 3.0
    line p 0.0 0.0 100.0 100.0
    line p 100.0 100.0 100.0 200.0
    strokeWeight p 10.0
    line p 100.0 200.0 200.0 200.0
    line p 200.0 200.0 300.0 300.0
    strokeJoin p Round
    strokeJoin p Bevel
    strokeJoin p Miter
    pure unit
  pure unit

asIntArray ∷ Uint8ClampedArray -> Array Int
asIntArray = unsafeCoerce

fromIntArray ∷ Array Int -> Uint8ClampedArray
fromIntArray = unsafeCoerce

expectCanvasToMatchSnapshot 
  :: String -> Number -> Number -> String -> Aff Unit
expectCanvasToMatchSnapshot canvasId w h snapshotFilename = do
  hash <- liftEffect 
    $ trim 
    <$> readTextFile UTF8 ("./snapshots/" <> snapshotFilename)

  delay $ Milliseconds 0.0
  mCanvas <- liftEffect $ getCanvasElementById canvasId
  case mCanvas of
    Just canvas -> do
      ctx <- liftEffect $ getContext2D canvas
      imageData <- liftEffect $ 
        getImageData ctx 0.0 0.0 w h
      hash' <- liftEffect 
        $ base64 MD5 (show $ asIntArray $ imageDataBuffer imageData)
      hash' `shouldEqual` hash
      pure unit
    Nothing ->
      fail "failed to retrieve canvas"

main :: Effect Unit
main = do
  _ <- liftEffect jsdomGlobal
  run' testConfig [consoleReporter] do
    describe "purescript-spec" do
      describe "snapshots" do
        it "renders a line drawing" do
          let sketchName = "lineDrawing"
              w = 500.0
              h = 500.0
          p <- liftEffect $ p5 $ \p -> do
            setup p $ do
              e <- liftEffect $ createCanvas p w h
              liftEffect $ setId e sketchName
          liftEffect $ lineDrawing p sketchName w h
          expectCanvasToMatchSnapshot 
            sketchName w h sketchName
        it "renders hello-p5-simple-shapes" do
          let sketchName = "helloP5SimpleShapes"
              w = 720.0
              h = 400.0
          p <- liftEffect $ p5 $ \p -> do
            setup p $ do
              e <- liftEffect $ createCanvas p w h
              liftEffect $ setId e sketchName
          _ <- liftEffect 
            $ HelloP5SimpleShapes.main (Just {p5: p})
          expectCanvasToMatchSnapshot 
            sketchName w h sketchName
        it "renders structure-width-and-height" do
          p <- liftEffect getP5
          let sketchName = "structureWidthAndHeight"
              w = 720.0
              h = 400.0
          p <- liftEffect $ p5 $ \p -> do
            setup p $ do
              e <- liftEffect $ createCanvas p w h
              liftEffect $ setId e sketchName
          _ <- liftEffect 
            $ StructureWidthAndHeight.main (Just {p5: p})
          expectCanvasToMatchSnapshot 
            sketchName w h sketchName
      describe "math" do
        describe "dist" do
          it "calculates distance between points" do
            p <- liftEffect getP5
            dist p 0.0 0.0 1.0 0.0 `shouldEqual` 1.0
            pure unit
        describe "abs" do
          it "calculates absolute value" do
            p <- liftEffect getP5
            abs p (-3.0) `shouldEqual` 3.0
            pure unit
      describe "data" do
        describe "string functions" do
          describe "nf" do
            it "formats numbers into strings" do
              p <- liftEffect getP5
              nf p (NumberOrStringNumber 1.1) 
                (Just (IntOrStringInt 5)) 
                (Just (IntOrStringInt 5))
                `shouldEqual` "00001.10000"
              nf p (NumberOrStringNumber 1.1) 
                Nothing
                (Just (IntOrStringInt 5))
                `shouldEqual` "1.10000"
              nf p (NumberOrStringNumber 1.1) 
                (Just (IntOrStringInt 5)) 
                Nothing
                `shouldEqual` "00001.1"
              nf p (NumberOrStringNumber 1.1) 
                Nothing
                Nothing
                `shouldEqual` "1.1"
        describe "conversion" do
          describe "char" do
            it "converts to character representation" do
              p <- liftEffect getP5
              char p (NumberOrStringNumber 65.0)
                `shouldEqual` "A"
              char p (NumberOrStringString "65")
                `shouldEqual` "A"
      describe "typography" do
        describe "attributes" do
          describe "textLeading" do
            it "gets the text leading" do
              p <- liftEffect getP5
              liftEffect $ textLeading2 p 1.0
              let leading = textLeading p
              leading `shouldEqual` 1.0
  where
    testConfig = defaultConfig { timeout = Just 10000 }

