module P5.Generated
  ( abs
  , acos
  , ambientLight
  , ambientLight'
  , ambientLight'''
  , ambientLight''''
  , ambientMaterial'
  , applyMatrix
  , asin
  , atan
  , atan2
  , background'
  , background''
  , background'''
  , background'''''
  , beginContour
  , bezier
  , bezierDetail
  , bezierPoint
  , bezierTangent
  , bezierVertex
  , bezierVertex'
  , box
  , camera
  , ceil
  , clear
  , cone
  , constrain
  , copy
  , cos
  , curve
  , curveDetail
  , curvePoint
  , curveTangent
  , curveTightness
  , curveVertex
  , curveVertex'
  , cylinder
  , day
  , debugMode
  , debugMode''''
  , degrees
  , deviceMoved
  , deviceShaken
  , deviceTurned
  , directionalLight'''
  , displayDensity
  , dist
  , dist'
  , ellipse
  , ellipse'
  , ellipsoid
  , endContour
  , exp
  , fill
  , fill'
  , fill'''
  , fill''''
  , float
  , floor
  , frameRate
  , frameRate'
  , fullscreen
  , getURL
  , getURLPath
  , hex
  , hex'
  , hour
  , keyIsDown
  , keyPressed
  , keyReleased
  , keyTyped
  , lerp
  , line
  , line'
  , loadPixels
  , log
  , loop
  , mag
  , map
  , match
  , matchAll
  , max
  , max'
  , millis
  , min
  , min'
  , minute
  , month
  , nfp
  , nfp'
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
  , pixelDensity'
  , plane
  , point
  , pointLight'''
  , pop
  , pow
  , preload
  , push
  , quad
  , quadraticVertex
  , quadraticVertex'
  , radians
  , random'
  , randomGaussian
  , randomSeed
  , rect
  , rect'
  , redraw
  , remove
  , resetMatrix
  , resizeCanvas
  , rotateX
  , rotateY
  , rotateZ
  , round
  , saveCanvas
  , saveStrings
  , second
  , setAttributes'
  , setMoveThreshold
  , setShakeThreshold
  , shearX
  , shearY
  , sin
  , smooth
  , specularMaterial'
  , sphere
  , split
  , splitTokens
  , sq
  , sqrt
  , stroke
  , stroke'
  , stroke'''
  , stroke''''
  , strokeWeight
  , tan
  , textAscent
  , textDescent
  , textLeading
  , textLeading'
  , textSize
  , textSize'
  , textStyle
  , textWidth
  , tint
  , tint'
  , tint'''
  , tint''''
  , torus
  , translate'
  , triangle
  , trim
  , unchar
  , unhex
  , updatePixels
  , vertex
  , vertex'
  , windowResized
  , year
  ) where

import Data.Function.Uncurried
import Effect (Effect)
import Prelude
import P5.Types (P5)

foreign import absImpl :: Fn2 P5 Number Number
foreign import acosImpl :: Fn2 P5 Number Number
foreign import ambientLightImpl :: Fn2 P5 String (Effect Unit)
foreign import ambientLight_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import ambientLight___Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import ambientLight____Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import ambientMaterial_Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import applyMatrixImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import asinImpl :: Fn2 P5 Number Number
foreign import atanImpl :: Fn2 P5 Number Number
foreign import atan2Impl :: Fn3 P5 Number Number Number
foreign import background_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import background__Impl :: Fn3 P5 String Number (Effect Unit)
foreign import background___Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import background_____Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import beginContourImpl :: Fn1 P5 (Effect Unit)
foreign import bezierImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import bezierDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import bezierPointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierVertexImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import bezierVertex_Impl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import boxImpl :: Fn6 P5 Number Number Number Int Int (Effect Unit)
foreign import cameraImpl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import ceilImpl :: Fn2 P5 Number Int
foreign import clearImpl :: Fn1 P5 (Effect Unit)
foreign import coneImpl :: Fn6 P5 Number Number Int Int Boolean (Effect Unit)
foreign import constrainImpl :: Fn4 P5 Number Number Number Number
foreign import copyImpl :: Fn9 P5 Int Int Int Int Int Int Int Int (Effect Unit)
foreign import cosImpl :: Fn2 P5 Number Number
foreign import curveImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import curveDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import curvePointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import curveTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import curveTightnessImpl :: Fn2 P5 Number (Effect Unit)
foreign import curveVertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import curveVertex_Impl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import cylinderImpl :: Fn7 P5 Number Number Int Int Boolean Boolean (Effect Unit)
foreign import dayImpl :: Fn1 P5 Int
foreign import debugModeImpl :: Fn1 P5 (Effect Unit)
foreign import debugMode____Impl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import degreesImpl :: Fn2 P5 Number Number
foreign import deviceMovedImpl :: Fn1 P5 (Effect Unit)
foreign import deviceShakenImpl :: Fn1 P5 (Effect Unit)
foreign import deviceTurnedImpl :: Fn1 P5 (Effect Unit)
foreign import directionalLight___Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import displayDensityImpl :: Fn1 P5 Number
foreign import distImpl :: Fn5 P5 Number Number Number Number Number
foreign import dist_Impl :: Fn7 P5 Number Number Number Number Number Number Number
foreign import ellipseImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import ellipse_Impl :: Fn6 P5 Number Number Number Number Int (Effect Unit)
foreign import ellipsoidImpl :: Fn6 P5 Number Number Number Int Int (Effect Unit)
foreign import endContourImpl :: Fn1 P5 (Effect Unit)
foreign import expImpl :: Fn2 P5 Number Number
foreign import fillImpl :: Fn2 P5 String (Effect Unit)
foreign import fill_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import fill___Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import fill____Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import floatImpl :: Fn2 P5 String Number
foreign import floorImpl :: Fn2 P5 Number Int
foreign import frameRateImpl :: Fn1 P5 Number
foreign import frameRate_Impl :: Fn2 P5 Number (Effect Unit)
foreign import fullscreenImpl :: Fn2 P5 Boolean Boolean
foreign import getURLImpl :: Fn1 P5 String
foreign import getURLPathImpl :: Fn1 P5 (Array String)
foreign import hexImpl :: Fn3 P5 Number Number String
foreign import hex_Impl :: Fn3 P5 (Array Number) Number (Array String)
foreign import hourImpl :: Fn1 P5 Int
foreign import keyIsDownImpl :: Fn2 P5 Number Boolean
foreign import keyPressedImpl :: Fn1 P5 (Effect Unit)
foreign import keyReleasedImpl :: Fn1 P5 (Effect Unit)
foreign import keyTypedImpl :: Fn1 P5 (Effect Unit)
foreign import lerpImpl :: Fn4 P5 Number Number Number Number
foreign import lineImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import line_Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import loadPixelsImpl :: Fn1 P5 (Effect Unit)
foreign import logImpl :: Fn2 P5 Number Number
foreign import loopImpl :: Fn1 P5 (Effect Unit)
foreign import magImpl :: Fn3 P5 Number Number Number
foreign import mapImpl :: Fn7 P5 Number Number Number Number Number Boolean Number
foreign import matchImpl :: Fn3 P5 String String (Array String)
foreign import matchAllImpl :: Fn3 P5 String String (Array String)
foreign import maxImpl :: Fn2 P5 (Array Number) Number
foreign import max_Impl :: Fn3 P5 Number Number Number
foreign import millisImpl :: Fn1 P5 Number
foreign import minImpl :: Fn2 P5 (Array Number) Number
foreign import min_Impl :: Fn3 P5 Number Number Number
foreign import minuteImpl :: Fn1 P5 Int
foreign import monthImpl :: Fn1 P5 Int
foreign import nfpImpl :: Fn4 P5 Number Int Int String
foreign import nfp_Impl :: Fn4 P5 (Array Number) Int Int (Array String)
foreign import nfsImpl :: Fn4 P5 Number Int Int String
foreign import noCanvasImpl :: Fn1 P5 (Effect Unit)
foreign import noCursorImpl :: Fn1 P5 (Effect Unit)
foreign import noDebugModeImpl :: Fn1 P5 (Effect Unit)
foreign import noFillImpl :: Fn1 P5 (Effect Unit)
foreign import noLoopImpl :: Fn1 P5 (Effect Unit)
foreign import noSmoothImpl :: Fn1 P5 (Effect Unit)
foreign import noStrokeImpl :: Fn1 P5 (Effect Unit)
foreign import noTintImpl :: Fn1 P5 (Effect Unit)
foreign import noiseImpl :: Fn4 P5 Number Number Number Number
foreign import noiseDetailImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import noiseSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import normImpl :: Fn4 P5 Number Number Number Number
foreign import normalMaterialImpl :: Fn1 P5 (Effect Unit)
foreign import orbitControlImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import orthoImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import perspectiveImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import pixelDensityImpl :: Fn1 P5 Number
foreign import pixelDensity_Impl :: Fn2 P5 Number (Effect Unit)
foreign import planeImpl :: Fn5 P5 Number Number Int Int (Effect Unit)
foreign import pointImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import pointLight___Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import popImpl :: Fn1 P5 (Effect Unit)
foreign import powImpl :: Fn3 P5 Number Number Number
foreign import preloadImpl :: Fn1 P5 (Effect Unit)
foreign import pushImpl :: Fn1 P5 (Effect Unit)
foreign import quadImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import quadraticVertexImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import quadraticVertex_Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import radiansImpl :: Fn2 P5 Number Number
foreign import random_Impl :: Fn3 P5 Number Number Number
foreign import randomGaussianImpl :: Fn3 P5 Number Number Number
foreign import randomSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import rectImpl :: Fn7 P5 Number Number Number Number Int Int (Effect Unit)
foreign import rect_Impl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import redrawImpl :: Fn2 P5 Int (Effect Unit)
foreign import removeImpl :: Fn1 P5 (Effect Unit)
foreign import resetMatrixImpl :: Fn1 P5 (Effect Unit)
foreign import resizeCanvasImpl :: Fn4 P5 Number Number Boolean (Effect Unit)
foreign import rotateXImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateYImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateZImpl :: Fn2 P5 Number (Effect Unit)
foreign import roundImpl :: Fn2 P5 Number Int
foreign import saveCanvasImpl :: Fn3 P5 String String (Effect Unit)
foreign import saveStringsImpl :: Fn4 P5 (Array String) String String (Effect Unit)
foreign import secondImpl :: Fn1 P5 Int
foreign import setAttributes_Impl :: Fn3 P5 String Boolean (Effect Unit)
foreign import setMoveThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import setShakeThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearXImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearYImpl :: Fn2 P5 Number (Effect Unit)
foreign import sinImpl :: Fn2 P5 Number Number
foreign import smoothImpl :: Fn1 P5 (Effect Unit)
foreign import specularMaterial_Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import sphereImpl :: Fn4 P5 Number Int Int (Effect Unit)
foreign import splitImpl :: Fn3 P5 String String (Array String)
foreign import splitTokensImpl :: Fn3 P5 String String (Array String)
foreign import sqImpl :: Fn2 P5 Number Number
foreign import sqrtImpl :: Fn2 P5 Number Number
foreign import strokeImpl :: Fn2 P5 String (Effect Unit)
foreign import stroke_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import stroke___Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import stroke____Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import strokeWeightImpl :: Fn2 P5 Number (Effect Unit)
foreign import tanImpl :: Fn2 P5 Number Number
foreign import textAscentImpl :: Fn1 P5 Number
foreign import textDescentImpl :: Fn1 P5 Number
foreign import textLeadingImpl :: Fn1 P5 Number
foreign import textLeading_Impl :: Fn2 P5 Number (Effect Unit)
foreign import textSizeImpl :: Fn1 P5 Number
foreign import textSize_Impl :: Fn2 P5 Number (Effect Unit)
foreign import textStyleImpl :: Fn1 P5 String
foreign import textWidthImpl :: Fn2 P5 String Number
foreign import tintImpl :: Fn2 P5 String (Effect Unit)
foreign import tint_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import tint___Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import tint____Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import torusImpl :: Fn5 P5 Number Number Int Int (Effect Unit)
foreign import translate_Impl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import triangleImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import trimImpl :: Fn2 P5 String String
foreign import uncharImpl :: Fn2 P5 String Number
foreign import unhexImpl :: Fn2 P5 String Number
foreign import updatePixelsImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import vertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import vertex_Impl :: Fn6 P5 Number Number Number Number Number (Effect Unit)
foreign import windowResizedImpl :: Fn1 P5 (Effect Unit)
foreign import yearImpl :: Fn1 P5 Int

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/abs)
abs :: P5 -> Number -> Number
abs = runFn2 absImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/acos)
acos :: P5 -> Number -> Number
acos = runFn2 acosImpl

-- TODO: unsupported: alpha :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight :: P5 -> String -> (Effect Unit)
ambientLight = runFn2 ambientLightImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight' :: P5 -> (Array Number) -> (Effect Unit)
ambientLight' = runFn2 ambientLight_Impl

-- TODO: unsupported: ambientLight'' :: P5 -> Unsupported(p5.Color) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight''' :: P5 -> Number -> Number -> (Effect Unit)
ambientLight''' = runFn3 ambientLight___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight'''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ambientLight'''' = runFn5 ambientLight____Impl

-- TODO: unsupported: ambientMaterial :: P5 -> Unsupported(Number[]|String|p5.Color) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ambientMaterial' = runFn5 ambientMaterial_Impl

-- TODO: unsupported: angleMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: append :: P5 -> Unsupported(Array) -> Unsupported(Any) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/applyMatrix)
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
applyMatrix = runFn7 applyMatrixImpl

-- TODO: unsupported: arc :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Unsupported(Constant) -> Number -> (Effect Unit)

-- TODO: unsupported: arrayCopy :: P5 -> Unsupported(Array) -> Unsupported(Array) -> Int -> (Effect Unit)

-- TODO: unsupported: arrayCopy' :: P5 -> Unsupported(Array) -> Int -> Unsupported(Array) -> Int -> Int -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/asin)
asin :: P5 -> Number -> Number
asin = runFn2 asinImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan)
atan :: P5 -> Number -> Number
atan = runFn2 atanImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan2)
atan2 :: P5 -> Number -> Number -> Number
atan2 = runFn3 atan2Impl

-- TODO: unsupported: background :: P5 -> Unsupported(p5.Color) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background' :: P5 -> (Array Number) -> (Effect Unit)
background' = runFn2 background_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background'' :: P5 -> String -> Number -> (Effect Unit)
background'' = runFn3 background__Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background''' :: P5 -> Number -> Number -> (Effect Unit)
background''' = runFn3 background___Impl

-- TODO: unsupported: background'''' :: P5 -> Unsupported(p5.Image) -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background''''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
background''''' = runFn5 background_____Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)
beginContour :: P5 -> (Effect Unit)
beginContour = runFn1 beginContourImpl

-- TODO: unsupported: beginShape :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezier)
bezier :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezier = runFn9 bezierImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierDetail)
bezierDetail :: P5 -> Number -> (Effect Unit)
bezierDetail = runFn2 bezierDetailImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierPoint)
bezierPoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
bezierPoint = runFn6 bezierPointImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierTangent)
bezierTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
bezierTangent = runFn6 bezierTangentImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex = runFn7 bezierVertexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/bezierVertex)
bezierVertex' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex' = runFn10 bezierVertex_Impl

-- TODO: unsupported: blend :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: blend' :: P5 -> Unsupported(p5.Image) -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: blendMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: blue :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- TODO: unsupported: boolean :: P5 -> Unsupported(String|Boolean|Number|Array) -> Boolean

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/box)
box :: P5 -> Number -> Number -> Number -> Int -> Int -> (Effect Unit)
box = runFn6 boxImpl

-- TODO: unsupported: brightness :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- TODO: unsupported: byte :: P5 -> Unsupported(String|Boolean|Number) -> Number

-- TODO: unsupported: byte' :: P5 -> Unsupported(Array) -> (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/camera)
camera :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
camera = runFn10 cameraImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ceil)
ceil :: P5 -> Number -> Int
ceil = runFn2 ceilImpl

-- TODO: unsupported: char :: P5 -> Unsupported(String|Number) -> String

-- TODO: unsupported: char' :: P5 -> Unsupported(Array) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/clear)
clear :: P5 -> (Effect Unit)
clear = runFn1 clearImpl

-- TODO: unsupported: color :: P5 -> String -> Unsupported(p5.Color)

-- TODO: unsupported: color' :: P5 -> (Array Number) -> Unsupported(p5.Color)

-- TODO: unsupported: color'' :: P5 -> Unsupported(p5.Color) -> Unsupported(p5.Color)

-- TODO: unsupported: color''' :: P5 -> Number -> Number -> Unsupported(p5.Color)

-- TODO: unsupported: color'''' :: P5 -> Number -> Number -> Number -> Number -> Unsupported(p5.Color)

-- TODO: unsupported: colorMode :: P5 -> Unsupported(Constant) -> Number -> (Effect Unit)

-- TODO: unsupported: colorMode' :: P5 -> Unsupported(Constant) -> Number -> Number -> Number -> Number -> (Effect Unit)

-- TODO: unsupported: concat :: P5 -> Unsupported(Array) -> Unsupported(Array) -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cone)
cone :: P5 -> Number -> Number -> Int -> Int -> Boolean -> (Effect Unit)
cone = runFn6 coneImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/constrain)
constrain :: P5 -> Number -> Number -> Number -> Number
constrain = runFn4 constrainImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/copy)
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy = runFn9 copyImpl

-- TODO: unsupported: copy' :: P5 -> Unsupported(p5.Image|p5.Element) -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cos)
cos :: P5 -> Number -> Number
cos = runFn2 cosImpl

-- TODO: unsupported: createCamera :: P5 -> Unsupported(p5.Camera)

-- TODO: unsupported: createCanvas :: P5 -> Number -> Number -> Unsupported(Constant) -> Unsupported(p5.Renderer)

-- TODO: unsupported: createGraphics :: P5 -> Number -> Number -> Unsupported(Constant) -> Unsupported(p5.Graphics)

-- TODO: unsupported: createImage :: P5 -> Int -> Int -> Unsupported(p5.Image)

-- TODO: unsupported: createNumberDict :: P5 -> Unsupported(Object) -> Unsupported(p5.NumberDict)

-- TODO: unsupported: createNumberDict' :: P5 -> Number -> Number -> Unsupported(p5.NumberDict)

-- TODO: unsupported: createShader :: P5 -> String -> String -> Unsupported(p5.Shader)

-- TODO: unsupported: createStringDict :: P5 -> Unsupported(Object) -> Unsupported(p5.StringDict)

-- TODO: unsupported: createStringDict' :: P5 -> String -> String -> Unsupported(p5.StringDict)

-- TODO: unsupported: createVector :: P5 -> Number -> Number -> Number -> Unsupported(p5.Vector)

-- TODO: unsupported: createWriter :: P5 -> String -> String -> Unsupported(p5.PrintWriter)

-- TODO: unsupported: cursor :: P5 -> Unsupported(String|Constant) -> Number -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curve)
curve :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
curve = runFn9 curveImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveDetail)
curveDetail :: P5 -> Number -> (Effect Unit)
curveDetail = runFn2 curveDetailImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curvePoint)
curvePoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
curvePoint = runFn6 curvePointImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveTangent)
curveTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Number
curveTangent = runFn6 curveTangentImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveTightness)
curveTightness :: P5 -> Number -> (Effect Unit)
curveTightness = runFn2 curveTightnessImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex :: P5 -> Number -> Number -> (Effect Unit)
curveVertex = runFn3 curveVertexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/curveVertex)
curveVertex' :: P5 -> Number -> Number -> Number -> (Effect Unit)
curveVertex' = runFn4 curveVertex_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cylinder)
cylinder :: P5 -> Number -> Number -> Int -> Int -> Boolean -> Boolean -> (Effect Unit)
cylinder = runFn7 cylinderImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/day)
day :: P5 -> Int
day = runFn1 dayImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode :: P5 -> (Effect Unit)
debugMode = runFn1 debugModeImpl

-- TODO: unsupported: debugMode' :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: debugMode'' :: P5 -> Unsupported(Constant) -> Number -> Number -> Number -> Number -> (Effect Unit)

-- TODO: unsupported: debugMode''' :: P5 -> Unsupported(Constant) -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode'''' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
debugMode'''' = runFn10 debugMode____Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/degrees)
degrees :: P5 -> Number -> Number
degrees = runFn2 degreesImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceMoved)
deviceMoved :: P5 -> (Effect Unit)
deviceMoved = runFn1 deviceMovedImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceShaken)
deviceShaken :: P5 -> (Effect Unit)
deviceShaken = runFn1 deviceShakenImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/deviceTurned)
deviceTurned :: P5 -> (Effect Unit)
deviceTurned = runFn1 deviceTurnedImpl

-- TODO: unsupported: directionalLight :: P5 -> Unsupported(Number[]|String|p5.Color) -> Unsupported(p5.Vector) -> (Effect Unit)

-- TODO: unsupported: directionalLight' :: P5 -> Number -> Number -> Number -> Unsupported(p5.Vector) -> (Effect Unit)

-- TODO: unsupported: directionalLight'' :: P5 -> Unsupported(Number[]|String|p5.Color) -> Number -> Number -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight''' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
directionalLight''' = runFn7 directionalLight___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/displayDensity)
displayDensity :: P5 -> Number
displayDensity = runFn1 displayDensityImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist :: P5 -> Number -> Number -> Number -> Number -> Number
dist = runFn5 distImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number
dist' = runFn7 dist_Impl

-- TODO: unsupported: doubleClicked :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: downloadFile :: P5 -> Unsupported(String|Blob) -> String -> String -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ellipse = runFn5 ellipseImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse' :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
ellipse' = runFn6 ellipse_Impl

-- TODO: unsupported: ellipseMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)
ellipsoid :: P5 -> Number -> Number -> Number -> Int -> Int -> (Effect Unit)
ellipsoid = runFn6 ellipsoidImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endContour)
endContour :: P5 -> (Effect Unit)
endContour = runFn1 endContourImpl

-- TODO: unsupported: endShape :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/exp)
exp :: P5 -> Number -> Number
exp = runFn2 expImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill :: P5 -> String -> (Effect Unit)
fill = runFn2 fillImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill' :: P5 -> (Array Number) -> (Effect Unit)
fill' = runFn2 fill_Impl

-- TODO: unsupported: fill'' :: P5 -> Unsupported(p5.Color) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill''' :: P5 -> Number -> Number -> (Effect Unit)
fill''' = runFn3 fill___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill'''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
fill'''' = runFn5 fill____Impl

-- TODO: unsupported: filter :: P5 -> Unsupported(Constant) -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/float)
float :: P5 -> String -> Number
float = runFn2 floatImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/floor)
floor :: P5 -> Number -> Int
floor = runFn2 floorImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)
frameRate :: P5 -> Number
frameRate = runFn1 frameRateImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)
frameRate' :: P5 -> Number -> (Effect Unit)
frameRate' = runFn2 frameRate_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fullscreen)
fullscreen :: P5 -> Boolean -> Boolean
fullscreen = runFn2 fullscreenImpl

-- TODO: unsupported: get :: P5 -> Number -> Number -> Number -> Number -> Unsupported(Number[]|p5.Image)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/getURL)
getURL :: P5 -> String
getURL = runFn1 getURLImpl

-- TODO: unsupported: getURLParams :: P5 -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/getURLPath)
getURLPath :: P5 -> (Array String)
getURLPath = runFn1 getURLPathImpl

-- TODO: unsupported: green :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex :: P5 -> Number -> Number -> String
hex = runFn3 hexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex' :: P5 -> (Array Number) -> Number -> (Array String)
hex' = runFn3 hex_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hour)
hour :: P5 -> Int
hour = runFn1 hourImpl

-- TODO: unsupported: httpDo :: P5 -> String -> Unsupported(Object) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpDo' :: P5 -> String -> String -> String -> Unsupported(Object) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpGet :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpGet' :: P5 -> String -> Unsupported(Object|Boolean) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpGet'' :: P5 -> String -> String -> Unsupported(Object|Boolean) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpPost :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpPost' :: P5 -> String -> Unsupported(Object|Boolean) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: httpPost'' :: P5 -> String -> String -> Unsupported(Object|Boolean) -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Promise)

-- TODO: unsupported: hue :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- TODO: unsupported: image :: P5 -> Unsupported(p5.Image|p5.Element) -> Number -> Number -> Number -> Number -> (Effect Unit)

-- TODO: unsupported: image' :: P5 -> Unsupported(p5.Image|p5.Element) -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)

-- TODO: unsupported: imageMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: int :: P5 -> Unsupported(Array) -> (Array Number)

-- TODO: unsupported: int' :: P5 -> Unsupported(String|Boolean|Number) -> Int -> Number

-- TODO: unsupported: join :: P5 -> Unsupported(Array) -> String -> String

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyIsDown)
keyIsDown :: P5 -> Number -> Boolean
keyIsDown = runFn2 keyIsDownImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyPressed)
keyPressed :: P5 -> (Effect Unit)
keyPressed = runFn1 keyPressedImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyReleased)
keyReleased :: P5 -> (Effect Unit)
keyReleased = runFn1 keyReleasedImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyTyped)
keyTyped :: P5 -> (Effect Unit)
keyTyped = runFn1 keyTypedImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lerp)
lerp :: P5 -> Number -> Number -> Number -> Number
lerp = runFn4 lerpImpl

-- TODO: unsupported: lerpColor :: P5 -> Unsupported(p5.Color) -> Unsupported(p5.Color) -> Number -> Unsupported(p5.Color)

-- TODO: unsupported: lightness :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
line = runFn5 lineImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
line' = runFn7 line_Impl

-- TODO: unsupported: loadBytes :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- TODO: unsupported: loadFont :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(p5.Font)

-- TODO: unsupported: loadImage :: P5 -> String -> Unsupported(function(p5.Image)) -> Unsupported(Function(Event)) -> Unsupported(p5.Image)

-- TODO: unsupported: loadJSON :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object|Array)

-- TODO: unsupported: loadJSON' :: P5 -> String -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object|Array)

-- TODO: unsupported: loadJSON'' :: P5 -> String -> Unsupported(Object) -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object|Array)

-- TODO: unsupported: loadModel :: P5 -> String -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Unsupported(p5.Geometry)

-- TODO: unsupported: loadModel' :: P5 -> String -> Boolean -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Unsupported(p5.Geometry)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)
loadPixels :: P5 -> (Effect Unit)
loadPixels = runFn1 loadPixelsImpl

-- TODO: unsupported: loadShader :: P5 -> String -> String -> Unsupported(p5.Shader)

-- TODO: unsupported: loadStrings :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> (Array String)

-- TODO: unsupported: loadTable :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- TODO: unsupported: loadTable' :: P5 -> String -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- TODO: unsupported: loadXML :: P5 -> String -> Unsupported(Function) -> Unsupported(Function) -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/log)
log :: P5 -> Number -> Number
log = runFn2 logImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loop)
loop :: P5 -> (Effect Unit)
loop = runFn1 loopImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mag)
mag :: P5 -> Number -> Number -> Number
mag = runFn3 magImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/map)
map :: P5 -> Number -> Number -> Number -> Number -> Number -> Boolean -> Number
map = runFn7 mapImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/match)
match :: P5 -> String -> String -> (Array String)
match = runFn3 matchImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/matchAll)
matchAll :: P5 -> String -> String -> (Array String)
matchAll = runFn3 matchAllImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/max)
max :: P5 -> (Array Number) -> Number
max = runFn2 maxImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/max)
max' :: P5 -> Number -> Number -> Number
max' = runFn3 max_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/millis)
millis :: P5 -> Number
millis = runFn1 millisImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min :: P5 -> (Array Number) -> Number
min = runFn2 minImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min' :: P5 -> Number -> Number -> Number
min' = runFn3 min_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/minute)
minute :: P5 -> Int
minute = runFn1 minuteImpl

-- TODO: unsupported: model :: P5 -> Unsupported(p5.Geometry) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/month)
month :: P5 -> Int
month = runFn1 monthImpl

-- TODO: unsupported: mouseClicked :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseDragged :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseMoved :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mousePressed :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseReleased :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: mouseWheel :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: nf :: P5 -> Unsupported(Number|String) -> Unsupported(Integer|String) -> Unsupported(Integer|String) -> String

-- TODO: unsupported: nf' :: P5 -> Unsupported(Array) -> Unsupported(Integer|String) -> Unsupported(Integer|String) -> (Array String)

-- TODO: unsupported: nfc :: P5 -> Unsupported(Number|String) -> Unsupported(Integer|String) -> String

-- TODO: unsupported: nfc' :: P5 -> Unsupported(Array) -> Unsupported(Integer|String) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp :: P5 -> Number -> Int -> Int -> String
nfp = runFn4 nfpImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp' :: P5 -> (Array Number) -> Int -> Int -> (Array String)
nfp' = runFn4 nfp_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfs)
nfs :: P5 -> Number -> Int -> Int -> String
nfs = runFn4 nfsImpl

-- TODO: unsupported: nfs' :: P5 -> Unsupported(Array) -> Int -> Int -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noCanvas)
noCanvas :: P5 -> (Effect Unit)
noCanvas = runFn1 noCanvasImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noCursor)
noCursor :: P5 -> (Effect Unit)
noCursor = runFn1 noCursorImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noDebugMode)
noDebugMode :: P5 -> (Effect Unit)
noDebugMode = runFn1 noDebugModeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noFill)
noFill :: P5 -> (Effect Unit)
noFill = runFn1 noFillImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noLoop)
noLoop :: P5 -> (Effect Unit)
noLoop = runFn1 noLoopImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noSmooth)
noSmooth :: P5 -> (Effect Unit)
noSmooth = runFn1 noSmoothImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noStroke)
noStroke :: P5 -> (Effect Unit)
noStroke = runFn1 noStrokeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noTint)
noTint :: P5 -> (Effect Unit)
noTint = runFn1 noTintImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noise)
noise :: P5 -> Number -> Number -> Number -> Number
noise = runFn4 noiseImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noiseDetail)
noiseDetail :: P5 -> Number -> Number -> (Effect Unit)
noiseDetail = runFn3 noiseDetailImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/noiseSeed)
noiseSeed :: P5 -> Number -> (Effect Unit)
noiseSeed = runFn2 noiseSeedImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/norm)
norm :: P5 -> Number -> Number -> Number -> Number
norm = runFn4 normImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/normalMaterial)
normalMaterial :: P5 -> (Effect Unit)
normalMaterial = runFn1 normalMaterialImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/orbitControl)
orbitControl :: P5 -> Number -> Number -> (Effect Unit)
orbitControl = runFn3 orbitControlImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ortho)
ortho :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
ortho = runFn7 orthoImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/perspective)
perspective :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
perspective = runFn5 perspectiveImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)
pixelDensity :: P5 -> Number
pixelDensity = runFn1 pixelDensityImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pixelDensity)
pixelDensity' :: P5 -> Number -> (Effect Unit)
pixelDensity' = runFn2 pixelDensity_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/plane)
plane :: P5 -> Number -> Number -> Int -> Int -> (Effect Unit)
plane = runFn5 planeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/point)
point :: P5 -> Number -> Number -> Number -> (Effect Unit)
point = runFn4 pointImpl

-- TODO: unsupported: pointLight :: P5 -> Unsupported(Number[]|String|p5.Color) -> Unsupported(p5.Vector) -> (Effect Unit)

-- TODO: unsupported: pointLight' :: P5 -> Number -> Number -> Number -> Unsupported(p5.Vector) -> (Effect Unit)

-- TODO: unsupported: pointLight'' :: P5 -> Unsupported(Number[]|String|p5.Color) -> Number -> Number -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight''' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
pointLight''' = runFn7 pointLight___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pop)
pop :: P5 -> (Effect Unit)
pop = runFn1 popImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pow)
pow :: P5 -> Number -> Number -> Number
pow = runFn3 powImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/preload)
preload :: P5 -> (Effect Unit)
preload = runFn1 preloadImpl

-- TODO: unsupported: print :: P5 -> Unsupported(Any) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/push)
push :: P5 -> (Effect Unit)
push = runFn1 pushImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quad)
quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quad = runFn9 quadImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex = runFn5 quadraticVertexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/quadraticVertex)
quadraticVertex' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex' = runFn7 quadraticVertex_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/radians)
radians :: P5 -> Number -> Number
radians = runFn2 radiansImpl

-- TODO: unsupported: random :: P5 -> Unsupported(Array) -> Unsupported(*)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/random)
random' :: P5 -> Number -> Number -> Number
random' = runFn3 random_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomGaussian)
randomGaussian :: P5 -> Number -> Number -> Number
randomGaussian = runFn3 randomGaussianImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomSeed)
randomSeed :: P5 -> Number -> (Effect Unit)
randomSeed = runFn2 randomSeedImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect :: P5 -> Number -> Number -> Number -> Number -> Int -> Int -> (Effect Unit)
rect = runFn7 rectImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
rect' = runFn9 rect_Impl

-- TODO: unsupported: rectMode :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: red :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/redraw)
redraw :: P5 -> Int -> (Effect Unit)
redraw = runFn2 redrawImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/remove)
remove :: P5 -> (Effect Unit)
remove = runFn1 removeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/resetMatrix)
resetMatrix :: P5 -> (Effect Unit)
resetMatrix = runFn1 resetMatrixImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/resizeCanvas)
resizeCanvas :: P5 -> Number -> Number -> Boolean -> (Effect Unit)
resizeCanvas = runFn4 resizeCanvasImpl

-- TODO: unsupported: reverse :: P5 -> Unsupported(Array) -> Unsupported(Array)

-- TODO: unsupported: rotate :: P5 -> Number -> Unsupported(p5.Vector|Number[]) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateX)
rotateX :: P5 -> Number -> (Effect Unit)
rotateX = runFn2 rotateXImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateY)
rotateY :: P5 -> Number -> (Effect Unit)
rotateY = runFn2 rotateYImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rotateZ)
rotateZ :: P5 -> Number -> (Effect Unit)
rotateZ = runFn2 rotateZImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/round)
round :: P5 -> Number -> Int
round = runFn2 roundImpl

-- TODO: unsupported: saturation :: P5 -> Unsupported(p5.Color|Number[]|String) -> Number

-- TODO: unsupported: save :: P5 -> Unsupported(Object|String) -> String -> Unsupported(Boolean|String) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)
saveCanvas :: P5 -> String -> String -> (Effect Unit)
saveCanvas = runFn3 saveCanvasImpl

-- TODO: unsupported: saveCanvas' :: P5 -> Unsupported(p5.Element|HTMLCanvasElement) -> String -> String -> (Effect Unit)

-- TODO: unsupported: saveFrames :: P5 -> String -> String -> Number -> Number -> Unsupported(Function(Array)) -> (Effect Unit)

-- TODO: unsupported: saveJSON :: P5 -> Unsupported(Array|Object) -> String -> Boolean -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)
saveStrings :: P5 -> (Array String) -> String -> String -> (Effect Unit)
saveStrings = runFn4 saveStringsImpl

-- TODO: unsupported: saveTable :: P5 -> Unsupported(p5.Table) -> String -> String -> (Effect Unit)

-- TODO: unsupported: scale :: P5 -> Unsupported(p5.Vector|Number[]) -> (Effect Unit)

-- TODO: unsupported: scale' :: P5 -> Unsupported(Number|p5.Vector|Number[]) -> Number -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/second)
second :: P5 -> Int
second = runFn1 secondImpl

-- TODO: unsupported: set :: P5 -> Number -> Number -> Unsupported(Number|Number[]|Object) -> (Effect Unit)

-- TODO: unsupported: setAttributes :: P5 -> Unsupported(Object) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setAttributes)
setAttributes' :: P5 -> String -> Boolean -> (Effect Unit)
setAttributes' = runFn3 setAttributes_Impl

-- TODO: unsupported: setCamera :: P5 -> Unsupported(p5.Camera) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setMoveThreshold)
setMoveThreshold :: P5 -> Number -> (Effect Unit)
setMoveThreshold = runFn2 setMoveThresholdImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setShakeThreshold)
setShakeThreshold :: P5 -> Number -> (Effect Unit)
setShakeThreshold = runFn2 setShakeThresholdImpl

-- TODO: unsupported: shader :: P5 -> Unsupported(p5.Shader) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearX)
shearX :: P5 -> Number -> (Effect Unit)
shearX = runFn2 shearXImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearY)
shearY :: P5 -> Number -> (Effect Unit)
shearY = runFn2 shearYImpl

-- TODO: unsupported: shorten :: P5 -> Unsupported(Array) -> Unsupported(Array)

-- TODO: unsupported: shuffle :: P5 -> Unsupported(Array) -> Boolean -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sin)
sin :: P5 -> Number -> Number
sin = runFn2 sinImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/smooth)
smooth :: P5 -> (Effect Unit)
smooth = runFn1 smoothImpl

-- TODO: unsupported: sort :: P5 -> Unsupported(Array) -> Int -> Unsupported(Array)

-- TODO: unsupported: specularMaterial :: P5 -> Unsupported(Number[]|String|p5.Color) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
specularMaterial' = runFn5 specularMaterial_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sphere)
sphere :: P5 -> Number -> Int -> Int -> (Effect Unit)
sphere = runFn4 sphereImpl

-- TODO: unsupported: splice :: P5 -> Unsupported(Array) -> Unsupported(Any) -> Int -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/split)
split :: P5 -> String -> String -> (Array String)
split = runFn3 splitImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/splitTokens)
splitTokens :: P5 -> String -> String -> (Array String)
splitTokens = runFn3 splitTokensImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sq)
sq :: P5 -> Number -> Number
sq = runFn2 sqImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sqrt)
sqrt :: P5 -> Number -> Number
sqrt = runFn2 sqrtImpl

-- TODO: unsupported: str :: P5 -> Unsupported(String|Boolean|Number|Array) -> String

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke :: P5 -> String -> (Effect Unit)
stroke = runFn2 strokeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke' :: P5 -> (Array Number) -> (Effect Unit)
stroke' = runFn2 stroke_Impl

-- TODO: unsupported: stroke'' :: P5 -> Unsupported(p5.Color) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke''' :: P5 -> Number -> Number -> (Effect Unit)
stroke''' = runFn3 stroke___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke'''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
stroke'''' = runFn5 stroke____Impl

-- TODO: unsupported: strokeCap :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- TODO: unsupported: strokeJoin :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)
strokeWeight :: P5 -> Number -> (Effect Unit)
strokeWeight = runFn2 strokeWeightImpl

-- TODO: unsupported: subset :: P5 -> Unsupported(Array) -> Int -> Int -> Unsupported(Array)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tan)
tan :: P5 -> Number -> Number
tan = runFn2 tanImpl

-- TODO: unsupported: text :: P5 -> Unsupported(String|Object|Array|Number|Boolean) -> Number -> Number -> Number -> Number -> (Effect Unit)

-- TODO: unsupported: textAlign :: P5 -> Unsupported(Object)

-- TODO: unsupported: textAlign' :: P5 -> Unsupported(Constant) -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textAscent)
textAscent :: P5 -> Number
textAscent = runFn1 textAscentImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textDescent)
textDescent :: P5 -> Number
textDescent = runFn1 textDescentImpl

-- TODO: unsupported: textFont :: P5 -> Unsupported(Object)

-- TODO: unsupported: textFont' :: P5 -> Unsupported(Object|String) -> Number -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)
textLeading :: P5 -> Number
textLeading = runFn1 textLeadingImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)
textLeading' :: P5 -> Number -> (Effect Unit)
textLeading' = runFn2 textLeading_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textSize)
textSize :: P5 -> Number
textSize = runFn1 textSizeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textSize)
textSize' :: P5 -> Number -> (Effect Unit)
textSize' = runFn2 textSize_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textStyle)
textStyle :: P5 -> String
textStyle = runFn1 textStyleImpl

-- TODO: unsupported: textStyle' :: P5 -> Unsupported(Constant) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textWidth)
textWidth :: P5 -> String -> Number
textWidth = runFn2 textWidthImpl

-- TODO: unsupported: texture :: P5 -> Unsupported(p5.Image|p5.MediaElement|p5.Graphics) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint :: P5 -> String -> (Effect Unit)
tint = runFn2 tintImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint' :: P5 -> (Array Number) -> (Effect Unit)
tint' = runFn2 tint_Impl

-- TODO: unsupported: tint'' :: P5 -> Unsupported(p5.Color) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint''' :: P5 -> Number -> Number -> (Effect Unit)
tint''' = runFn3 tint___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint'''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
tint'''' = runFn5 tint____Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/torus)
torus :: P5 -> Number -> Number -> Int -> Int -> (Effect Unit)
torus = runFn5 torusImpl

-- TODO: unsupported: touchEnded :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: touchMoved :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: touchStarted :: P5 -> Unsupported(Object) -> (Effect Unit)

-- TODO: unsupported: translate :: P5 -> Unsupported(p5.Vector) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/translate)
translate' :: P5 -> Number -> Number -> Number -> (Effect Unit)
translate' = runFn4 translate_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/triangle)
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
triangle = runFn7 triangleImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/trim)
trim :: P5 -> String -> String
trim = runFn2 trimImpl

-- TODO: unsupported: trim' :: P5 -> Unsupported(Array) -> (Array String)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unchar)
unchar :: P5 -> String -> Number
unchar = runFn2 uncharImpl

-- TODO: unsupported: unchar' :: P5 -> Unsupported(Array) -> (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unhex)
unhex :: P5 -> String -> Number
unhex = runFn2 unhexImpl

-- TODO: unsupported: unhex' :: P5 -> Unsupported(Array) -> (Array Number)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)
updatePixels :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
updatePixels = runFn5 updatePixelsImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex :: P5 -> Number -> Number -> (Effect Unit)
vertex = runFn3 vertexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex' :: P5 -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
vertex' = runFn6 vertex_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/windowResized)
windowResized :: P5 -> (Effect Unit)
windowResized = runFn1 windowResizedImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/year)
year :: P5 -> Int
year = runFn1 yearImpl
