module P5.Generated
  ( ArrayNumberOrStringOrColor(..)
  , BooleanOrNumberOrString(..)
  , NumberOrString(..)
  , IntOrString(..)
  , ArrayNumberOrVector(..)
  , NumberOrArrayNumberOrVector(..)
  , abs
  , acos
  , alpha
  , ambientLight
  , ambientLight2
  , ambientLight3
  , ambientLight4
  , ambientLight5
  , ambientMaterial
  , ambientMaterial2
  , applyMatrix
  , asin
  , atan
  , atan2
  , background
  , background2
  , background3
  , background4
  , background6
  , beginContour
  , bezier
  , bezierDetail
  , bezierPoint
  , bezierTangent
  , bezierVertex
  , bezierVertex2
  , blue
  , box
  , brightness
  , byte
  , camera
  , ceil
  , char
  , clear
  , color
  , color2
  , color3
  , color4
  , color5
  , cone
  , constrain
  , copy
  , cos
  , createVector
  , curve
  , curveDetail
  , curvePoint
  , curveTangent
  , curveTightness
  , curveVertex
  , curveVertex2
  , cylinder
  , day
  , debugMode
  , debugMode5
  , degrees
  , deviceMoved
  , deviceShaken
  , deviceTurned
  , directionalLight
  , directionalLight2
  , directionalLight3
  , directionalLight4
  , displayDensity
  , dist
  , dist2
  , ellipse
  , ellipse2
  , ellipsoid
  , endContour
  , exp
  , fill
  , fill2
  , fill3
  , fill4
  , fill5
  , float
  , floor
  , frameRate
  , frameRate2
  , fullscreen
  , getURL
  , getURLPath
  , green
  , hex
  , hex2
  , hour
  , hue
  , int2
  , keyIsDown
  , keyPressed
  , keyReleased
  , keyTyped
  , lerp
  , lerpColor
  , lightness
  , line
  , line2
  , loadPixels
  , log
  , loop
  , mag
  , map
  , match
  , matchAll
  , max
  , max2
  , millis
  , min
  , min2
  , minute
  , month
  , nf
  , nfc
  , nfp
  , nfp2
  , nfs
  , noCanvas
  , noCursor
  , noDebugMode
  , noFill
  , noLoop
  , noSmooth
  , noStroke
  , noTint
  , noise
  , noiseDetail
  , noiseSeed
  , norm
  , normalMaterial
  , orbitControl
  , ortho
  , perspective
  , pixelDensity
  , pixelDensity2
  , plane
  , point
  , pointLight
  , pointLight2
  , pointLight3
  , pointLight4
  , pop
  , pow
  , preload
  , push
  , quad
  , quadraticVertex
  , quadraticVertex2
  , radians
  , random2
  , randomGaussian
  , randomSeed
  , rect
  , rect2
  , red
  , redraw
  , remove
  , resetMatrix
  , resizeCanvas
  , rotate
  , rotateX
  , rotateY
  , rotateZ
  , round
  , saturation
  , saveCanvas
  , saveStrings
  , scale
  , scale2
  , second
  , setAttributes2
  , setMoveThreshold
  , setShakeThreshold
  , shearX
  , shearY
  , sin
  , smooth
  , specularMaterial
  , specularMaterial2
  , sphere
  , split
  , splitTokens
  , sq
  , sqrt
  , stroke
  , stroke2
  , stroke3
  , stroke4
  , stroke5
  , strokeWeight
  , tan
  , textAscent
  , textDescent
  , textLeading
  , textLeading2
  , textSize
  , textSize2
  , textStyle
  , textWidth
  , tint
  , tint2
  , tint3
  , tint4
  , tint5
  , torus
  , translate
  , translate2
  , triangle
  , trim
  , unchar
  , unhex
  , updatePixels
  , vertex
  , vertex2
  , windowResized
  , year
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types (P5, Vector, Color)
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

data ArrayNumberOrStringOrColor = ArrayNumberOrStringOrColorArrayNumber (Array Number) | ArrayNumberOrStringOrColorString String | ArrayNumberOrStringOrColorColor Color
data BooleanOrNumberOrString = BooleanOrNumberOrStringBoolean Boolean | BooleanOrNumberOrStringNumber Number | BooleanOrNumberOrStringString String
data NumberOrString = NumberOrStringNumber Number | NumberOrStringString String
data IntOrString = IntOrStringInt Int | IntOrStringString String
data ArrayNumberOrVector = ArrayNumberOrVectorArrayNumber (Array Number) | ArrayNumberOrVectorVector Vector
data NumberOrArrayNumberOrVector = NumberOrArrayNumberOrVectorNumber Number | NumberOrArrayNumberOrVectorArrayNumber (Array Number) | NumberOrArrayNumberOrVectorVector Vector

foreign import absImpl :: Fn2 P5 Number Number
foreign import acosImpl :: Fn2 P5 Number Number
foreign import alphaImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import ambientLightImpl :: Fn2 P5 String (Effect Unit)
foreign import ambientLight2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import ambientLight3Impl :: Fn2 P5 Color (Effect Unit)
foreign import ambientLight4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import ambientLight5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import ambientMaterialImpl :: Fn2 P5 ArrayNumberOrStringOrColor (Effect Unit)
foreign import ambientMaterial2Impl :: Fn5 P5 Number (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import applyMatrixImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import asinImpl :: Fn2 P5 Number Number
foreign import atanImpl :: Fn2 P5 Number Number
foreign import atan2Impl :: Fn3 P5 Number Number Number
foreign import backgroundImpl :: Fn2 P5 Color (Effect Unit)
foreign import background2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import background3Impl :: Fn3 P5 String (Maybe Number) (Effect Unit)
foreign import background4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import background6Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import beginContourImpl :: Fn1 P5 (Effect Unit)
foreign import bezierImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import bezierDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import bezierPointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierVertexImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import bezierVertex2Impl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import blueImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import boxImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import brightnessImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import byteImpl :: Fn2 P5 BooleanOrNumberOrString Number
foreign import cameraImpl :: Fn10 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import ceilImpl :: Fn2 P5 Number Int
foreign import charImpl :: Fn2 P5 NumberOrString String
foreign import clearImpl :: Fn1 P5 (Effect Unit)
foreign import colorImpl :: Fn2 P5 String Color
foreign import color2Impl :: Fn2 P5 (Array Number) Color
foreign import color3Impl :: Fn2 P5 Color Color
foreign import color4Impl :: Fn3 P5 Number (Maybe Number) Color
foreign import color5Impl :: Fn5 P5 Number Number Number (Maybe Number) Color
foreign import coneImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Maybe Boolean) (Effect Unit)
foreign import constrainImpl :: Fn4 P5 Number Number Number Number
foreign import copyImpl :: Fn9 P5 Int Int Int Int Int Int Int Int (Effect Unit)
foreign import cosImpl :: Fn2 P5 Number Number
foreign import createVectorImpl :: Fn4 P5 (Maybe Number) (Maybe Number) (Maybe Number) Vector
foreign import curveImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import curveDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import curvePointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import curveTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import curveTightnessImpl :: Fn2 P5 Number (Effect Unit)
foreign import curveVertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import curveVertex2Impl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import cylinderImpl :: Fn7 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Maybe Boolean) (Maybe Boolean) (Effect Unit)
foreign import dayImpl :: Fn1 P5 Int
foreign import debugModeImpl :: Fn1 P5 (Effect Unit)
foreign import debugMode5Impl :: Fn10 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import degreesImpl :: Fn2 P5 Number Number
foreign import deviceMovedImpl :: Fn1 P5 (Effect Unit)
foreign import deviceShakenImpl :: Fn1 P5 (Effect Unit)
foreign import deviceTurnedImpl :: Fn1 P5 (Effect Unit)
foreign import directionalLightImpl :: Fn3 P5 ArrayNumberOrStringOrColor Vector (Effect Unit)
foreign import directionalLight2Impl :: Fn5 P5 Number Number Number Vector (Effect Unit)
foreign import directionalLight3Impl :: Fn5 P5 ArrayNumberOrStringOrColor Number Number Number (Effect Unit)
foreign import directionalLight4Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import displayDensityImpl :: Fn1 P5 Number
foreign import distImpl :: Fn5 P5 Number Number Number Number Number
foreign import dist2Impl :: Fn7 P5 Number Number Number Number Number Number Number
foreign import ellipseImpl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import ellipse2Impl :: Fn6 P5 Number Number Number Number Int (Effect Unit)
foreign import ellipsoidImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import endContourImpl :: Fn1 P5 (Effect Unit)
foreign import expImpl :: Fn2 P5 Number Number
foreign import fillImpl :: Fn2 P5 String (Effect Unit)
foreign import fill2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import fill3Impl :: Fn2 P5 Color (Effect Unit)
foreign import fill4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import fill5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import floatImpl :: Fn2 P5 String Number
foreign import floorImpl :: Fn2 P5 Number Int
foreign import frameRateImpl :: Fn1 P5 Number
foreign import frameRate2Impl :: Fn2 P5 Number (Effect Unit)
foreign import fullscreenImpl :: Fn2 P5 (Maybe Boolean) Boolean
foreign import getURLImpl :: Fn1 P5 String
foreign import getURLPathImpl :: Fn1 P5 (Array String)
foreign import greenImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import hexImpl :: Fn3 P5 Number (Maybe Number) String
foreign import hex2Impl :: Fn3 P5 (Array Number) (Maybe Number) (Array String)
foreign import hourImpl :: Fn1 P5 Int
foreign import hueImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import int2Impl :: Fn3 P5 BooleanOrNumberOrString (Maybe Int) Number
foreign import keyIsDownImpl :: Fn2 P5 Number Boolean
foreign import keyPressedImpl :: Fn1 P5 (Effect Unit)
foreign import keyReleasedImpl :: Fn1 P5 (Effect Unit)
foreign import keyTypedImpl :: Fn1 P5 (Effect Unit)
foreign import lerpImpl :: Fn4 P5 Number Number Number Number
foreign import lerpColorImpl :: Fn4 P5 Color Color Number Color
foreign import lightnessImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import lineImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import line2Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import loadPixelsImpl :: Fn1 P5 (Effect Unit)
foreign import logImpl :: Fn2 P5 Number Number
foreign import loopImpl :: Fn1 P5 (Effect Unit)
foreign import magImpl :: Fn3 P5 Number Number Number
foreign import mapImpl :: Fn7 P5 Number Number Number Number Number (Maybe Boolean) Number
foreign import matchImpl :: Fn3 P5 String String (Array String)
foreign import matchAllImpl :: Fn3 P5 String String (Array String)
foreign import maxImpl :: Fn2 P5 (Array Number) Number
foreign import max2Impl :: Fn3 P5 Number Number Number
foreign import millisImpl :: Fn1 P5 Number
foreign import minImpl :: Fn2 P5 (Array Number) Number
foreign import min2Impl :: Fn3 P5 Number Number Number
foreign import minuteImpl :: Fn1 P5 Int
foreign import monthImpl :: Fn1 P5 Int
foreign import nfImpl :: Fn4 P5 NumberOrString (Maybe IntOrString) (Maybe IntOrString) String
foreign import nfcImpl :: Fn3 P5 NumberOrString (Maybe IntOrString) String
foreign import nfpImpl :: Fn4 P5 Number (Maybe Int) (Maybe Int) String
foreign import nfp2Impl :: Fn4 P5 (Array Number) (Maybe Int) (Maybe Int) (Array String)
foreign import nfsImpl :: Fn4 P5 Number (Maybe Int) (Maybe Int) String
foreign import noCanvasImpl :: Fn1 P5 (Effect Unit)
foreign import noCursorImpl :: Fn1 P5 (Effect Unit)
foreign import noDebugModeImpl :: Fn1 P5 (Effect Unit)
foreign import noFillImpl :: Fn1 P5 (Effect Unit)
foreign import noLoopImpl :: Fn1 P5 (Effect Unit)
foreign import noSmoothImpl :: Fn1 P5 (Effect Unit)
foreign import noStrokeImpl :: Fn1 P5 (Effect Unit)
foreign import noTintImpl :: Fn1 P5 (Effect Unit)
foreign import noiseImpl :: Fn4 P5 Number (Maybe Number) (Maybe Number) Number
foreign import noiseDetailImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import noiseSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import normImpl :: Fn4 P5 Number Number Number Number
foreign import normalMaterialImpl :: Fn1 P5 (Effect Unit)
foreign import orbitControlImpl :: Fn3 P5 (Maybe Number) (Maybe Number) (Effect Unit)
foreign import orthoImpl :: Fn7 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import perspectiveImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import pixelDensityImpl :: Fn1 P5 Number
foreign import pixelDensity2Impl :: Fn2 P5 Number (Effect Unit)
foreign import planeImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import pointImpl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import pointLightImpl :: Fn3 P5 ArrayNumberOrStringOrColor Vector (Effect Unit)
foreign import pointLight2Impl :: Fn5 P5 Number Number Number Vector (Effect Unit)
foreign import pointLight3Impl :: Fn5 P5 ArrayNumberOrStringOrColor Number Number Number (Effect Unit)
foreign import pointLight4Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import popImpl :: Fn1 P5 (Effect Unit)
foreign import powImpl :: Fn3 P5 Number Number Number
foreign import preloadImpl :: Fn1 P5 (Effect Unit)
foreign import pushImpl :: Fn1 P5 (Effect Unit)
foreign import quadImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import quadraticVertexImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import quadraticVertex2Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import radiansImpl :: Fn2 P5 Number Number
foreign import random2Impl :: Fn3 P5 (Maybe Number) (Maybe Number) Number
foreign import randomGaussianImpl :: Fn3 P5 Number Number Number
foreign import randomSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import rectImpl :: Fn7 P5 Number Number Number Number (Maybe Int) (Maybe Int) (Effect Unit)
foreign import rect2Impl :: Fn9 P5 Number Number Number Number (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import redImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import redrawImpl :: Fn2 P5 (Maybe Int) (Effect Unit)
foreign import removeImpl :: Fn1 P5 (Effect Unit)
foreign import resetMatrixImpl :: Fn1 P5 (Effect Unit)
foreign import resizeCanvasImpl :: Fn4 P5 Number Number (Maybe Boolean) (Effect Unit)
foreign import rotateImpl :: Fn3 P5 Number (Maybe ArrayNumberOrVector) (Effect Unit)
foreign import rotateXImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateYImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateZImpl :: Fn2 P5 Number (Effect Unit)
foreign import roundImpl :: Fn2 P5 Number Int
foreign import saturationImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import saveCanvasImpl :: Fn3 P5 (Maybe String) (Maybe String) (Effect Unit)
foreign import saveStringsImpl :: Fn4 P5 (Array String) String (Maybe String) (Effect Unit)
foreign import scaleImpl :: Fn2 P5 ArrayNumberOrVector (Effect Unit)
foreign import scale2Impl :: Fn4 P5 NumberOrArrayNumberOrVector (Maybe Number) (Maybe Number) (Effect Unit)
foreign import secondImpl :: Fn1 P5 Int
foreign import setAttributes2Impl :: Fn3 P5 String Boolean (Effect Unit)
foreign import setMoveThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import setShakeThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearXImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearYImpl :: Fn2 P5 Number (Effect Unit)
foreign import sinImpl :: Fn2 P5 Number Number
foreign import smoothImpl :: Fn1 P5 (Effect Unit)
foreign import specularMaterialImpl :: Fn2 P5 ArrayNumberOrStringOrColor (Effect Unit)
foreign import specularMaterial2Impl :: Fn5 P5 Number (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import sphereImpl :: Fn4 P5 (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import splitImpl :: Fn3 P5 String String (Array String)
foreign import splitTokensImpl :: Fn3 P5 String (Maybe String) (Array String)
foreign import sqImpl :: Fn2 P5 Number Number
foreign import sqrtImpl :: Fn2 P5 Number Number
foreign import strokeImpl :: Fn2 P5 String (Effect Unit)
foreign import stroke2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import stroke3Impl :: Fn2 P5 Color (Effect Unit)
foreign import stroke4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import stroke5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import strokeWeightImpl :: Fn2 P5 Number (Effect Unit)
foreign import tanImpl :: Fn2 P5 Number Number
foreign import textAscentImpl :: Fn1 P5 Number
foreign import textDescentImpl :: Fn1 P5 Number
foreign import textLeadingImpl :: Fn1 P5 Number
foreign import textLeading2Impl :: Fn2 P5 Number (Effect Unit)
foreign import textSizeImpl :: Fn1 P5 Number
foreign import textSize2Impl :: Fn2 P5 Number (Effect Unit)
foreign import textStyleImpl :: Fn1 P5 String
foreign import textWidthImpl :: Fn2 P5 String Number
foreign import tintImpl :: Fn2 P5 String (Effect Unit)
foreign import tint2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import tint3Impl :: Fn2 P5 Color (Effect Unit)
foreign import tint4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import tint5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import torusImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import translateImpl :: Fn2 P5 Vector (Effect Unit)
foreign import translate2Impl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import triangleImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import trimImpl :: Fn2 P5 String String
foreign import uncharImpl :: Fn2 P5 String Number
foreign import unhexImpl :: Fn2 P5 String Number
foreign import updatePixelsImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import vertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import vertex2Impl :: Fn6 P5 Number Number Number (Maybe Number) (Maybe Number) (Effect Unit)
foreign import windowResizedImpl :: Fn1 P5 (Effect Unit)
foreign import yearImpl :: Fn1 P5 Int

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/abs)
abs :: P5 -> Number -> Number
abs p5 n = runFn2 absImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/acos)
acos :: P5 -> Number -> Number
acos p5 value = runFn2 acosImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/alpha)
alpha :: P5 -> ArrayNumberOrStringOrColor -> Number
alpha p5 color = runFn2 alphaImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight :: P5 -> String -> (Effect Unit)
ambientLight p5 value = runFn2 ambientLightImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight2 :: P5 -> (Array Number) -> (Effect Unit)
ambientLight2 p5 values = runFn2 ambientLight2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight3 :: P5 -> Color -> (Effect Unit)
ambientLight3 p5 color = runFn2 ambientLight3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
ambientLight4 p5 gray alpha = runFn3 ambientLight4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
ambientLight5 p5 v1 v2 v3 alpha = runFn5 ambientLight5Impl p5 v1 v2 v3 alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
ambientMaterial p5 color = runFn2 ambientMaterialImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
ambientMaterial2 p5 v1 v2 v3 a = runFn5 ambientMaterial2Impl p5 v1 v2 v3 a

-- TODO: unsupported: angleMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: append :: P5 -> Unsupported(Array) -> Unsupported(Any) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/applyMatrix)
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
applyMatrix p5 a b c d e f = runFn7 applyMatrixImpl p5 a b c d e f

-- TODO: unsupported: arc :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Unsupported(Constant) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: arrayCopy :: P5 -> Unsupported(Array) -> Unsupported(Array) -> (Maybe Int) -> (Effect Unit)

-- TODO: unsupported: arrayCopy2 :: P5 -> Unsupported(Array) -> Int -> Unsupported(Array) -> Int -> Int -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/asin)
asin :: P5 -> Number -> Number
asin p5 value = runFn2 asinImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan)
atan :: P5 -> Number -> Number
atan p5 value = runFn2 atanImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan2)
atan2 :: P5 -> Number -> Number -> Number
atan2 p5 y x = runFn3 atan2Impl p5 y x

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background :: P5 -> Color -> (Effect Unit)
background p5 color = runFn2 backgroundImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background2 :: P5 -> (Array Number) -> (Effect Unit)
background2 p5 values = runFn2 background2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background3 :: P5 -> String -> (Maybe Number) -> (Effect Unit)
background3 p5 colorstring a = runFn3 background3Impl p5 colorstring a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
background4 p5 gray a = runFn3 background4Impl p5 gray a

-- TODO: unsupported: background5 :: P5 -> Unsupported(p5.Image) -> (Maybe Number) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background6 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
background6 p5 v1 v2 v3 a = runFn5 background6Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)
beginContour :: P5 -> (Effect Unit)
beginContour p5  = runFn1 beginContourImpl p5 

-- TODO: unsupported: beginShape :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezier)
bezier :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezier p5 x1 y1 x2 y2 x3 y3 x4 y4 = runFn9 bezierImpl p5 x1 y1 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierDetail)
bezierDetail :: P5 -> Number -> (Effect Unit)
bezierDetail p5 detail = runFn2 bezierDetailImpl p5 detail

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierPoint)
bezierPoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
bezierPoint p5 a b c d t = runFn6 bezierPointImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierTangent)
bezierTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
bezierTangent p5 a b c d t = runFn6 bezierTangentImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex p5 x2 y2 x3 y3 x4 y4 = runFn7 bezierVertexImpl p5 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex2 p5 x2 y2 z2 x3 y3 z3 x4 y4 z4 = runFn10 bezierVertex2Impl p5 x2 y2 z2 x3 y3 z3 x4 y4 z4

-- TODO: unsupported: blend :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: blend2 :: P5 -> Unsupported(p5.Image) -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: blendMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/blue)
blue :: P5 -> ArrayNumberOrStringOrColor -> Number
blue p5 color = runFn2 blueImpl p5 color

-- TODO: unsupported: boolean :: P5 -> UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(Unsupported(Array)|Boolean)|Number)|String) -> Boolean

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/box)
box :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
box p5 width height depth detailX detailY = runFn6 boxImpl p5 width height depth detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/brightness)
brightness :: P5 -> ArrayNumberOrStringOrColor -> Number
brightness p5 color = runFn2 brightnessImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/byte)
byte :: P5 -> BooleanOrNumberOrString -> Number
byte p5 n = runFn2 byteImpl p5 n

-- TODO: unsupported: byte2 :: P5 -> Unsupported(Array) -> (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/camera)
camera :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
camera p5 x y z centerX centerY centerZ upX upY upZ = runFn10 cameraImpl p5 x y z centerX centerY centerZ upX upY upZ

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ceil)
ceil :: P5 -> Number -> Int
ceil p5 n = runFn2 ceilImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/char)
char :: P5 -> NumberOrString -> String
char p5 n = runFn2 charImpl p5 n

-- TODO: unsupported: char2 :: P5 -> Unsupported(Array) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/clear)
clear :: P5 -> (Effect Unit)
clear p5  = runFn1 clearImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color :: P5 -> String -> Color
color p5 value = runFn2 colorImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color2 :: P5 -> (Array Number) -> Color
color2 p5 values = runFn2 color2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color3 :: P5 -> Color -> Color
color3 p5 color = runFn2 color3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color4 :: P5 -> Number -> (Maybe Number) -> Color
color4 p5 gray alpha = runFn3 color4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/color)
color5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> Color
color5 p5 v1 v2 v3 alpha = runFn5 color5Impl p5 v1 v2 v3 alpha

-- TODO: unsupported: colorMode :: P5 -> Unsupported(Constant) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: colorMode2 :: P5 -> Unsupported(Constant) -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: concat :: P5 -> Unsupported(Array) -> Unsupported(Array) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cone)
cone :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Effect Unit)
cone p5 radius height detailX detailY cap = runFn6 coneImpl p5 radius height detailX detailY cap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/constrain)
constrain :: P5 -> Number -> Number -> Number -> Number
constrain p5 n low high = runFn4 constrainImpl p5 n low high

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/copy)
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy p5 sx sy sw sh dx dy dw dh = runFn9 copyImpl p5 sx sy sw sh dx dy dw dh

-- TODO: unsupported: copy2 :: P5 -> UnsupportedProduct(Unsupported(p5.Element)|Unsupported(p5.Image)) -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cos)
cos :: P5 -> Number -> Number
cos p5 angle = runFn2 cosImpl p5 angle

-- TODO: unsupported: createCamera :: P5 -> Unsupported(p5.Camera)

-- TODO: unsupported: createCanvas :: P5 -> Number -> Number -> Unsupported(Constant) -> Unsupported(p5.Renderer)

-- TODO: unsupported: createGraphics :: P5 -> Number -> Number -> Unsupported(Constant) -> Unsupported(p5.Graphics)

-- TODO: unsupported: createImage :: P5 -> Int -> Int -> Unsupported(p5.Image)

-- TODO: unsupported: createNumberDict :: P5 -> Unsupported(Object) -> Unsupported(p5.NumberDict)

-- TODO: unsupported: createNumberDict2 :: P5 -> Number -> Number -> Unsupported(p5.NumberDict)

-- TODO: unsupported: createShader :: P5 -> String -> String -> Unsupported(p5.Shader)

-- TODO: unsupported: createStringDict :: P5 -> Unsupported(Object) -> Unsupported(p5.StringDict)

-- TODO: unsupported: createStringDict2 :: P5 -> String -> String -> Unsupported(p5.StringDict)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createVector)
createVector :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> Vector
createVector p5 x y z = runFn4 createVectorImpl p5 x y z

-- TODO: unsupported: createWriter :: P5 -> String -> (Maybe String) -> Unsupported(p5.PrintWriter)

-- TODO: unsupported: cursor :: P5 -> UnsupportedProduct(Unsupported(Constant)|String) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curve)
curve :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
curve p5 x1 y1 x2 y2 x3 y3 x4 y4 = runFn9 curveImpl p5 x1 y1 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveDetail)
curveDetail :: P5 -> Number -> (Effect Unit)
curveDetail p5 resolution = runFn2 curveDetailImpl p5 resolution

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curvePoint)
curvePoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
curvePoint p5 a b c d t = runFn6 curvePointImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveTangent)
curveTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
curveTangent p5 a b c d t = runFn6 curveTangentImpl p5 a b c d t

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveTightness)
curveTightness :: P5 -> Number -> (Effect Unit)
curveTightness p5 amount = runFn2 curveTightnessImpl p5 amount

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex :: P5 -> Number -> Number -> (Effect Unit)
curveVertex p5 x y = runFn3 curveVertexImpl p5 x y

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
curveVertex2 p5 x y z = runFn4 curveVertex2Impl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cylinder)
cylinder :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Maybe Boolean) -> (Effect Unit)
cylinder p5 radius height detailX detailY bottomCap topCap = runFn7 cylinderImpl p5 radius height detailX detailY bottomCap topCap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/day)
day :: P5 -> Int
day p5  = runFn1 dayImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode :: P5 -> (Effect Unit)
debugMode p5  = runFn1 debugModeImpl p5 

-- TODO: unsupported: debugMode2 :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: debugMode3 :: P5 -> Unsupported(Constant) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: debugMode4 :: P5 -> Unsupported(Constant) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode5 :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode5 p5 gridSize gridDivisions gridXOff gridYOff gridZOff axesSize axesXOff axesYOff axesZOff = runFn10 debugMode5Impl p5 gridSize gridDivisions gridXOff gridYOff gridZOff axesSize axesXOff axesYOff axesZOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/degrees)
degrees :: P5 -> Number -> Number
degrees p5 radians = runFn2 degreesImpl p5 radians

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceMoved)
deviceMoved :: P5 -> (Effect Unit)
deviceMoved p5  = runFn1 deviceMovedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceShaken)
deviceShaken :: P5 -> (Effect Unit)
deviceShaken p5  = runFn1 deviceShakenImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceTurned)
deviceTurned :: P5 -> (Effect Unit)
deviceTurned p5  = runFn1 deviceTurnedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
directionalLight p5 color position = runFn3 directionalLightImpl p5 color position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
directionalLight2 p5 v1 v2 v3 position = runFn5 directionalLight2Impl p5 v1 v2 v3 position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
directionalLight3 p5 color x y z = runFn5 directionalLight3Impl p5 color x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
directionalLight4 p5 v1 v2 v3 x y z = runFn7 directionalLight4Impl p5 v1 v2 v3 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/displayDensity)
displayDensity :: P5 -> Number
displayDensity p5  = runFn1 displayDensityImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist :: P5 -> Number -> Number -> Number -> Number -> Number
dist p5 x1 y1 x2 y2 = runFn5 distImpl p5 x1 y1 x2 y2

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number
dist2 p5 x1 y1 z1 x2 y2 z2 = runFn7 dist2Impl p5 x1 y1 z1 x2 y2 z2

-- TODO: unsupported: doubleClicked :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: downloadFile :: P5 -> UnsupportedProduct(Unsupported(Blob)|String) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
ellipse p5 x y w h = runFn5 ellipseImpl p5 x y w h

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse2 :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
ellipse2 p5 x y w h detail = runFn6 ellipse2Impl p5 x y w h detail

-- TODO: unsupported: ellipseMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)
ellipsoid :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
ellipsoid p5 radiusx radiusy radiusz detailX detailY = runFn6 ellipsoidImpl p5 radiusx radiusy radiusz detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endContour)
endContour :: P5 -> (Effect Unit)
endContour p5  = runFn1 endContourImpl p5 

-- TODO: unsupported: endShape :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/exp)
exp :: P5 -> Number -> Number
exp p5 n = runFn2 expImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill :: P5 -> String -> (Effect Unit)
fill p5 value = runFn2 fillImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill2 :: P5 -> (Array Number) -> (Effect Unit)
fill2 p5 values = runFn2 fill2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill3 :: P5 -> Color -> (Effect Unit)
fill3 p5 color = runFn2 fill3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
fill4 p5 gray alpha = runFn3 fill4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
fill5 p5 v1 v2 v3 alpha = runFn5 fill5Impl p5 v1 v2 v3 alpha

-- TODO: unsupported: filter :: P5 -> Unsupported(Constant) -> (Maybe Number) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/float)
float :: P5 -> String -> Number
float p5 str = runFn2 floatImpl p5 str

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/floor)
floor :: P5 -> Number -> Int
floor p5 n = runFn2 floorImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)
frameRate :: P5 -> Number
frameRate p5  = runFn1 frameRateImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)
frameRate2 :: P5 -> Number -> (Effect Unit)
frameRate2 p5 fps = runFn2 frameRate2Impl p5 fps

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fullscreen)
fullscreen :: P5 -> (Maybe Boolean) -> Boolean
fullscreen p5 val = runFn2 fullscreenImpl p5 val

-- TODO: unsupported: get :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> UnsupportedProduct((Array Number)|Unsupported(p5.Image))

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/getURL)
getURL :: P5 -> String
getURL p5  = runFn1 getURLImpl p5 

-- TODO: unsupported: getURLParams :: P5 -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/getURLPath)
getURLPath :: P5 -> (Array String)
getURLPath p5  = runFn1 getURLPathImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/green)
green :: P5 -> ArrayNumberOrStringOrColor -> Number
green p5 color = runFn2 greenImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex :: P5 -> Number -> (Maybe Number) -> String
hex p5 n digits = runFn3 hexImpl p5 n digits

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex2 :: P5 -> (Array Number) -> (Maybe Number) -> (Array String)
hex2 p5 ns digits = runFn3 hex2Impl p5 ns digits

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hour)
hour :: P5 -> Int
hour p5  = runFn1 hourImpl p5 

-- TODO: unsupported: httpDo :: P5 -> String -> Unsupported(Object) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpDo2 :: P5 -> String -> (Maybe String) -> (Maybe String) -> Unsupported(Object) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpGet :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpGet2 :: P5 -> String -> UnsupportedProduct(Boolean|Unsupported(Object)) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpGet3 :: P5 -> String -> (Maybe String) -> UnsupportedProduct(Boolean|Unsupported(Object)) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpPost :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpPost2 :: P5 -> String -> UnsupportedProduct(Boolean|Unsupported(Object)) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpPost3 :: P5 -> String -> (Maybe String) -> UnsupportedProduct(Boolean|Unsupported(Object)) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hue)
hue :: P5 -> ArrayNumberOrStringOrColor -> Number
hue p5 color = runFn2 hueImpl p5 color

-- TODO: unsupported: image :: P5 -> UnsupportedProduct(Unsupported(p5.Element)|Unsupported(p5.Image)) -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: image2 :: P5 -> UnsupportedProduct(Unsupported(p5.Element)|Unsupported(p5.Image)) -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: imageMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: int :: P5 -> Unsupported(Array) -> (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/int)
int2 :: P5 -> BooleanOrNumberOrString -> (Maybe Int) -> Number
int2 p5 n radix = runFn3 int2Impl p5 n radix

-- TODO: unsupported: join :: P5 -> Unsupported(Array) -> String -> String

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyIsDown)
keyIsDown :: P5 -> Number -> Boolean
keyIsDown p5 code = runFn2 keyIsDownImpl p5 code

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyPressed)
keyPressed :: P5 -> (Effect Unit)
keyPressed p5  = runFn1 keyPressedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyReleased)
keyReleased :: P5 -> (Effect Unit)
keyReleased p5  = runFn1 keyReleasedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyTyped)
keyTyped :: P5 -> (Effect Unit)
keyTyped p5  = runFn1 keyTypedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lerp)
lerp :: P5 -> Number -> Number -> Number -> Number
lerp p5 start stop amt = runFn4 lerpImpl p5 start stop amt

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lerpColor)
lerpColor :: P5 -> Color -> Color -> Number -> Color
lerpColor p5 c1 c2 amt = runFn4 lerpColorImpl p5 c1 c2 amt

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lightness)
lightness :: P5 -> ArrayNumberOrStringOrColor -> Number
lightness p5 color = runFn2 lightnessImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
line p5 x1 y1 x2 y2 = runFn5 lineImpl p5 x1 y1 x2 y2

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
line2 p5 x1 y1 z1 x2 y2 z2 = runFn7 line2Impl p5 x1 y1 z1 x2 y2 z2

-- TODO: unsupported: loadBytes :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- TODO: unsupported: loadFont :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(p5.Font)

-- TODO: unsupported: loadImage :: P5 -> String -> Unsupported(function(p5.Image)) -> Unsupported(Function(Event)) -> Unsupported(p5.Image)

-- TODO: unsupported: loadJSON :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadJSON2 :: P5 -> String -> String -> Unsupported(Function) -> Unsupported(Function) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadJSON3 :: P5 -> String -> Unsupported(Object) -> (Maybe String) -> Unsupported(Function) -> Unsupported(Function) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadModel :: P5 -> String -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Unsupported(p5.Geometry)

-- TODO: unsupported: loadModel2 :: P5 -> String -> Boolean -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Unsupported(p5.Geometry)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)
loadPixels :: P5 -> (Effect Unit)
loadPixels p5  = runFn1 loadPixelsImpl p5 

-- TODO: unsupported: loadShader :: P5 -> (Maybe String) -> (Maybe String) -> Unsupported(p5.Shader)

-- TODO: unsupported: loadStrings :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> (Array String)

-- TODO: unsupported: loadTable :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- TODO: unsupported: loadTable2 :: P5 -> String -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- TODO: unsupported: loadXML :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/log)
log :: P5 -> Number -> Number
log p5 n = runFn2 logImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loop)
loop :: P5 -> (Effect Unit)
loop p5  = runFn1 loopImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mag)
mag :: P5 -> Number -> Number -> Number
mag p5 a b = runFn3 magImpl p5 a b

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/map)
map :: P5 -> Number -> Number -> Number -> Number -> Number -> (Maybe Boolean) -> Number
map p5 value start1 stop1 start2 stop2 withinBounds = runFn7 mapImpl p5 value start1 stop1 start2 stop2 withinBounds

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/match)
match :: P5 -> String -> String -> (Array String)
match p5 str regexp = runFn3 matchImpl p5 str regexp

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/matchAll)
matchAll :: P5 -> String -> String -> (Array String)
matchAll p5 str regexp = runFn3 matchAllImpl p5 str regexp

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/max)
max :: P5 -> (Array Number) -> Number
max p5 nums = runFn2 maxImpl p5 nums

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/max)
max2 :: P5 -> Number -> Number -> Number
max2 p5 n0 n1 = runFn3 max2Impl p5 n0 n1

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/millis)
millis :: P5 -> Number
millis p5  = runFn1 millisImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min :: P5 -> (Array Number) -> Number
min p5 nums = runFn2 minImpl p5 nums

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min2 :: P5 -> Number -> Number -> Number
min2 p5 n0 n1 = runFn3 min2Impl p5 n0 n1

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/minute)
minute :: P5 -> Int
minute p5  = runFn1 minuteImpl p5 

-- TODO: unsupported: model :: P5 -> Unsupported(p5.Geometry) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/month)
month :: P5 -> Int
month p5  = runFn1 monthImpl p5 

-- TODO: unsupported: mouseClicked :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseDragged :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseMoved :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mousePressed :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseReleased :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseWheel :: P5 -> Unsupported(Object) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nf)
nf :: P5 -> NumberOrString -> (Maybe IntOrString) -> (Maybe IntOrString) -> String
nf p5 num left right = runFn4 nfImpl p5 num left right

-- TODO: unsupported: nf2 :: P5 -> Unsupported(Array) -> (Maybe IntOrString) -> (Maybe IntOrString) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfc)
nfc :: P5 -> NumberOrString -> (Maybe IntOrString) -> String
nfc p5 num right = runFn3 nfcImpl p5 num right

-- TODO: unsupported: nfc2 :: P5 -> Unsupported(Array) -> (Maybe IntOrString) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
nfp p5 num left right = runFn4 nfpImpl p5 num left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp2 :: P5 -> (Array Number) -> (Maybe Int) -> (Maybe Int) -> (Array String)
nfp2 p5 nums left right = runFn4 nfp2Impl p5 nums left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfs)
nfs :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
nfs p5 num left right = runFn4 nfsImpl p5 num left right

-- TODO: unsupported: nfs2 :: P5 -> Unsupported(Array) -> (Maybe Int) -> (Maybe Int) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noCanvas)
noCanvas :: P5 -> (Effect Unit)
noCanvas p5  = runFn1 noCanvasImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noCursor)
noCursor :: P5 -> (Effect Unit)
noCursor p5  = runFn1 noCursorImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noDebugMode)
noDebugMode :: P5 -> (Effect Unit)
noDebugMode p5  = runFn1 noDebugModeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noFill)
noFill :: P5 -> (Effect Unit)
noFill p5  = runFn1 noFillImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noLoop)
noLoop :: P5 -> (Effect Unit)
noLoop p5  = runFn1 noLoopImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noSmooth)
noSmooth :: P5 -> (Effect Unit)
noSmooth p5  = runFn1 noSmoothImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noStroke)
noStroke :: P5 -> (Effect Unit)
noStroke p5  = runFn1 noStrokeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noTint)
noTint :: P5 -> (Effect Unit)
noTint p5  = runFn1 noTintImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noise)
noise :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> Number
noise p5 x y z = runFn4 noiseImpl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noiseDetail)
noiseDetail :: P5 -> Number -> Number -> (Effect Unit)
noiseDetail p5 lod falloff = runFn3 noiseDetailImpl p5 lod falloff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noiseSeed)
noiseSeed :: P5 -> Number -> (Effect Unit)
noiseSeed p5 seed = runFn2 noiseSeedImpl p5 seed

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/norm)
norm :: P5 -> Number -> Number -> Number -> Number
norm p5 value start stop = runFn4 normImpl p5 value start stop

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/normalMaterial)
normalMaterial :: P5 -> (Effect Unit)
normalMaterial p5  = runFn1 normalMaterialImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/orbitControl)
orbitControl :: P5 -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
orbitControl p5 sensitivityX sensitivityY = runFn3 orbitControlImpl p5 sensitivityX sensitivityY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ortho)
ortho :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
ortho p5 left right bottom top near far = runFn7 orthoImpl p5 left right bottom top near far

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/perspective)
perspective :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
perspective p5 fovy aspect near far = runFn5 perspectiveImpl p5 fovy aspect near far

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)
pixelDensity :: P5 -> Number
pixelDensity p5  = runFn1 pixelDensityImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)
pixelDensity2 :: P5 -> Number -> (Effect Unit)
pixelDensity2 p5 val = runFn2 pixelDensity2Impl p5 val

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/plane)
plane :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
plane p5 width height detailX detailY = runFn5 planeImpl p5 width height detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/point)
point :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
point p5 x y z = runFn4 pointImpl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
pointLight p5 color position = runFn3 pointLightImpl p5 color position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
pointLight2 p5 v1 v2 v3 position = runFn5 pointLight2Impl p5 v1 v2 v3 position

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
pointLight3 p5 color x y z = runFn5 pointLight3Impl p5 color x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
pointLight4 p5 v1 v2 v3 x y z = runFn7 pointLight4Impl p5 v1 v2 v3 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pop)
pop :: P5 -> (Effect Unit)
pop p5  = runFn1 popImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pow)
pow :: P5 -> Number -> Number -> Number
pow p5 n e = runFn3 powImpl p5 n e

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/preload)
preload :: P5 -> (Effect Unit)
preload p5  = runFn1 preloadImpl p5 

-- TODO: unsupported: print :: P5 -> Unsupported(Any) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/push)
push :: P5 -> (Effect Unit)
push p5  = runFn1 pushImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quad)
quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quad p5 x1 y1 x2 y2 x3 y3 x4 y4 = runFn9 quadImpl p5 x1 y1 x2 y2 x3 y3 x4 y4

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex p5 cx cy x3 y3 = runFn5 quadraticVertexImpl p5 cx cy x3 y3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex2 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex2 p5 cx cy cz x3 y3 z3 = runFn7 quadraticVertex2Impl p5 cx cy cz x3 y3 z3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/radians)
radians :: P5 -> Number -> Number
radians p5 degrees = runFn2 radiansImpl p5 degrees

-- TODO: unsupported: random :: P5 -> Unsupported(Array) -> Unsupported(*)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/random)
random2 :: P5 -> (Maybe Number) -> (Maybe Number) -> Number
random2 p5 min max = runFn3 random2Impl p5 min max

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomGaussian)
randomGaussian :: P5 -> Number -> Number -> Number
randomGaussian p5 mean sd = runFn3 randomGaussianImpl p5 mean sd

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomSeed)
randomSeed :: P5 -> Number -> (Effect Unit)
randomSeed p5 seed = runFn2 randomSeedImpl p5 seed

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect :: P5 -> Number -> Number -> Number -> Number -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
rect p5 x y w h detailX detailY = runFn7 rectImpl p5 x y w h detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect2 :: P5 -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
rect2 p5 x y w h tl tr br bl = runFn9 rect2Impl p5 x y w h tl tr br bl

-- TODO: unsupported: rectMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/red)
red :: P5 -> ArrayNumberOrStringOrColor -> Number
red p5 color = runFn2 redImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/redraw)
redraw :: P5 -> (Maybe Int) -> (Effect Unit)
redraw p5 n = runFn2 redrawImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/remove)
remove :: P5 -> (Effect Unit)
remove p5  = runFn1 removeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/resetMatrix)
resetMatrix :: P5 -> (Effect Unit)
resetMatrix p5  = runFn1 resetMatrixImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/resizeCanvas)
resizeCanvas :: P5 -> Number -> Number -> (Maybe Boolean) -> (Effect Unit)
resizeCanvas p5 w h noRedraw = runFn4 resizeCanvasImpl p5 w h noRedraw

-- TODO: unsupported: reverse :: P5 -> Unsupported(Array) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotate)
rotate :: P5 -> Number -> (Maybe ArrayNumberOrVector) -> (Effect Unit)
rotate p5 angle axis = runFn3 rotateImpl p5 angle axis

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateX)
rotateX :: P5 -> Number -> (Effect Unit)
rotateX p5 angle = runFn2 rotateXImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateY)
rotateY :: P5 -> Number -> (Effect Unit)
rotateY p5 angle = runFn2 rotateYImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateZ)
rotateZ :: P5 -> Number -> (Effect Unit)
rotateZ p5 angle = runFn2 rotateZImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/round)
round :: P5 -> Number -> Int
round p5 n = runFn2 roundImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saturation)
saturation :: P5 -> ArrayNumberOrStringOrColor -> Number
saturation p5 color = runFn2 saturationImpl p5 color

-- TODO: unsupported: save :: P5 -> UnsupportedProduct(Unsupported(Object)|String) -> (Maybe String) -> (Maybe BooleanOrString) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)
saveCanvas :: P5 -> (Maybe String) -> (Maybe String) -> (Effect Unit)
saveCanvas p5 filename extension = runFn3 saveCanvasImpl p5 filename extension

-- TODO: unsupported: saveCanvas2 :: P5 -> UnsupportedProduct(Unsupported(HTMLCanvasElement)|Unsupported(p5.Element)) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- TODO: unsupported: saveFrames :: P5 -> String -> String -> Number -> Number -> Unsupported(Function(Array)) -> (Effect Unit)

-- TODO: unsupported: saveJSON :: P5 -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object)) -> String -> (Maybe Boolean) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)
saveStrings :: P5 -> (Array String) -> String -> (Maybe String) -> (Effect Unit)
saveStrings p5 list filename extension = runFn4 saveStringsImpl p5 list filename extension

-- TODO: unsupported: saveTable :: P5 -> Unsupported(p5.Table) -> String -> (Maybe String) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/scale)
scale :: P5 -> ArrayNumberOrVector -> (Effect Unit)
scale p5 scales = runFn2 scaleImpl p5 scales

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/scale)
scale2 :: P5 -> NumberOrArrayNumberOrVector -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
scale2 p5 s y z = runFn4 scale2Impl p5 s y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/second)
second :: P5 -> Int
second p5  = runFn1 secondImpl p5 

-- TODO: unsupported: set :: P5 -> Number -> Number -> UnsupportedProduct(NumberOrArrayNumber|Unsupported(Object)) -> (Effect Unit)

-- TODO: unsupported: setAttributes :: P5 -> Unsupported(Object) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setAttributes)
setAttributes2 :: P5 -> String -> Boolean -> (Effect Unit)
setAttributes2 p5 key value = runFn3 setAttributes2Impl p5 key value

-- TODO: unsupported: setCamera :: P5 -> Unsupported(p5.Camera) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setMoveThreshold)
setMoveThreshold :: P5 -> Number -> (Effect Unit)
setMoveThreshold p5 value = runFn2 setMoveThresholdImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setShakeThreshold)
setShakeThreshold :: P5 -> Number -> (Effect Unit)
setShakeThreshold p5 value = runFn2 setShakeThresholdImpl p5 value

-- TODO: unsupported: shader :: P5 -> Unsupported(p5.Shader) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearX)
shearX :: P5 -> Number -> (Effect Unit)
shearX p5 angle = runFn2 shearXImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearY)
shearY :: P5 -> Number -> (Effect Unit)
shearY p5 angle = runFn2 shearYImpl p5 angle

-- TODO: unsupported: shorten :: P5 -> Unsupported(Array) -> Unsupported(Array)

-- TODO: unsupported: shuffle :: P5 -> Unsupported(Array) -> (Maybe Boolean) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sin)
sin :: P5 -> Number -> Number
sin p5 angle = runFn2 sinImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/smooth)
smooth :: P5 -> (Effect Unit)
smooth p5  = runFn1 smoothImpl p5 

-- TODO: unsupported: sort :: P5 -> Unsupported(Array) -> (Maybe Int) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
specularMaterial p5 color = runFn2 specularMaterialImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
specularMaterial2 p5 v1 v2 v3 a = runFn5 specularMaterial2Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sphere)
sphere :: P5 -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
sphere p5 radius detailX detailY = runFn4 sphereImpl p5 radius detailX detailY

-- TODO: unsupported: splice :: P5 -> Unsupported(Array) -> Unsupported(Any) -> Int -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/split)
split :: P5 -> String -> String -> (Array String)
split p5 value delim = runFn3 splitImpl p5 value delim

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/splitTokens)
splitTokens :: P5 -> String -> (Maybe String) -> (Array String)
splitTokens p5 value delim = runFn3 splitTokensImpl p5 value delim

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sq)
sq :: P5 -> Number -> Number
sq p5 n = runFn2 sqImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sqrt)
sqrt :: P5 -> Number -> Number
sqrt p5 n = runFn2 sqrtImpl p5 n

-- TODO: unsupported: str :: P5 -> UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(Unsupported(Array)|Boolean)|Number)|String) -> String

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke :: P5 -> String -> (Effect Unit)
stroke p5 value = runFn2 strokeImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke2 :: P5 -> (Array Number) -> (Effect Unit)
stroke2 p5 values = runFn2 stroke2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke3 :: P5 -> Color -> (Effect Unit)
stroke3 p5 color = runFn2 stroke3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
stroke4 p5 gray alpha = runFn3 stroke4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
stroke5 p5 v1 v2 v3 alpha = runFn5 stroke5Impl p5 v1 v2 v3 alpha

-- TODO: unsupported: strokeCap :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)
strokeWeight :: P5 -> Number -> (Effect Unit)
strokeWeight p5 weight = runFn2 strokeWeightImpl p5 weight

-- TODO: unsupported: subset :: P5 -> Unsupported(Array) -> Int -> (Maybe Int) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tan)
tan :: P5 -> Number -> Number
tan p5 angle = runFn2 tanImpl p5 angle

-- TODO: unsupported: text :: P5 -> UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(Unsupported(Array)|Boolean)|Number)|Unsupported(Object))|String) -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: textAlign :: P5 -> Unsupported(Object)

-- TODO: unsupported: textAlign2 :: P5 -> Unsupported(Constant) -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textAscent)
textAscent :: P5 -> Number
textAscent p5  = runFn1 textAscentImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textDescent)
textDescent :: P5 -> Number
textDescent p5  = runFn1 textDescentImpl p5 

-- TODO: unsupported: textFont :: P5 -> Unsupported(Object)

-- TODO: unsupported: textFont2 :: P5 -> UnsupportedProduct(Unsupported(Object)|String) -> (Maybe Number) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)
textLeading :: P5 -> Number
textLeading p5  = runFn1 textLeadingImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)
textLeading2 :: P5 -> Number -> (Effect Unit)
textLeading2 p5 leading = runFn2 textLeading2Impl p5 leading

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textSize)
textSize :: P5 -> Number
textSize p5  = runFn1 textSizeImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textSize)
textSize2 :: P5 -> Number -> (Effect Unit)
textSize2 p5 theSize = runFn2 textSize2Impl p5 theSize

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textStyle)
textStyle :: P5 -> String
textStyle p5  = runFn1 textStyleImpl p5 

-- TODO: unsupported: textStyle2 :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textWidth)
textWidth :: P5 -> String -> Number
textWidth p5 theText = runFn2 textWidthImpl p5 theText

-- TODO: unsupported: texture :: P5 -> UnsupportedProduct(UnsupportedProduct(Unsupported(p5.Graphics)|Unsupported(p5.Image))|Unsupported(p5.MediaElement)) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint :: P5 -> String -> (Effect Unit)
tint p5 value = runFn2 tintImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint2 :: P5 -> (Array Number) -> (Effect Unit)
tint2 p5 values = runFn2 tint2Impl p5 values

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint3 :: P5 -> Color -> (Effect Unit)
tint3 p5 color = runFn2 tint3Impl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
tint4 p5 gray alpha = runFn3 tint4Impl p5 gray alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
tint5 p5 v1 v2 v3 alpha = runFn5 tint5Impl p5 v1 v2 v3 alpha

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/torus)
torus :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
torus p5 radius tubeRadius detailX detailY = runFn5 torusImpl p5 radius tubeRadius detailX detailY

-- TODO: unsupported: touchEnded :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: touchMoved :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: touchStarted :: P5 -> Unsupported(Object) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/translate)
translate :: P5 -> Vector -> (Effect Unit)
translate p5 vector = runFn2 translateImpl p5 vector

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/translate)
translate2 :: P5 -> Number -> Number -> (Maybe Number) -> (Effect Unit)
translate2 p5 x y z = runFn4 translate2Impl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/triangle)
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
triangle p5 x1 y1 x2 y2 x3 y3 = runFn7 triangleImpl p5 x1 y1 x2 y2 x3 y3

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/trim)
trim :: P5 -> String -> String
trim p5 str = runFn2 trimImpl p5 str

-- TODO: unsupported: trim2 :: P5 -> Unsupported(Array) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unchar)
unchar :: P5 -> String -> Number
unchar p5 n = runFn2 uncharImpl p5 n

-- TODO: unsupported: unchar2 :: P5 -> Unsupported(Array) -> (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unhex)
unhex :: P5 -> String -> Number
unhex p5 n = runFn2 unhexImpl p5 n

-- TODO: unsupported: unhex2 :: P5 -> Unsupported(Array) -> (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)
updatePixels :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
updatePixels p5 x y w h = runFn5 updatePixelsImpl p5 x y w h

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex :: P5 -> Number -> Number -> (Effect Unit)
vertex p5 x y = runFn3 vertexImpl p5 x y

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex2 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
vertex2 p5 x y z u v = runFn6 vertex2Impl p5 x y z u v

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/windowResized)
windowResized :: P5 -> (Effect Unit)
windowResized p5  = runFn1 windowResizedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/year)
year :: P5 -> Int
year p5  = runFn1 yearImpl p5 
