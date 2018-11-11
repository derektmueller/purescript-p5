module P5.Generated where

import Data.Function.Uncurried
import Effect (Effect)
import Prelude
import Data.Int
import P5 (P5)

foreign import colorImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import backgroundImpl :: Fn3 P5 String Number (Effect Unit)
foreign import fillImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import strokeImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import ellipseImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import lineImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import pointImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import quadImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import rectImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import triangleImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import strokeWeightImpl :: Fn2 P5 Number (Effect Unit)
foreign import bezierImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import bezierDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import bezierPointImpl :: Fn6 P5 Number Number Number Number Number (Effect Unit)
foreign import bezierTangentImpl :: Fn6 P5 Number Number Number Number Number (Effect Unit)
foreign import curveImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import curveDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import curveTightnessImpl :: Fn2 P5 Number (Effect Unit)
foreign import curvePointImpl :: Fn6 P5 Number Number Number Number Number (Effect Unit)
foreign import curveTangentImpl :: Fn6 P5 Number Number Number Number Number (Effect Unit)
foreign import bezierVertexImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import curveVertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import quadraticVertexImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import vertexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import frameRateImpl :: Fn2 P5 Number (Effect Unit)
foreign import fullscreenImpl :: Fn2 P5 Boolean (Effect Unit)
foreign import pixelDensityImpl :: Fn2 P5 Number (Effect Unit)
foreign import resizeCanvasImpl :: Fn4 P5 Number Number Boolean (Effect Unit)
foreign import redrawImpl :: Fn2 P5 Int (Effect Unit)
foreign import applyMatrixImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import rotateXImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateYImpl :: Fn2 P5 Number (Effect Unit)
foreign import rotateZImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearXImpl :: Fn2 P5 Number (Effect Unit)
foreign import shearYImpl :: Fn2 P5 Number (Effect Unit)
foreign import translateImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import createStringDictImpl :: Fn3 P5 String String (Effect Unit)
foreign import createNumberDictImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import setMoveThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import setShakeThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import keyIsDownImpl :: Fn2 P5 Number (Effect Unit)
foreign import createImageImpl :: Fn3 P5 Int Int (Effect Unit)
foreign import saveCanvasImpl :: Fn3 P5 String String (Effect Unit)
foreign import tintImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import copyImpl :: Fn9 P5 Int Int Int Int Int Int Int Int (Effect Unit)
foreign import getImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import updatePixelsImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import createWriterImpl :: Fn3 P5 String String (Effect Unit)
foreign import saveStringsImpl :: Fn4 P5 (Array String) String String (Effect Unit)
foreign import absImpl :: Fn2 P5 Number (Effect Unit)
foreign import ceilImpl :: Fn2 P5 Number (Effect Unit)
foreign import constrainImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import distImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import expImpl :: Fn2 P5 Number (Effect Unit)
foreign import floorImpl :: Fn2 P5 Number (Effect Unit)
foreign import lerpImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import logImpl :: Fn2 P5 Number (Effect Unit)
foreign import magImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import mapImpl :: Fn7 P5 Number Number Number Number Number Boolean (Effect Unit)
foreign import maxImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import minImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import normImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import powImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import roundImpl :: Fn2 P5 Number (Effect Unit)
foreign import sqImpl :: Fn2 P5 Number (Effect Unit)
foreign import sqrtImpl :: Fn2 P5 Number (Effect Unit)
foreign import createVectorImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import noiseImpl :: Fn4 P5 Number Number Number (Effect Unit)
foreign import noiseDetailImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import noiseSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import randomSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import randomImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import randomGaussianImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import acosImpl :: Fn2 P5 Number (Effect Unit)
foreign import asinImpl :: Fn2 P5 Number (Effect Unit)
foreign import atanImpl :: Fn2 P5 Number (Effect Unit)
foreign import atan2Impl :: Fn3 P5 Number Number (Effect Unit)
foreign import cosImpl :: Fn2 P5 Number (Effect Unit)
foreign import sinImpl :: Fn2 P5 Number (Effect Unit)
foreign import tanImpl :: Fn2 P5 Number (Effect Unit)
foreign import degreesImpl :: Fn2 P5 Number (Effect Unit)
foreign import radiansImpl :: Fn2 P5 Number (Effect Unit)
foreign import _toRadiansImpl :: Fn2 P5 Number (Effect Unit)
foreign import _toDegreesImpl :: Fn2 P5 Number (Effect Unit)
foreign import _fromRadiansImpl :: Fn2 P5 Number (Effect Unit)
foreign import textLeadingImpl :: Fn2 P5 Number (Effect Unit)
foreign import textSizeImpl :: Fn2 P5 Number (Effect Unit)
foreign import textWidthImpl :: Fn2 P5 String (Effect Unit)
foreign import floatImpl :: Fn2 P5 String (Effect Unit)
foreign import uncharImpl :: Fn2 P5 String (Effect Unit)
foreign import hexImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import unhexImpl :: Fn2 P5 String (Effect Unit)
foreign import matchImpl :: Fn3 P5 String String (Effect Unit)
foreign import matchAllImpl :: Fn3 P5 String String (Effect Unit)
foreign import nfpImpl :: Fn4 P5 Number Int Int (Effect Unit)
foreign import nfsImpl :: Fn4 P5 Number Int Int (Effect Unit)
foreign import splitImpl :: Fn3 P5 String String (Effect Unit)
foreign import splitTokensImpl :: Fn3 P5 String String (Effect Unit)
foreign import trimImpl :: Fn2 P5 String (Effect Unit)
foreign import planeImpl :: Fn5 P5 Number Number Int Int (Effect Unit)
foreign import boxImpl :: Fn6 P5 Number Number Number Int Int (Effect Unit)
foreign import sphereImpl :: Fn4 P5 Number Int Int (Effect Unit)
foreign import cylinderImpl :: Fn7 P5 Number Number Int Int Boolean Boolean (Effect Unit)
foreign import coneImpl :: Fn6 P5 Number Number Int Int Boolean (Effect Unit)
foreign import ellipsoidImpl :: Fn6 P5 Number Number Number Int Int (Effect Unit)
foreign import torusImpl :: Fn5 P5 Number Number Int Int (Effect Unit)
foreign import orbitControlImpl :: Fn3 P5 Number Number (Effect Unit)
foreign import debugModeImpl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import _gridImpl :: Fn6 P5 Number Number Number Number Number (Effect Unit)
foreign import _axesIconImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import ambientLightImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import directionalLightImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import pointLightImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import loadShaderImpl :: Fn3 P5 String String (Effect Unit)
foreign import createShaderImpl :: Fn3 P5 String String (Effect Unit)
foreign import ambientMaterialImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import specularMaterialImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import cameraImpl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import perspectiveImpl :: Fn5 P5 Number Number Number Number (Effect Unit)
foreign import orthoImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import setAttributesImpl :: Fn3 P5 String Boolean (Effect Unit)

color :: P5 -> Number -> Number -> (Effect Unit)
color = runFn3 colorImpl

background :: P5 -> String -> Number -> (Effect Unit)
background = runFn3 backgroundImpl

fill :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
fill = runFn5 fillImpl

stroke :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
stroke = runFn5 strokeImpl

ellipse :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ellipse = runFn5 ellipseImpl

line :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
line = runFn5 lineImpl

point :: P5 -> Number -> Number -> Number -> (Effect Unit)
point = runFn4 pointImpl

quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
quad = runFn9 quadImpl

rect :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
rect = runFn9 rectImpl

triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
triangle = runFn7 triangleImpl

strokeWeight :: P5 -> Number -> (Effect Unit)
strokeWeight = runFn2 strokeWeightImpl

bezier :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezier = runFn9 bezierImpl

bezierDetail :: P5 -> Number -> (Effect Unit)
bezierDetail = runFn2 bezierDetailImpl

bezierPoint :: P5 -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierPoint = runFn6 bezierPointImpl

bezierTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierTangent = runFn6 bezierTangentImpl

curve :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
curve = runFn9 curveImpl

curveDetail :: P5 -> Number -> (Effect Unit)
curveDetail = runFn2 curveDetailImpl

curveTightness :: P5 -> Number -> (Effect Unit)
curveTightness = runFn2 curveTightnessImpl

curvePoint :: P5 -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
curvePoint = runFn6 curvePointImpl

curveTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
curveTangent = runFn6 curveTangentImpl

bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
bezierVertex = runFn7 bezierVertexImpl

curveVertex :: P5 -> Number -> Number -> (Effect Unit)
curveVertex = runFn3 curveVertexImpl

quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
quadraticVertex = runFn5 quadraticVertexImpl

vertex :: P5 -> Number -> Number -> (Effect Unit)
vertex = runFn3 vertexImpl

frameRate :: P5 -> Number -> (Effect Unit)
frameRate = runFn2 frameRateImpl

fullscreen :: P5 -> Boolean -> (Effect Unit)
fullscreen = runFn2 fullscreenImpl

pixelDensity :: P5 -> Number -> (Effect Unit)
pixelDensity = runFn2 pixelDensityImpl

resizeCanvas :: P5 -> Number -> Number -> Boolean -> (Effect Unit)
resizeCanvas = runFn4 resizeCanvasImpl

redraw :: P5 -> Int -> (Effect Unit)
redraw = runFn2 redrawImpl

applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
applyMatrix = runFn7 applyMatrixImpl

rotateX :: P5 -> Number -> (Effect Unit)
rotateX = runFn2 rotateXImpl

rotateY :: P5 -> Number -> (Effect Unit)
rotateY = runFn2 rotateYImpl

rotateZ :: P5 -> Number -> (Effect Unit)
rotateZ = runFn2 rotateZImpl

shearX :: P5 -> Number -> (Effect Unit)
shearX = runFn2 shearXImpl

shearY :: P5 -> Number -> (Effect Unit)
shearY = runFn2 shearYImpl

translate :: P5 -> Number -> Number -> Number -> (Effect Unit)
translate = runFn4 translateImpl

createStringDict :: P5 -> String -> String -> (Effect Unit)
createStringDict = runFn3 createStringDictImpl

createNumberDict :: P5 -> Number -> Number -> (Effect Unit)
createNumberDict = runFn3 createNumberDictImpl

setMoveThreshold :: P5 -> Number -> (Effect Unit)
setMoveThreshold = runFn2 setMoveThresholdImpl

setShakeThreshold :: P5 -> Number -> (Effect Unit)
setShakeThreshold = runFn2 setShakeThresholdImpl

keyIsDown :: P5 -> Number -> (Effect Unit)
keyIsDown = runFn2 keyIsDownImpl

createImage :: P5 -> Int -> Int -> (Effect Unit)
createImage = runFn3 createImageImpl

saveCanvas :: P5 -> String -> String -> (Effect Unit)
saveCanvas = runFn3 saveCanvasImpl

tint :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
tint = runFn5 tintImpl

copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy = runFn9 copyImpl

get :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
get = runFn5 getImpl

updatePixels :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
updatePixels = runFn5 updatePixelsImpl

createWriter :: P5 -> String -> String -> (Effect Unit)
createWriter = runFn3 createWriterImpl

saveStrings :: P5 -> (Array String) -> String -> String -> (Effect Unit)
saveStrings = runFn4 saveStringsImpl

abs :: P5 -> Number -> (Effect Unit)
abs = runFn2 absImpl

ceil :: P5 -> Number -> (Effect Unit)
ceil = runFn2 ceilImpl

constrain :: P5 -> Number -> Number -> Number -> (Effect Unit)
constrain = runFn4 constrainImpl

dist :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
dist = runFn5 distImpl

exp :: P5 -> Number -> (Effect Unit)
exp = runFn2 expImpl

floor :: P5 -> Number -> (Effect Unit)
floor = runFn2 floorImpl

lerp :: P5 -> Number -> Number -> Number -> (Effect Unit)
lerp = runFn4 lerpImpl

log :: P5 -> Number -> (Effect Unit)
log = runFn2 logImpl

mag :: P5 -> Number -> Number -> (Effect Unit)
mag = runFn3 magImpl

map :: P5 -> Number -> Number -> Number -> Number -> Number -> Boolean -> (Effect Unit)
map = runFn7 mapImpl

max :: P5 -> Number -> Number -> (Effect Unit)
max = runFn3 maxImpl

min :: P5 -> Number -> Number -> (Effect Unit)
min = runFn3 minImpl

norm :: P5 -> Number -> Number -> Number -> (Effect Unit)
norm = runFn4 normImpl

pow :: P5 -> Number -> Number -> (Effect Unit)
pow = runFn3 powImpl

round :: P5 -> Number -> (Effect Unit)
round = runFn2 roundImpl

sq :: P5 -> Number -> (Effect Unit)
sq = runFn2 sqImpl

sqrt :: P5 -> Number -> (Effect Unit)
sqrt = runFn2 sqrtImpl

createVector :: P5 -> Number -> Number -> Number -> (Effect Unit)
createVector = runFn4 createVectorImpl

noise :: P5 -> Number -> Number -> Number -> (Effect Unit)
noise = runFn4 noiseImpl

noiseDetail :: P5 -> Number -> Number -> (Effect Unit)
noiseDetail = runFn3 noiseDetailImpl

noiseSeed :: P5 -> Number -> (Effect Unit)
noiseSeed = runFn2 noiseSeedImpl

randomSeed :: P5 -> Number -> (Effect Unit)
randomSeed = runFn2 randomSeedImpl

random :: P5 -> Number -> Number -> (Effect Unit)
random = runFn3 randomImpl

randomGaussian :: P5 -> Number -> Number -> (Effect Unit)
randomGaussian = runFn3 randomGaussianImpl

acos :: P5 -> Number -> (Effect Unit)
acos = runFn2 acosImpl

asin :: P5 -> Number -> (Effect Unit)
asin = runFn2 asinImpl

atan :: P5 -> Number -> (Effect Unit)
atan = runFn2 atanImpl

atan2 :: P5 -> Number -> Number -> (Effect Unit)
atan2 = runFn3 atan2Impl

cos :: P5 -> Number -> (Effect Unit)
cos = runFn2 cosImpl

sin :: P5 -> Number -> (Effect Unit)
sin = runFn2 sinImpl

tan :: P5 -> Number -> (Effect Unit)
tan = runFn2 tanImpl

degrees :: P5 -> Number -> (Effect Unit)
degrees = runFn2 degreesImpl

radians :: P5 -> Number -> (Effect Unit)
radians = runFn2 radiansImpl

_toRadians :: P5 -> Number -> (Effect Unit)
_toRadians = runFn2 _toRadiansImpl

_toDegrees :: P5 -> Number -> (Effect Unit)
_toDegrees = runFn2 _toDegreesImpl

_fromRadians :: P5 -> Number -> (Effect Unit)
_fromRadians = runFn2 _fromRadiansImpl

textLeading :: P5 -> Number -> (Effect Unit)
textLeading = runFn2 textLeadingImpl

textSize :: P5 -> Number -> (Effect Unit)
textSize = runFn2 textSizeImpl

textWidth :: P5 -> String -> (Effect Unit)
textWidth = runFn2 textWidthImpl

float :: P5 -> String -> (Effect Unit)
float = runFn2 floatImpl

unchar :: P5 -> String -> (Effect Unit)
unchar = runFn2 uncharImpl

hex :: P5 -> Number -> Number -> (Effect Unit)
hex = runFn3 hexImpl

unhex :: P5 -> String -> (Effect Unit)
unhex = runFn2 unhexImpl

match :: P5 -> String -> String -> (Effect Unit)
match = runFn3 matchImpl

matchAll :: P5 -> String -> String -> (Effect Unit)
matchAll = runFn3 matchAllImpl

nfp :: P5 -> Number -> Int -> Int -> (Effect Unit)
nfp = runFn4 nfpImpl

nfs :: P5 -> Number -> Int -> Int -> (Effect Unit)
nfs = runFn4 nfsImpl

split :: P5 -> String -> String -> (Effect Unit)
split = runFn3 splitImpl

splitTokens :: P5 -> String -> String -> (Effect Unit)
splitTokens = runFn3 splitTokensImpl

trim :: P5 -> String -> (Effect Unit)
trim = runFn2 trimImpl

plane :: P5 -> Number -> Number -> Int -> Int -> (Effect Unit)
plane = runFn5 planeImpl

box :: P5 -> Number -> Number -> Number -> Int -> Int -> (Effect Unit)
box = runFn6 boxImpl

sphere :: P5 -> Number -> Int -> Int -> (Effect Unit)
sphere = runFn4 sphereImpl

cylinder :: P5 -> Number -> Number -> Int -> Int -> Boolean -> Boolean -> (Effect Unit)
cylinder = runFn7 cylinderImpl

cone :: P5 -> Number -> Number -> Int -> Int -> Boolean -> (Effect Unit)
cone = runFn6 coneImpl

ellipsoid :: P5 -> Number -> Number -> Number -> Int -> Int -> (Effect Unit)
ellipsoid = runFn6 ellipsoidImpl

torus :: P5 -> Number -> Number -> Int -> Int -> (Effect Unit)
torus = runFn5 torusImpl

orbitControl :: P5 -> Number -> Number -> (Effect Unit)
orbitControl = runFn3 orbitControlImpl

debugMode :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
debugMode = runFn10 debugModeImpl

_grid :: P5 -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
_grid = runFn6 _gridImpl

_axesIcon :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
_axesIcon = runFn5 _axesIconImpl

ambientLight :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ambientLight = runFn5 ambientLightImpl

directionalLight :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
directionalLight = runFn7 directionalLightImpl

pointLight :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
pointLight = runFn7 pointLightImpl

loadShader :: P5 -> String -> String -> (Effect Unit)
loadShader = runFn3 loadShaderImpl

createShader :: P5 -> String -> String -> (Effect Unit)
createShader = runFn3 createShaderImpl

ambientMaterial :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
ambientMaterial = runFn5 ambientMaterialImpl

specularMaterial :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
specularMaterial = runFn5 specularMaterialImpl

camera :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
camera = runFn10 cameraImpl

perspective :: P5 -> Number -> Number -> Number -> Number -> (Effect Unit)
perspective = runFn5 perspectiveImpl

ortho :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
ortho = runFn7 orthoImpl

setAttributes :: P5 -> String -> Boolean -> (Effect Unit)
setAttributes = runFn3 setAttributesImpl
