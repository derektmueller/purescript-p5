module P5.Generated
  ( abs
  , acos
  , ambientLight
  , ambientLight'
  , ambientLight''
  , ambientLight'''
  , ambientMaterial
  , applyMatrix
  , asin
  , atan
  , atan2
  , background
  , background'
  , background''
  , background'''
  , bezier
  , bezierDetail
  , bezierPoint
  , bezierTangent
  , bezierVertex
  , bezierVertex'
  , box
  , camera
  , ceil
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
  , debugMode
  , degrees
  , directionalLight
  , dist
  , dist'
  , ellipse
  , ellipse'
  , ellipsoid
  , exp
  , fill
  , fill'
  , fill''
  , fill'''
  , float
  , floor
  , frameRate
  , fullscreen
  , hex
  , hex'
  , keyIsDown
  , lerp
  , line
  , line'
  , log
  , mag
  , map
  , match
  , matchAll
  , max
  , max'
  , min
  , min'
  , nfp
  , nfp'
  , nfs
  , noise
  , noiseDetail
  , noiseSeed
  , norm
  , orbitControl
  , ortho
  , perspective
  , pixelDensity
  , plane
  , point
  , pointLight
  , pow
  , quad
  , quadraticVertex
  , quadraticVertex'
  , radians
  , random
  , randomGaussian
  , randomSeed
  , rect
  , rect'
  , redraw
  , resizeCanvas
  , rotateX
  , rotateY
  , rotateZ
  , round
  , saveCanvas
  , saveStrings
  , setAttributes
  , setMoveThreshold
  , setShakeThreshold
  , shearX
  , shearY
  , sin
  , specularMaterial
  , sphere
  , split
  , splitTokens
  , sq
  , sqrt
  , stroke
  , stroke'
  , stroke''
  , stroke'''
  , strokeWeight
  , tan
  , textLeading
  , textSize
  , textWidth
  , tint
  , tint'
  , tint''
  , tint'''
  , torus
  , translate
  , triangle
  , trim
  , unchar
  , unhex
  , updatePixels
  , vertex
  , vertex'
  ) where

import Data.Function.Uncurried
import Effect (Effect)
import Prelude
import Data.Int
import P5 (P5)

foreign import absImpl :: Fn2 P5 Number Number
foreign import acosImpl :: Fn2 P5 Number Number
foreign import ambientLightImpl :: Fn2 P5 String (Effect Unit)
foreign import ambientLight_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import ambientLight__Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import ambientLight___Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import ambientMaterialImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import applyMatrixImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import asinImpl :: Fn2 P5 Number Number
foreign import atanImpl :: Fn2 P5 Number Number
foreign import atan2Impl :: Fn3 P5 Number Number Number
foreign import backgroundImpl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import background_Impl :: Fn3 P5 String Number (Effect Unit)
foreign import background__Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import background___Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import bezierImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import bezierDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import bezierPointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierVertexImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import bezierVertex_Impl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import boxImpl :: Fn6 P5 Number Number Number Int Int (Effect Unit)
foreign import cameraImpl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import ceilImpl :: Fn2 P5 Number Int
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
foreign import debugModeImpl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import degreesImpl :: Fn2 P5 Number Number
foreign import directionalLightImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import distImpl :: Fn5 P5 Number Number Number Number Number
foreign import dist_Impl :: Fn7 P5 Number Number Number Number Number Number Number
foreign import ellipseImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import ellipse_Impl :: Fn6 P5 Number Number Number Number Int (Effect Unit)
foreign import ellipsoidImpl :: Fn6 P5 Number Number Number Int Int (Effect Unit)
foreign import expImpl :: Fn2 P5 Number Number
foreign import fillImpl :: Fn2 P5 String (Effect Unit)
foreign import fill_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import fill__Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import fill___Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import floatImpl :: Fn2 P5 String Number
foreign import floorImpl :: Fn2 P5 Number Int
foreign import frameRateImpl :: Fn2 P5 Number (Effect Unit)
foreign import fullscreenImpl :: Fn2 P5 Boolean Boolean
foreign import hexImpl :: Fn3 P5 Number Number String
foreign import hex_Impl :: Fn3 P5 (Array Number) Number (Array String)
foreign import keyIsDownImpl :: Fn2 P5 Number Boolean
foreign import lerpImpl :: Fn4 P5 Number Number Number Number
foreign import lineImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import line_Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import logImpl :: Fn2 P5 Number Number
foreign import magImpl :: Fn3 P5 Number Number Number
foreign import mapImpl :: Fn7 P5 Number Number Number Number Number Boolean Number
foreign import matchImpl :: Fn3 P5 String String (Array String)
foreign import matchAllImpl :: Fn3 P5 String String (Array String)
foreign import maxImpl :: Fn2 P5 (Array Number) Number
foreign import max_Impl :: Fn3 P5 Number Number Number
foreign import minImpl :: Fn2 P5 (Array Number) Number
foreign import min_Impl :: Fn3 P5 Number Number Number
foreign import nfpImpl :: Fn4 P5 Number Int Int String
foreign import nfp_Impl :: Fn4 P5 (Array Number) Int Int (Array String)
foreign import nfsImpl :: Fn4 P5 Number Int Int String
foreign import noiseImpl :: Fn4 P5 Number Number Number Number
foreign import noiseDetailImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import noiseSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import normImpl :: Fn4 P5 Number Number Number Number
foreign import orbitControlImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import orthoImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import perspectiveImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import pixelDensityImpl :: Fn2 P5 Number (Effect Unit)
foreign import planeImpl :: Fn5 P5 Number Number Int Int (Effect Unit)
foreign import pointImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import pointLightImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import powImpl :: Fn3 P5 Number Number Number
foreign import quadImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import quadraticVertexImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import quadraticVertex_Impl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import radiansImpl :: Fn2 P5 Number Number
foreign import randomImpl :: Fn3 P5 Number Number Number
foreign import randomGaussianImpl :: Fn3 P5 Number Number Number
foreign import randomSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import rectImpl :: Fn7 P5 Number Number Number Number Int Int (Effect Unit)
foreign import rect_Impl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import redrawImpl :: Fn2 P5 Int (Effect Unit)
foreign import resizeCanvasImpl :: Fn4 P5 Number Number Boolean (Effect Unit)
foreign import rotateXImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateYImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateZImpl :: Fn2 P5 Number (Effect Unit)
foreign import roundImpl :: Fn2 P5 Number Int
foreign import saveCanvasImpl :: Fn3 P5 String String (Effect Unit)
foreign import saveStringsImpl :: Fn4 P5 (Array String) String String (Effect Unit)
foreign import setAttributesImpl :: Fn3 P5 String Boolean (Effect Unit)
foreign import setMoveThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import setShakeThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearXImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearYImpl :: Fn2 P5 Number (Effect Unit)
foreign import sinImpl :: Fn2 P5 Number Number
foreign import specularMaterialImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import sphereImpl :: Fn4 P5 Number Int Int (Effect Unit)
foreign import splitImpl :: Fn3 P5 String String (Array String)
foreign import splitTokensImpl :: Fn3 P5 String String (Array String)
foreign import sqImpl :: Fn2 P5 Number Number
foreign import sqrtImpl :: Fn2 P5 Number Number
foreign import strokeImpl :: Fn2 P5 String (Effect Unit)
foreign import stroke_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import stroke__Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import stroke___Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import strokeWeightImpl :: Fn2 P5 Number (Effect Unit)
foreign import tanImpl :: Fn2 P5 Number Number
foreign import textLeadingImpl :: Fn2 P5 Number (Effect Unit)
foreign import textSizeImpl :: Fn2 P5 Number (Effect Unit)
foreign import textWidthImpl :: Fn2 P5 String Number
foreign import tintImpl :: Fn2 P5 String (Effect Unit)
foreign import tint_Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import tint__Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import tint___Impl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import torusImpl :: Fn5 P5 Number Number Int Int (Effect Unit)
foreign import translateImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import triangleImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import trimImpl :: Fn2 P5 String String
foreign import uncharImpl :: Fn2 P5 String Number
foreign import unhexImpl :: Fn2 P5 String Number
foreign import updatePixelsImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import vertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import vertex_Impl :: Fn6 P5 Number Number Number Number Number (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/abs)
abs :: P5 -> Number -> Number
abs = runFn2 absImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/acos)
acos :: P5 -> Number -> Number
acos = runFn2 acosImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight :: P5 -> String -> (Effect Unit)
ambientLight = runFn2 ambientLightImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight' :: P5 -> (Array Number) -> (Effect Unit)
ambientLight' = runFn2 ambientLight_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight'' :: P5 -> Number -> Number -> (Effect Unit)
ambientLight'' = runFn3 ambientLight__Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)
ambientLight''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ambientLight''' = runFn5 ambientLight___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)
ambientMaterial :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ambientMaterial = runFn5 ambientMaterialImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/applyMatrix)
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
applyMatrix = runFn7 applyMatrixImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/asin)
asin :: P5 -> Number -> Number
asin = runFn2 asinImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan)
atan :: P5 -> Number -> Number
atan = runFn2 atanImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/atan2)
atan2 :: P5 -> Number -> Number -> Number
atan2 = runFn3 atan2Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background :: P5 -> (Array Number) -> (Effect Unit)
background = runFn2 backgroundImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background' :: P5 -> String -> Number -> (Effect Unit)
background' = runFn3 background_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background'' :: P5 -> Number -> Number -> (Effect Unit)
background'' = runFn3 background__Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
background''' = runFn5 background___Impl

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/box)
box :: P5 -> Number -> Number -> Number -> Int -> Int -> (Effect Unit)
box = runFn6 boxImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/camera)
camera :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
camera = runFn10 cameraImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ceil)
ceil :: P5 -> Number -> Int
ceil = runFn2 ceilImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cone)
cone :: P5 -> Number -> Number -> Int -> Int -> Boolean -> (Effect Unit)
cone = runFn6 coneImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/constrain)
constrain :: P5 -> Number -> Number -> Number -> Number
constrain = runFn4 constrainImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/copy)
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy = runFn9 copyImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cos)
cos :: P5 -> Number -> Number
cos = runFn2 cosImpl

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
debugMode = runFn10 debugModeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/degrees)
degrees :: P5 -> Number -> Number
degrees = runFn2 degreesImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)
directionalLight :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
directionalLight = runFn7 directionalLightImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist :: P5 -> Number -> Number -> Number -> Number -> Number
dist = runFn5 distImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/dist)
dist' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number
dist' = runFn7 dist_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ellipse = runFn5 ellipseImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse' :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
ellipse' = runFn6 ellipse_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)
ellipsoid :: P5 -> Number -> Number -> Number -> Int -> Int -> (Effect Unit)
ellipsoid = runFn6 ellipsoidImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/exp)
exp :: P5 -> Number -> Number
exp = runFn2 expImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill :: P5 -> String -> (Effect Unit)
fill = runFn2 fillImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill' :: P5 -> (Array Number) -> (Effect Unit)
fill' = runFn2 fill_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill'' :: P5 -> Number -> Number -> (Effect Unit)
fill'' = runFn3 fill__Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fill)
fill''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
fill''' = runFn5 fill___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/float)
float :: P5 -> String -> Number
float = runFn2 floatImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/floor)
floor :: P5 -> Number -> Int
floor = runFn2 floorImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/frameRate)
frameRate :: P5 -> Number -> (Effect Unit)
frameRate = runFn2 frameRateImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/fullscreen)
fullscreen :: P5 -> Boolean -> Boolean
fullscreen = runFn2 fullscreenImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex :: P5 -> Number -> Number -> String
hex = runFn3 hexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hex)
hex' :: P5 -> (Array Number) -> Number -> (Array String)
hex' = runFn3 hex_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/keyIsDown)
keyIsDown :: P5 -> Number -> Boolean
keyIsDown = runFn2 keyIsDownImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/lerp)
lerp :: P5 -> Number -> Number -> Number -> Number
lerp = runFn4 lerpImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
line = runFn5 lineImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/line)
line' :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
line' = runFn7 line_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/log)
log :: P5 -> Number -> Number
log = runFn2 logImpl

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min :: P5 -> (Array Number) -> Number
min = runFn2 minImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/min)
min' :: P5 -> Number -> Number -> Number
min' = runFn3 min_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp :: P5 -> Number -> Int -> Int -> String
nfp = runFn4 nfpImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp' :: P5 -> (Array Number) -> Int -> Int -> (Array String)
nfp' = runFn4 nfp_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfs)
nfs :: P5 -> Number -> Int -> Int -> String
nfs = runFn4 nfsImpl

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
pixelDensity :: P5 -> Number -> (Effect Unit)
pixelDensity = runFn2 pixelDensityImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/plane)
plane :: P5 -> Number -> Number -> Int -> Int -> (Effect Unit)
plane = runFn5 planeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/point)
point :: P5 -> Number -> Number -> Number -> (Effect Unit)
point = runFn4 pointImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)
pointLight :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
pointLight = runFn7 pointLightImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/pow)
pow :: P5 -> Number -> Number -> Number
pow = runFn3 powImpl

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/random)
random :: P5 -> Number -> Number -> Number
random = runFn3 randomImpl

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/redraw)
redraw :: P5 -> Int -> (Effect Unit)
redraw = runFn2 redrawImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/resizeCanvas)
resizeCanvas :: P5 -> Number -> Number -> Boolean -> (Effect Unit)
resizeCanvas = runFn4 resizeCanvasImpl

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)
saveCanvas :: P5 -> String -> String -> (Effect Unit)
saveCanvas = runFn3 saveCanvasImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)
saveStrings :: P5 -> (Array String) -> String -> String -> (Effect Unit)
saveStrings = runFn4 saveStringsImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setAttributes)
setAttributes :: P5 -> String -> Boolean -> (Effect Unit)
setAttributes = runFn3 setAttributesImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setMoveThreshold)
setMoveThreshold :: P5 -> Number -> (Effect Unit)
setMoveThreshold = runFn2 setMoveThresholdImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setShakeThreshold)
setShakeThreshold :: P5 -> Number -> (Effect Unit)
setShakeThreshold = runFn2 setShakeThresholdImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearX)
shearX :: P5 -> Number -> (Effect Unit)
shearX = runFn2 shearXImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearY)
shearY :: P5 -> Number -> (Effect Unit)
shearY = runFn2 shearYImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sin)
sin :: P5 -> Number -> Number
sin = runFn2 sinImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
specularMaterial = runFn5 specularMaterialImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sphere)
sphere :: P5 -> Number -> Int -> Int -> (Effect Unit)
sphere = runFn4 sphereImpl

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke :: P5 -> String -> (Effect Unit)
stroke = runFn2 strokeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke' :: P5 -> (Array Number) -> (Effect Unit)
stroke' = runFn2 stroke_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke'' :: P5 -> Number -> Number -> (Effect Unit)
stroke'' = runFn3 stroke__Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/stroke)
stroke''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
stroke''' = runFn5 stroke___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)
strokeWeight :: P5 -> Number -> (Effect Unit)
strokeWeight = runFn2 strokeWeightImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tan)
tan :: P5 -> Number -> Number
tan = runFn2 tanImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textLeading)
textLeading :: P5 -> Number -> (Effect Unit)
textLeading = runFn2 textLeadingImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textSize)
textSize :: P5 -> Number -> (Effect Unit)
textSize = runFn2 textSizeImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textWidth)
textWidth :: P5 -> String -> Number
textWidth = runFn2 textWidthImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint :: P5 -> String -> (Effect Unit)
tint = runFn2 tintImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint' :: P5 -> (Array Number) -> (Effect Unit)
tint' = runFn2 tint_Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint'' :: P5 -> Number -> Number -> (Effect Unit)
tint'' = runFn3 tint__Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tint)
tint''' :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
tint''' = runFn5 tint___Impl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/torus)
torus :: P5 -> Number -> Number -> Int -> Int -> (Effect Unit)
torus = runFn5 torusImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/translate)
translate :: P5 -> Number -> Number -> Number -> (Effect Unit)
translate = runFn4 translateImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/triangle)
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
triangle = runFn7 triangleImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/trim)
trim :: P5 -> String -> String
trim = runFn2 trimImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unchar)
unchar :: P5 -> String -> Number
unchar = runFn2 uncharImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unhex)
unhex :: P5 -> String -> Number
unhex = runFn2 unhexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)
updatePixels :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
updatePixels = runFn5 updatePixelsImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex :: P5 -> Number -> Number -> (Effect Unit)
vertex = runFn3 vertexImpl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/vertex)
vertex' :: P5 -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
vertex' = runFn6 vertex_Impl
