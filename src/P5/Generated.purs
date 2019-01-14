module P5.Generated
  ( ArrayNumberOrStringOrColor(..)
  , BooleanOrNumberOrString(..)
  , NumberOrString(..)
  , ElementOrImage(..)
  , CursorTypeOrString(..)
  , ArrayNumberOrImage(..)
  , IntOrString(..)
  , ArrayNumberOrVector(..)
  , NumberOrArrayNumberOrVector(..)
  , NumberOrArrayNumberOrColorOrImage(..)
  , GraphicsOrImageOrMediaElement(..)
  , AngleMode(..)
  , ArcMode(..)
  , BeginShapeKind(..)
  , BlendMode(..)
  , BlendMode(..)
  , ColorMode(..)
  , CreateGraphicsRenderer(..)
  , CursorType(..)
  , DebugMode(..)
  , EllipseMode(..)
  , EndShapeMode(..)
  , FilterType(..)
  , ImageMode(..)
  , RectMode(..)
  , StrokeCap(..)
  , StrokeJoin(..)
  , TextAlignHorizAlign(..)
  , TextAlignVertAlign(..)
  , TextStyle(..)
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
  , angleMode
  , applyMatrix
  , arc
  , asin
  , atan
  , atan2
  , background
  , background2
  , background3
  , background4
  , background5
  , background6
  , beginContour
  , beginShape
  , bezier
  , bezierDetail
  , bezierPoint
  , bezierTangent
  , bezierVertex
  , bezierVertex2
  , blend
  , blendMode
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
  , colorMode
  , colorMode2
  , cone
  , constrain
  , copy
  , copy2
  , cos
  , createCamera
  , createGraphics
  , createImage
  , createShader
  , createStringDict2
  , createVector
  , createWriter
  , cursor
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
  , debugMode2
  , debugMode3
  , debugMode4
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
  , doubleClicked
  , ellipse
  , ellipse2
  , ellipseMode
  , ellipsoid
  , endContour
  , endShape
  , exp
  , fill
  , fill2
  , fill3
  , fill4
  , fill5
  , filter
  , float
  , floor
  , frameRate
  , frameRate2
  , fullscreen
  , get
  , getURL
  , getURLPath
  , green
  , hex
  , hex2
  , hour
  , hue
  , image
  , image2
  , imageMode
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
  , loadFont
  , loadPixels
  , loadShader
  , loadStrings
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
  , model
  , month
  , mouseClicked
  , mouseDragged
  , mouseMoved
  , mousePressed
  , mouseReleased
  , mouseWheel
  , nf
  , nfc
  , nfc2
  , nfp
  , nfp2
  , nfs
  , nfs2
  , noCanvas
  , noCursor
  , noDebugMode
  , noFill
  , noLoop
  , noSmooth
  , noStroke
  , noTint
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
  , randomSeed
  , rect
  , rect2
  , rectMode
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
  , saveTable
  , scale
  , scale2
  , second
  , set
  , setAttributes2
  , setCamera
  , setMoveThreshold
  , setShakeThreshold
  , shader
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
  , str
  , stroke
  , stroke2
  , stroke3
  , stroke4
  , stroke5
  , strokeCap
  , strokeJoin
  , strokeWeight
  , tan
  , textAlign2
  , textAscent
  , textDescent
  , textLeading
  , textLeading2
  , textSize
  , textSize2
  , textStyle
  , textStyle2
  , textWidth
  , texture
  , tint
  , tint2
  , tint3
  , tint4
  , tint5
  , torus
  , touchEnded
  , touchMoved
  , touchStarted
  , translate
  , translate2
  , triangle
  , trim
  , unchar
  , unchar2
  , unhex
  , unhex2
  , updatePixels
  , vertex
  , vertex2
  , windowResized
  , year
  ) where

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn9, runFn1, runFn10, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn9)
import Effect (Effect)
import Prelude (Unit)
import P5.Types (P5, Vector, Color, Element, Image, Graphics, MediaElement, Shader, Camera, Table, PrintWriter, StringDict, Font, Geometry)
import Foreign (Foreign, unsafeToForeign)
import Data.Maybe (Maybe, maybe)
import Foreign.NullOrUndefined (undefined)

data ArrayNumberOrStringOrColor = ArrayNumberOrStringOrColorArrayNumber (Array Number) | ArrayNumberOrStringOrColorString String | ArrayNumberOrStringOrColorColor Color
data BooleanOrNumberOrString = BooleanOrNumberOrStringBoolean Boolean | BooleanOrNumberOrStringNumber Number | BooleanOrNumberOrStringString String
data NumberOrString = NumberOrStringNumber Number | NumberOrStringString String
data ElementOrImage = ElementOrImageElement Element | ElementOrImageImage Image
data CursorTypeOrString = CursorTypeOrStringCursorType CursorType | CursorTypeOrStringString String
data ArrayNumberOrImage = ArrayNumberOrImageArrayNumber (Array Number) | ArrayNumberOrImageImage Image
data IntOrString = IntOrStringInt Int | IntOrStringString String
data ArrayNumberOrVector = ArrayNumberOrVectorArrayNumber (Array Number) | ArrayNumberOrVectorVector Vector
data NumberOrArrayNumberOrVector = NumberOrArrayNumberOrVectorNumber Number | NumberOrArrayNumberOrVectorArrayNumber (Array Number) | NumberOrArrayNumberOrVectorVector Vector
data NumberOrArrayNumberOrColorOrImage = NumberOrArrayNumberOrColorOrImageNumber Number | NumberOrArrayNumberOrColorOrImageArrayNumber (Array Number) | NumberOrArrayNumberOrColorOrImageColor Color | NumberOrArrayNumberOrColorOrImageImage Image
data GraphicsOrImageOrMediaElement = GraphicsOrImageOrMediaElementGraphics Graphics | GraphicsOrImageOrMediaElementImage Image | GraphicsOrImageOrMediaElementMediaElement MediaElement
data AngleMode = ANGLE_MODE_RADIANS | ANGLE_MODE_DEGREES
data ArcMode = ARC_MODE_CHORD | ARC_MODE_PIE | ARC_MODE_OPEN
data BeginShapeKind = BEGIN_SHAPE_KIND_POINTS | BEGIN_SHAPE_KIND_LINES | BEGIN_SHAPE_KIND_TRIANGLES | BEGIN_SHAPE_KIND_TRIANGLE_FAN | BEGIN_SHAPE_KIND_TRIANGLE_STRIP | BEGIN_SHAPE_KIND_QUADS | BEGIN_SHAPE_KIND_QUAD_STRIP
data BlendMode = BLEND_MODE_BLEND | BLEND_MODE_DARKEST | BLEND_MODE_LIGHTEST | BLEND_MODE_DIFFERENCE | BLEND_MODE_MULTIPLY | BLEND_MODE_EXCLUSION | BLEND_MODE_SCREEN | BLEND_MODE_REPLACE | BLEND_MODE_OVERLAY | BLEND_MODE_HARD_LIGHT | BLEND_MODE_SOFT_LIGHT | BLEND_MODE_DODGE | BLEND_MODE_BURN | BLEND_MODE_ADD | BLEND_MODE_NORMAL
data ColorMode = COLOR_MODE_RGB | COLOR_MODE_HSB | COLOR_MODE_HSL
data CreateGraphicsRenderer = CREATE_GRAPHICS_RENDERER_WEBGL
data CursorType = CURSOR_TYPE_ARROW | CURSOR_TYPE_CROSS | CURSOR_TYPE_HAND | CURSOR_TYPE_MOVE | CURSOR_TYPE_TEXT | CURSOR_TYPE_WAIT
data DebugMode = DEBUG_MODE_GRID | DEBUG_MODE_AXES
data EllipseMode = ELLIPSE_MODE_CENTER | ELLIPSE_MODE_RADIUS | ELLIPSE_MODE_CORNER | ELLIPSE_MODE_CORNERS
data EndShapeMode = END_SHAPE_MODE_CLOSE
data FilterType = FILTER_TYPE_THRESHOLD | FILTER_TYPE_GRAY | FILTER_TYPE_OPAQUE | FILTER_TYPE_INVERT | FILTER_TYPE_POSTERIZE | FILTER_TYPE_ERODE | FILTER_TYPE_DILATE | FILTER_TYPE_BLUR
data ImageMode = IMAGE_MODE_CORNER | IMAGE_MODE_CORNERS | IMAGE_MODE_CENTER
data RectMode = RECT_MODE_CORNER | RECT_MODE_CORNERS | RECT_MODE_CENTER | RECT_MODE_RADIUS
data StrokeCap = STROKE_CAP_SQUARE | STROKE_CAP_PROJECT | STROKE_CAP_ROUND
data StrokeJoin = STROKE_JOIN_MITER | STROKE_JOIN_BEVEL | STROKE_JOIN_ROUND
data TextAlignHorizAlign = TEXT_ALIGN_HORIZ_ALIGN_LEFT | TEXT_ALIGN_HORIZ_ALIGN_CENTER | TEXT_ALIGN_HORIZ_ALIGN_RIGHT
data TextAlignVertAlign = TEXT_ALIGN_VERT_ALIGN_TOP | TEXT_ALIGN_VERT_ALIGN_BOTTOM | TEXT_ALIGN_VERT_ALIGN_CENTER | TEXT_ALIGN_VERT_ALIGN_BASELINE
data TextStyle = TEXT_STYLE_NORMAL | TEXT_STYLE_ITALIC | TEXT_STYLE_BOLD

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
foreign import angleModeImpl :: Fn2 P5 AngleMode (Effect Unit)
foreign import applyMatrixImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import arcImpl :: Fn9 P5 Number Number Number Number Number Number (Maybe ArcMode) (Maybe Number) (Effect Unit)
foreign import asinImpl :: Fn2 P5 Number Number
foreign import atanImpl :: Fn2 P5 Number Number
foreign import atan2Impl :: Fn3 P5 Number Number Number
foreign import backgroundImpl :: Fn2 P5 Color (Effect Unit)
foreign import background2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import background3Impl :: Fn3 P5 String (Maybe Number) (Effect Unit)
foreign import background4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import background5Impl :: Fn3 P5 Image (Maybe Number) (Effect Unit)
foreign import background6Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import beginContourImpl :: Fn1 P5 (Effect Unit)
foreign import beginShapeImpl :: Fn2 P5 (Maybe BeginShapeKind) (Effect Unit)
foreign import bezierImpl :: Fn9 P5 Number Number Number Number Number Number Number Number (Effect Unit)
foreign import bezierDetailImpl :: Fn2 P5 Number (Effect Unit)
foreign import bezierPointImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierTangentImpl :: Fn6 P5 Number Number Number Number Number Number
foreign import bezierVertexImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import bezierVertex2Impl :: Fn10 P5 Number Number Number Number Number Number Number Number Number (Effect Unit)
foreign import blendImpl :: Fn10 P5 Int Int Int Int Int Int Int Int BlendMode (Effect Unit)
foreign import blendModeImpl :: Fn2 P5 BlendMode (Effect Unit)
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
foreign import colorModeImpl :: Fn3 P5 ColorMode (Maybe Number) (Effect Unit)
foreign import colorMode2Impl :: Fn6 P5 ColorMode Number Number Number (Maybe Number) (Effect Unit)
foreign import coneImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Maybe Boolean) (Effect Unit)
foreign import constrainImpl :: Fn4 P5 Number Number Number Number
foreign import copyImpl :: Fn9 P5 Int Int Int Int Int Int Int Int (Effect Unit)
foreign import copy2Impl :: Fn10 P5 ElementOrImage Int Int Int Int Int Int Int Int (Effect Unit)
foreign import cosImpl :: Fn2 P5 Number Number
foreign import createCameraImpl :: Fn1 P5 Camera
foreign import createGraphicsImpl :: Fn4 P5 Number Number (Maybe CreateGraphicsRenderer) Graphics
foreign import createImageImpl :: Fn3 P5 Int Int Image
foreign import createShaderImpl :: Fn3 P5 String String Shader
foreign import createStringDict2Impl :: Fn3 P5 String String StringDict
foreign import createVectorImpl :: Fn4 P5 (Maybe Number) (Maybe Number) (Maybe Number) Vector
foreign import createWriterImpl :: Fn3 P5 String (Maybe String) PrintWriter
foreign import cursorImpl :: Fn4 P5 CursorTypeOrString (Maybe Number) (Maybe Number) (Effect Unit)
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
foreign import debugMode2Impl :: Fn2 P5 DebugMode (Effect Unit)
foreign import debugMode3Impl :: Fn6 P5 DebugMode (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import debugMode4Impl :: Fn7 P5 DebugMode (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
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
foreign import doubleClickedImpl :: Fn1 P5 (Effect Unit)
foreign import ellipseImpl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import ellipse2Impl :: Fn6 P5 Number Number Number Number Int (Effect Unit)
foreign import ellipseModeImpl :: Fn2 P5 EllipseMode (Effect Unit)
foreign import ellipsoidImpl :: Fn6 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import endContourImpl :: Fn1 P5 (Effect Unit)
foreign import endShapeImpl :: Fn2 P5 (Maybe EndShapeMode) (Effect Unit)
foreign import expImpl :: Fn2 P5 Number Number
foreign import fillImpl :: Fn2 P5 String (Effect Unit)
foreign import fill2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import fill3Impl :: Fn2 P5 Color (Effect Unit)
foreign import fill4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import fill5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import filterImpl :: Fn3 P5 FilterType (Maybe Number) (Effect Unit)
foreign import floatImpl :: Fn2 P5 String Number
foreign import floorImpl :: Fn2 P5 Number Int
foreign import frameRateImpl :: Fn1 P5 Number
foreign import frameRate2Impl :: Fn2 P5 Number (Effect Unit)
foreign import fullscreenImpl :: Fn2 P5 (Maybe Boolean) Boolean
foreign import getImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) ArrayNumberOrImage
foreign import getURLImpl :: Fn1 P5 String
foreign import getURLPathImpl :: Fn1 P5 (Array String)
foreign import greenImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import hexImpl :: Fn3 P5 Number (Maybe Number) String
foreign import hex2Impl :: Fn3 P5 (Array Number) (Maybe Number) (Array String)
foreign import hourImpl :: Fn1 P5 Int
foreign import hueImpl :: Fn2 P5 ArrayNumberOrStringOrColor Number
foreign import imageImpl :: Fn6 P5 ElementOrImage Number Number (Maybe Number) (Maybe Number) (Effect Unit)
foreign import image2Impl :: Fn10 P5 ElementOrImage Number Number Number Number Number Number (Maybe Number) (Maybe Number) (Effect Unit)
foreign import imageModeImpl :: Fn2 P5 ImageMode (Effect Unit)
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
foreign import loadFontImpl :: Fn4 P5 String (Maybe (Effect Unit)) (Maybe (Effect Unit)) Font
foreign import loadPixelsImpl :: Fn1 P5 (Effect Unit)
foreign import loadShaderImpl :: Fn3 P5 (Maybe String) (Maybe String) Shader
foreign import loadStringsImpl :: Fn4 P5 String (Maybe (Effect Unit)) (Maybe (Effect Unit)) (Array String)
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
foreign import modelImpl :: Fn2 P5 Geometry (Effect Unit)
foreign import monthImpl :: Fn1 P5 Int
foreign import mouseClickedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseDraggedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseMovedImpl :: Fn1 P5 (Effect Unit)
foreign import mousePressedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseReleasedImpl :: Fn1 P5 (Effect Unit)
foreign import mouseWheelImpl :: Fn1 P5 (Effect Unit)
foreign import nfImpl :: Fn4 P5 NumberOrString (Maybe IntOrString) (Maybe IntOrString) String
foreign import nfcImpl :: Fn3 P5 NumberOrString (Maybe IntOrString) String
foreign import nfc2Impl :: Fn3 P5 (Array Number) (Maybe IntOrString) (Array String)
foreign import nfpImpl :: Fn4 P5 Number (Maybe Int) (Maybe Int) String
foreign import nfp2Impl :: Fn4 P5 (Array Number) (Maybe Int) (Maybe Int) (Array String)
foreign import nfsImpl :: Fn4 P5 Number (Maybe Int) (Maybe Int) String
foreign import nfs2Impl :: Fn4 P5 (Array Int) (Maybe Int) (Maybe Int) (Array String)
foreign import noCanvasImpl :: Fn1 P5 (Effect Unit)
foreign import noCursorImpl :: Fn1 P5 (Effect Unit)
foreign import noDebugModeImpl :: Fn1 P5 (Effect Unit)
foreign import noFillImpl :: Fn1 P5 (Effect Unit)
foreign import noLoopImpl :: Fn1 P5 (Effect Unit)
foreign import noSmoothImpl :: Fn1 P5 (Effect Unit)
foreign import noStrokeImpl :: Fn1 P5 (Effect Unit)
foreign import noTintImpl :: Fn1 P5 (Effect Unit)
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
foreign import randomSeedImpl :: Fn2 P5 Number (Effect Unit)
foreign import rectImpl :: Fn7 P5 Number Number Number Number (Maybe Int) (Maybe Int) (Effect Unit)
foreign import rect2Impl :: Fn9 P5 Number Number Number Number (Maybe Number) (Maybe Number) (Maybe Number) (Maybe Number) (Effect Unit)
foreign import rectModeImpl :: Fn2 P5 RectMode (Effect Unit)
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
foreign import saveTableImpl :: Fn4 P5 Table String (Maybe String) (Effect Unit)
foreign import scaleImpl :: Fn2 P5 ArrayNumberOrVector (Effect Unit)
foreign import scale2Impl :: Fn4 P5 NumberOrArrayNumberOrVector (Maybe Number) (Maybe Number) (Effect Unit)
foreign import secondImpl :: Fn1 P5 Int
foreign import setImpl :: Fn4 P5 Number Number NumberOrArrayNumberOrColorOrImage (Effect Unit)
foreign import setAttributes2Impl :: Fn3 P5 String Boolean (Effect Unit)
foreign import setCameraImpl :: Fn2 P5 Camera (Effect Unit)
foreign import setMoveThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import setShakeThresholdImpl :: Fn2 P5 Number (Effect Unit)
foreign import shaderImpl :: Fn2 P5 (Maybe Shader) (Effect Unit)
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
foreign import strImpl :: Fn2 P5 BooleanOrNumberOrString String
foreign import strokeImpl :: Fn2 P5 String (Effect Unit)
foreign import stroke2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import stroke3Impl :: Fn2 P5 Color (Effect Unit)
foreign import stroke4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import stroke5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import strokeCapImpl :: Fn2 P5 StrokeCap (Effect Unit)
foreign import strokeJoinImpl :: Fn2 P5 StrokeJoin (Effect Unit)
foreign import strokeWeightImpl :: Fn2 P5 Number (Effect Unit)
foreign import tanImpl :: Fn2 P5 Number Number
foreign import textAlign2Impl :: Fn3 P5 TextAlignHorizAlign (Maybe TextAlignVertAlign) (Effect Unit)
foreign import textAscentImpl :: Fn1 P5 Number
foreign import textDescentImpl :: Fn1 P5 Number
foreign import textLeadingImpl :: Fn1 P5 Number
foreign import textLeading2Impl :: Fn2 P5 Number (Effect Unit)
foreign import textSizeImpl :: Fn1 P5 Number
foreign import textSize2Impl :: Fn2 P5 Number (Effect Unit)
foreign import textStyleImpl :: Fn1 P5 String
foreign import textStyle2Impl :: Fn2 P5 TextStyle (Effect Unit)
foreign import textWidthImpl :: Fn2 P5 String Number
foreign import textureImpl :: Fn2 P5 GraphicsOrImageOrMediaElement (Effect Unit)
foreign import tintImpl :: Fn2 P5 String (Effect Unit)
foreign import tint2Impl :: Fn2 P5 (Array Number) (Effect Unit)
foreign import tint3Impl :: Fn2 P5 Color (Effect Unit)
foreign import tint4Impl :: Fn3 P5 Number (Maybe Number) (Effect Unit)
foreign import tint5Impl :: Fn5 P5 Number Number Number (Maybe Number) (Effect Unit)
foreign import torusImpl :: Fn5 P5 (Maybe Number) (Maybe Number) (Maybe Int) (Maybe Int) (Effect Unit)
foreign import touchEndedImpl :: Fn1 P5 (Effect Unit)
foreign import touchMovedImpl :: Fn1 P5 (Effect Unit)
foreign import touchStartedImpl :: Fn1 P5 (Effect Unit)
foreign import translateImpl :: Fn2 P5 Vector (Effect Unit)
foreign import translate2Impl :: Fn4 P5 Number Number (Maybe Number) (Effect Unit)
foreign import triangleImpl :: Fn7 P5 Number Number Number Number Number Number (Effect Unit)
foreign import trimImpl :: Fn2 P5 String String
foreign import uncharImpl :: Fn2 P5 String Number
foreign import unchar2Impl :: Fn2 P5 (Array String) (Array Number)
foreign import unhexImpl :: Fn2 P5 String Number
foreign import unhex2Impl :: Fn2 P5 (Array String) (Array Number)
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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/angleMode)
angleMode :: P5 -> AngleMode -> (Effect Unit)
angleMode p5 mode = runFn2 angleModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/applyMatrix)
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
applyMatrix p5 a b c d e f = runFn7 applyMatrixImpl p5 a b c d e f

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/arc)
arc :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe ArcMode) -> (Maybe Number) -> (Effect Unit)
arc p5 x y w h start stop mode detail = runFn9 arcImpl p5 x y w h start stop mode detail

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background5 :: P5 -> Image -> (Maybe Number) -> (Effect Unit)
background5 p5 image a = runFn3 background5Impl p5 image a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/background)
background6 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
background6 p5 v1 v2 v3 a = runFn5 background6Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginContour)
beginContour :: P5 -> (Effect Unit)
beginContour p5  = runFn1 beginContourImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/beginShape)
beginShape :: P5 -> (Maybe BeginShapeKind) -> (Effect Unit)
beginShape p5 kind = runFn2 beginShapeImpl p5 kind

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/blend)
blend :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> BlendMode -> (Effect Unit)
blend p5 sx sy sw sh dx dy dw dh blendMode = runFn10 blendImpl p5 sx sy sw sh dx dy dw dh blendMode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/blendMode)
blendMode :: P5 -> BlendMode -> (Effect Unit)
blendMode p5 mode = runFn2 blendModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/blue)
blue :: P5 -> ArrayNumberOrStringOrColor -> Number
blue p5 color = runFn2 blueImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/box)
box :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
box p5 width height depth detailX detailY = runFn6 boxImpl p5 width height depth detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/brightness)
brightness :: P5 -> ArrayNumberOrStringOrColor -> Number
brightness p5 color = runFn2 brightnessImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/byte)
byte :: P5 -> BooleanOrNumberOrString -> Number
byte p5 n = runFn2 byteImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/camera)
camera :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
camera p5 x y z centerX centerY centerZ upX upY upZ = runFn10 cameraImpl p5 x y z centerX centerY centerZ upX upY upZ

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ceil)
ceil :: P5 -> Number -> Int
ceil p5 n = runFn2 ceilImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/char)
char :: P5 -> NumberOrString -> String
char p5 n = runFn2 charImpl p5 n

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/colorMode)
colorMode :: P5 -> ColorMode -> (Maybe Number) -> (Effect Unit)
colorMode p5 mode max = runFn3 colorModeImpl p5 mode max

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/colorMode)
colorMode2 :: P5 -> ColorMode -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
colorMode2 p5 mode max1 max2 max3 maxA = runFn6 colorMode2Impl p5 mode max1 max2 max3 maxA

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cone)
cone :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Maybe Boolean) -> (Effect Unit)
cone p5 radius height detailX detailY cap = runFn6 coneImpl p5 radius height detailX detailY cap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/constrain)
constrain :: P5 -> Number -> Number -> Number -> Number
constrain p5 n low high = runFn4 constrainImpl p5 n low high

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/copy)
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy p5 sx sy sw sh dx dy dw dh = runFn9 copyImpl p5 sx sy sw sh dx dy dw dh

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/copy)
copy2 :: P5 -> ElementOrImage -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
copy2 p5 srcImage sx sy sw sh dx dy dw dh = runFn10 copy2Impl p5 srcImage sx sy sw sh dx dy dw dh

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cos)
cos :: P5 -> Number -> Number
cos p5 angle = runFn2 cosImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createCamera)
createCamera :: P5 -> Camera
createCamera p5  = runFn1 createCameraImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createGraphics)
createGraphics :: P5 -> Number -> Number -> (Maybe CreateGraphicsRenderer) -> Graphics
createGraphics p5 w h renderer = runFn4 createGraphicsImpl p5 w h renderer

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createImage)
createImage :: P5 -> Int -> Int -> Image
createImage p5 width height = runFn3 createImageImpl p5 width height

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createShader)
createShader :: P5 -> String -> String -> Shader
createShader p5 vertSrc fragSrc = runFn3 createShaderImpl p5 vertSrc fragSrc

-- TODO: unsupported: createStringDict :: P5 -> Unsupported(Object) -> StringDict

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createStringDict)
createStringDict2 :: P5 -> String -> String -> StringDict
createStringDict2 p5 key value = runFn3 createStringDict2Impl p5 key value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createVector)
createVector :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> Vector
createVector p5 x y z = runFn4 createVectorImpl p5 x y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/createWriter)
createWriter :: P5 -> String -> (Maybe String) -> PrintWriter
createWriter p5 name extension = runFn3 createWriterImpl p5 name extension

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/cursor)
cursor :: P5 -> CursorTypeOrString -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
cursor p5 _type x y = runFn4 cursorImpl p5 _type x y

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode2 :: P5 -> DebugMode -> (Effect Unit)
debugMode2 p5 mode = runFn2 debugMode2Impl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode3 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode3 p5 mode axesSize xOff yOff zOff = runFn6 debugMode3Impl p5 mode axesSize xOff yOff zOff

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)
debugMode4 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
debugMode4 p5 mode gridSize gridDivisions xOff yOff zOff = runFn7 debugMode4Impl p5 mode gridSize gridDivisions xOff yOff zOff

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/doubleClicked)
doubleClicked :: P5 -> (Effect Unit)
doubleClicked p5  = runFn1 doubleClickedImpl p5 

-- TODO: unsupported: downloadFile :: P5 -> UnsupportedProduct(Unsupported(Blob)|String) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
ellipse p5 x y w h = runFn5 ellipseImpl p5 x y w h

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipse)
ellipse2 :: P5 -> Number -> Number -> Number -> Number -> Int -> (Effect Unit)
ellipse2 p5 x y w h detail = runFn6 ellipse2Impl p5 x y w h detail

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipseMode)
ellipseMode :: P5 -> EllipseMode -> (Effect Unit)
ellipseMode p5 mode = runFn2 ellipseModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/ellipsoid)
ellipsoid :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
ellipsoid p5 radiusx radiusy radiusz detailX detailY = runFn6 ellipsoidImpl p5 radiusx radiusy radiusz detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endContour)
endContour :: P5 -> (Effect Unit)
endContour p5  = runFn1 endContourImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/endShape)
endShape :: P5 -> (Maybe EndShapeMode) -> (Effect Unit)
endShape p5 mode = runFn2 endShapeImpl p5 mode

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/filter)
filter :: P5 -> FilterType -> (Maybe Number) -> (Effect Unit)
filter p5 filterType filterParam = runFn3 filterImpl p5 filterType filterParam

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/get)
get :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> ArrayNumberOrImage
get p5 x y w h = runFn5 getImpl p5 x y w h

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

-- TODO: unsupported: httpDo :: P5 -> String -> Unsupported(Object) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpDo2 :: P5 -> String -> (Maybe String) -> (Maybe String) -> Unsupported(Object) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpGet :: P5 -> String -> (Effect Unit) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpGet2 :: P5 -> String -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpGet3 :: P5 -> String -> (Maybe String) -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpPost :: P5 -> String -> (Effect Unit) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpPost2 :: P5 -> String -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- TODO: unsupported: httpPost3 :: P5 -> String -> (Maybe String) -> UnsupportedProduct(Boolean|Unsupported(Object)) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Promise)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/hue)
hue :: P5 -> ArrayNumberOrStringOrColor -> Number
hue p5 color = runFn2 hueImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/image)
image :: P5 -> ElementOrImage -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
image p5 img x y width height = runFn6 imageImpl p5 img x y width height

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/image)
image2 :: P5 -> ElementOrImage -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
image2 p5 img dx dy dWidth dHeight sx sy sWidth sHeight = runFn10 image2Impl p5 img dx dy dWidth dHeight sx sy sWidth sHeight

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/imageMode)
imageMode :: P5 -> ImageMode -> (Effect Unit)
imageMode p5 mode = runFn2 imageModeImpl p5 mode

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/int)
int2 :: P5 -> BooleanOrNumberOrString -> (Maybe Int) -> Number
int2 p5 n radix = runFn3 int2Impl p5 n radix

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

-- TODO: unsupported: loadBytes :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadFont)
loadFont :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Font
loadFont p5 path callback onError = runFn4 loadFontImpl p5 path callback onError

-- TODO: unsupported: loadImage :: P5 -> String -> Unsupported(function(p5.Image)) -> Unsupported(Function(Event)) -> Image

-- TODO: unsupported: loadJSON :: P5 -> String -> (Effect Unit) -> (Maybe (Effect Unit)) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadJSON2 :: P5 -> String -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadJSON3 :: P5 -> String -> Unsupported(Object) -> (Maybe String) -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object))

-- TODO: unsupported: loadModel :: P5 -> String -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Geometry

-- TODO: unsupported: loadModel2 :: P5 -> String -> Boolean -> Unsupported(function(p5.Geometry)) -> Unsupported(Function(Event)) -> Geometry

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)
loadPixels :: P5 -> (Effect Unit)
loadPixels p5  = runFn1 loadPixelsImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadShader)
loadShader :: P5 -> (Maybe String) -> (Maybe String) -> Shader
loadShader p5 vertFilename fragFilename = runFn3 loadShaderImpl p5 vertFilename fragFilename

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/loadStrings)
loadStrings :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> (Array String)
loadStrings p5 filename callback errorCallback = runFn4 loadStringsImpl p5 filename callback errorCallback

-- TODO: unsupported: loadTable :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

-- TODO: unsupported: loadTable2 :: P5 -> String -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

-- TODO: unsupported: loadXML :: P5 -> String -> (Maybe (Effect Unit)) -> (Maybe (Effect Unit)) -> Unsupported(Object)

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/model)
model :: P5 -> Geometry -> (Effect Unit)
model p5 model = runFn2 modelImpl p5 model

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/month)
month :: P5 -> Int
month p5  = runFn1 monthImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseClicked)
mouseClicked :: P5 -> (Effect Unit)
mouseClicked p5  = runFn1 mouseClickedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseDragged)
mouseDragged :: P5 -> (Effect Unit)
mouseDragged p5  = runFn1 mouseDraggedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseMoved)
mouseMoved :: P5 -> (Effect Unit)
mouseMoved p5  = runFn1 mouseMovedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mousePressed)
mousePressed :: P5 -> (Effect Unit)
mousePressed p5  = runFn1 mousePressedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseReleased)
mouseReleased :: P5 -> (Effect Unit)
mouseReleased p5  = runFn1 mouseReleasedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/mouseWheel)
mouseWheel :: P5 -> (Effect Unit)
mouseWheel p5  = runFn1 mouseWheelImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nf)
nf :: P5 -> NumberOrString -> (Maybe IntOrString) -> (Maybe IntOrString) -> String
nf p5 num left right = runFn4 nfImpl p5 num left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfc)
nfc :: P5 -> NumberOrString -> (Maybe IntOrString) -> String
nfc p5 num right = runFn3 nfcImpl p5 num right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfc)
nfc2 :: P5 -> (Array Number) -> (Maybe IntOrString) -> (Array String)
nfc2 p5 nums right = runFn3 nfc2Impl p5 nums right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
nfp p5 num left right = runFn4 nfpImpl p5 num left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfp)
nfp2 :: P5 -> (Array Number) -> (Maybe Int) -> (Maybe Int) -> (Array String)
nfp2 p5 nums left right = runFn4 nfp2Impl p5 nums left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfs)
nfs :: P5 -> Number -> (Maybe Int) -> (Maybe Int) -> String
nfs p5 num left right = runFn4 nfsImpl p5 num left right

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/nfs)
nfs2 :: P5 -> (Array Int) -> (Maybe Int) -> (Maybe Int) -> (Array String)
nfs2 p5 nums left right = runFn4 nfs2Impl p5 nums left right

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/randomSeed)
randomSeed :: P5 -> Number -> (Effect Unit)
randomSeed p5 seed = runFn2 randomSeedImpl p5 seed

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect :: P5 -> Number -> Number -> Number -> Number -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
rect p5 x y w h detailX detailY = runFn7 rectImpl p5 x y w h detailX detailY

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rect)
rect2 :: P5 -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
rect2 p5 x y w h tl tr br bl = runFn9 rect2Impl p5 x y w h tl tr br bl

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/rectMode)
rectMode :: P5 -> RectMode -> (Effect Unit)
rectMode p5 mode = runFn2 rectModeImpl p5 mode

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

-- TODO: unsupported: saveCanvas2 :: P5 -> UnsupportedProduct(Unsupported(HTMLCanvasElement)|Element) -> (Maybe String) -> (Maybe String) -> (Effect Unit)

-- TODO: unsupported: saveFrames :: P5 -> String -> String -> Number -> Number -> Unsupported(Function(Array)) -> (Effect Unit)

-- TODO: unsupported: saveJSON :: P5 -> UnsupportedProduct(Unsupported(Array)|Unsupported(Object)) -> String -> (Maybe Boolean) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveStrings)
saveStrings :: P5 -> (Array String) -> String -> (Maybe String) -> (Effect Unit)
saveStrings p5 list filename extension = runFn4 saveStringsImpl p5 list filename extension

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/saveTable)
saveTable :: P5 -> Table -> String -> (Maybe String) -> (Effect Unit)
saveTable p5 table filename options = runFn4 saveTableImpl p5 table filename options

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/scale)
scale :: P5 -> ArrayNumberOrVector -> (Effect Unit)
scale p5 scales = runFn2 scaleImpl p5 scales

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/scale)
scale2 :: P5 -> NumberOrArrayNumberOrVector -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
scale2 p5 s y z = runFn4 scale2Impl p5 s y z

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/second)
second :: P5 -> Int
second p5  = runFn1 secondImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/set)
set :: P5 -> Number -> Number -> NumberOrArrayNumberOrColorOrImage -> (Effect Unit)
set p5 x y c = runFn4 setImpl p5 x y c

-- TODO: unsupported: setAttributes :: P5 -> Unsupported(Object) -> (Effect Unit)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setAttributes)
setAttributes2 :: P5 -> String -> Boolean -> (Effect Unit)
setAttributes2 p5 key value = runFn3 setAttributes2Impl p5 key value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setCamera)
setCamera :: P5 -> Camera -> (Effect Unit)
setCamera p5 cam = runFn2 setCameraImpl p5 cam

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setMoveThreshold)
setMoveThreshold :: P5 -> Number -> (Effect Unit)
setMoveThreshold p5 value = runFn2 setMoveThresholdImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/setShakeThreshold)
setShakeThreshold :: P5 -> Number -> (Effect Unit)
setShakeThreshold p5 value = runFn2 setShakeThresholdImpl p5 value

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shader)
shader :: P5 -> (Maybe Shader) -> (Effect Unit)
shader p5 s = runFn2 shaderImpl p5 s

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearX)
shearX :: P5 -> Number -> (Effect Unit)
shearX p5 angle = runFn2 shearXImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/shearY)
shearY :: P5 -> Number -> (Effect Unit)
shearY p5 angle = runFn2 shearYImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sin)
sin :: P5 -> Number -> Number
sin p5 angle = runFn2 sinImpl p5 angle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/smooth)
smooth :: P5 -> (Effect Unit)
smooth p5  = runFn1 smoothImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
specularMaterial p5 color = runFn2 specularMaterialImpl p5 color

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)
specularMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
specularMaterial2 p5 v1 v2 v3 a = runFn5 specularMaterial2Impl p5 v1 v2 v3 a

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/sphere)
sphere :: P5 -> (Maybe Number) -> (Maybe Int) -> (Maybe Int) -> (Effect Unit)
sphere p5 radius detailX detailY = runFn4 sphereImpl p5 radius detailX detailY

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/str)
str :: P5 -> BooleanOrNumberOrString -> String
str p5 n = runFn2 strImpl p5 n

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeCap)
strokeCap :: P5 -> StrokeCap -> (Effect Unit)
strokeCap p5 cap = runFn2 strokeCapImpl p5 cap

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeJoin)
strokeJoin :: P5 -> StrokeJoin -> (Effect Unit)
strokeJoin p5 join = runFn2 strokeJoinImpl p5 join

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/strokeWeight)
strokeWeight :: P5 -> Number -> (Effect Unit)
strokeWeight p5 weight = runFn2 strokeWeightImpl p5 weight

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/tan)
tan :: P5 -> Number -> Number
tan p5 angle = runFn2 tanImpl p5 angle

-- TODO: unsupported: text :: P5 -> UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(UnsupportedProduct(Unsupported(Array)|Boolean)|Number)|Unsupported(Object))|String) -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)

-- TODO: unsupported: textAlign :: P5 -> Unsupported(Object)

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textAlign)
textAlign2 :: P5 -> TextAlignHorizAlign -> (Maybe TextAlignVertAlign) -> (Effect Unit)
textAlign2 p5 horizAlign vertAlign = runFn3 textAlign2Impl p5 horizAlign vertAlign

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textStyle)
textStyle2 :: P5 -> TextStyle -> (Effect Unit)
textStyle2 p5 theStyle = runFn2 textStyle2Impl p5 theStyle

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/textWidth)
textWidth :: P5 -> String -> Number
textWidth p5 theText = runFn2 textWidthImpl p5 theText

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/texture)
texture :: P5 -> GraphicsOrImageOrMediaElement -> (Effect Unit)
texture p5 tex = runFn2 textureImpl p5 tex

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchEnded)
touchEnded :: P5 -> (Effect Unit)
touchEnded p5  = runFn1 touchEndedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchMoved)
touchMoved :: P5 -> (Effect Unit)
touchMoved p5  = runFn1 touchMovedImpl p5 

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/touchStarted)
touchStarted :: P5 -> (Effect Unit)
touchStarted p5  = runFn1 touchStartedImpl p5 

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

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unchar)
unchar :: P5 -> String -> Number
unchar p5 n = runFn2 uncharImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unchar)
unchar2 :: P5 -> (Array String) -> (Array Number)
unchar2 p5 ns = runFn2 unchar2Impl p5 ns

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unhex)
unhex :: P5 -> String -> Number
unhex p5 n = runFn2 unhexImpl p5 n

-- | [p5js.org documentation](https://p5js.org/reference/#/p5/unhex)
unhex2 :: P5 -> (Array String) -> (Array Number)
unhex2 p5 ns = runFn2 unhex2Impl p5 ns

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
