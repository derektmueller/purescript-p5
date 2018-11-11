module P5 Generated where
color :: P5 -> Number -> Number -> Effect Unit
color = colorImpl
background :: P5 -> String -> Number -> Effect Unit
background = backgroundImpl
fill :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
fill = fillImpl
stroke :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
stroke = strokeImpl
ellipse :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
ellipse = ellipseImpl
line :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
line = lineImpl
point :: P5 -> Number -> Number -> Number -> Effect Unit
point = pointImpl
quad :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
quad = quadImpl
rect :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
rect = rectImpl
triangle :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
triangle = triangleImpl
strokeWeight :: P5 -> Number -> Effect Unit
strokeWeight = strokeWeightImpl
bezier :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
bezier = bezierImpl
bezierDetail :: P5 -> Number -> Effect Unit
bezierDetail = bezierDetailImpl
bezierPoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Effect Unit
bezierPoint = bezierPointImpl
bezierTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Effect Unit
bezierTangent = bezierTangentImpl
curve :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
curve = curveImpl
curveDetail :: P5 -> Number -> Effect Unit
curveDetail = curveDetailImpl
curveTightness :: P5 -> Number -> Effect Unit
curveTightness = curveTightnessImpl
curvePoint :: P5 -> Number -> Number -> Number -> Number -> Number -> Effect Unit
curvePoint = curvePointImpl
curveTangent :: P5 -> Number -> Number -> Number -> Number -> Number -> Effect Unit
curveTangent = curveTangentImpl
bezierVertex :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
bezierVertex = bezierVertexImpl
curveVertex :: P5 -> Number -> Number -> Effect Unit
curveVertex = curveVertexImpl
quadraticVertex :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
quadraticVertex = quadraticVertexImpl
vertex :: P5 -> Number -> Number -> Effect Unit
vertex = vertexImpl
frameRate :: P5 -> Number -> Effect Unit
frameRate = frameRateImpl
fullscreen :: P5 -> Boolean -> Effect Unit
fullscreen = fullscreenImpl
pixelDensity :: P5 -> Number -> Effect Unit
pixelDensity = pixelDensityImpl
resizeCanvas :: P5 -> Number -> Number -> Boolean -> Effect Unit
resizeCanvas = resizeCanvasImpl
redraw :: P5 -> Integer -> Effect Unit
redraw = redrawImpl
applyMatrix :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
applyMatrix = applyMatrixImpl
rotateX :: P5 -> Number -> Effect Unit
rotateX = rotateXImpl
rotateY :: P5 -> Number -> Effect Unit
rotateY = rotateYImpl
rotateZ :: P5 -> Number -> Effect Unit
rotateZ = rotateZImpl
shearX :: P5 -> Number -> Effect Unit
shearX = shearXImpl
shearY :: P5 -> Number -> Effect Unit
shearY = shearYImpl
translate :: P5 -> Number -> Number -> Number -> Effect Unit
translate = translateImpl
createStringDict :: P5 -> String -> String -> Effect Unit
createStringDict = createStringDictImpl
createNumberDict :: P5 -> Number -> Number -> Effect Unit
createNumberDict = createNumberDictImpl
setMoveThreshold :: P5 -> Number -> Effect Unit
setMoveThreshold = setMoveThresholdImpl
setShakeThreshold :: P5 -> Number -> Effect Unit
setShakeThreshold = setShakeThresholdImpl
keyIsDown :: P5 -> Number -> Effect Unit
keyIsDown = keyIsDownImpl
createImage :: P5 -> Integer -> Integer -> Effect Unit
createImage = createImageImpl
saveCanvas :: P5 -> String -> String -> Effect Unit
saveCanvas = saveCanvasImpl
tint :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
tint = tintImpl
copy :: P5 -> Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Effect Unit
copy = copyImpl
get :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
get = getImpl
updatePixels :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
updatePixels = updatePixelsImpl
createWriter :: P5 -> String -> String -> Effect Unit
createWriter = createWriterImpl
saveStrings :: P5 -> Array String -> String -> String -> Effect Unit
saveStrings = saveStringsImpl
abs :: P5 -> Number -> Effect Unit
abs = absImpl
ceil :: P5 -> Number -> Effect Unit
ceil = ceilImpl
constrain :: P5 -> Number -> Number -> Number -> Effect Unit
constrain = constrainImpl
dist :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
dist = distImpl
exp :: P5 -> Number -> Effect Unit
exp = expImpl
floor :: P5 -> Number -> Effect Unit
floor = floorImpl
lerp :: P5 -> Number -> Number -> Number -> Effect Unit
lerp = lerpImpl
log :: P5 -> Number -> Effect Unit
log = logImpl
mag :: P5 -> Number -> Number -> Effect Unit
mag = magImpl
map :: P5 -> Number -> Number -> Number -> Number -> Number -> Boolean -> Effect Unit
map = mapImpl
max :: P5 -> Number -> Number -> Effect Unit
max = maxImpl
min :: P5 -> Number -> Number -> Effect Unit
min = minImpl
norm :: P5 -> Number -> Number -> Number -> Effect Unit
norm = normImpl
pow :: P5 -> Number -> Number -> Effect Unit
pow = powImpl
round :: P5 -> Number -> Effect Unit
round = roundImpl
sq :: P5 -> Number -> Effect Unit
sq = sqImpl
sqrt :: P5 -> Number -> Effect Unit
sqrt = sqrtImpl
createVector :: P5 -> Number -> Number -> Number -> Effect Unit
createVector = createVectorImpl
noise :: P5 -> Number -> Number -> Number -> Effect Unit
noise = noiseImpl
noiseDetail :: P5 -> Number -> Number -> Effect Unit
noiseDetail = noiseDetailImpl
noiseSeed :: P5 -> Number -> Effect Unit
noiseSeed = noiseSeedImpl
randomSeed :: P5 -> Number -> Effect Unit
randomSeed = randomSeedImpl
random :: P5 -> Number -> Number -> Effect Unit
random = randomImpl
randomGaussian :: P5 -> Number -> Number -> Effect Unit
randomGaussian = randomGaussianImpl
acos :: P5 -> Number -> Effect Unit
acos = acosImpl
asin :: P5 -> Number -> Effect Unit
asin = asinImpl
atan :: P5 -> Number -> Effect Unit
atan = atanImpl
atan2 :: P5 -> Number -> Number -> Effect Unit
atan2 = atan2Impl
cos :: P5 -> Number -> Effect Unit
cos = cosImpl
sin :: P5 -> Number -> Effect Unit
sin = sinImpl
tan :: P5 -> Number -> Effect Unit
tan = tanImpl
degrees :: P5 -> Number -> Effect Unit
degrees = degreesImpl
radians :: P5 -> Number -> Effect Unit
radians = radiansImpl
_toRadians :: P5 -> Number -> Effect Unit
_toRadians = _toRadiansImpl
_toDegrees :: P5 -> Number -> Effect Unit
_toDegrees = _toDegreesImpl
_fromRadians :: P5 -> Number -> Effect Unit
_fromRadians = _fromRadiansImpl
textLeading :: P5 -> Number -> Effect Unit
textLeading = textLeadingImpl
textSize :: P5 -> Number -> Effect Unit
textSize = textSizeImpl
textWidth :: P5 -> String -> Effect Unit
textWidth = textWidthImpl
float :: P5 -> String -> Effect Unit
float = floatImpl
unchar :: P5 -> String -> Effect Unit
unchar = uncharImpl
hex :: P5 -> Number -> Number -> Effect Unit
hex = hexImpl
unhex :: P5 -> String -> Effect Unit
unhex = unhexImpl
match :: P5 -> String -> String -> Effect Unit
match = matchImpl
matchAll :: P5 -> String -> String -> Effect Unit
matchAll = matchAllImpl
nfp :: P5 -> Number -> Integer -> Integer -> Effect Unit
nfp = nfpImpl
nfs :: P5 -> Number -> Integer -> Integer -> Effect Unit
nfs = nfsImpl
split :: P5 -> String -> String -> Effect Unit
split = splitImpl
splitTokens :: P5 -> String -> String -> Effect Unit
splitTokens = splitTokensImpl
trim :: P5 -> String -> Effect Unit
trim = trimImpl
plane :: P5 -> Number -> Number -> Integer -> Integer -> Effect Unit
plane = planeImpl
box :: P5 -> Number -> Number -> Number -> Integer -> Integer -> Effect Unit
box = boxImpl
sphere :: P5 -> Number -> Integer -> Integer -> Effect Unit
sphere = sphereImpl
cylinder :: P5 -> Number -> Number -> Integer -> Integer -> Boolean -> Boolean -> Effect Unit
cylinder = cylinderImpl
cone :: P5 -> Number -> Number -> Integer -> Integer -> Boolean -> Effect Unit
cone = coneImpl
ellipsoid :: P5 -> Number -> Number -> Number -> Integer -> Integer -> Effect Unit
ellipsoid = ellipsoidImpl
torus :: P5 -> Number -> Number -> Integer -> Integer -> Effect Unit
torus = torusImpl
orbitControl :: P5 -> Number -> Number -> Effect Unit
orbitControl = orbitControlImpl
debugMode :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
debugMode = debugModeImpl
_grid :: P5 -> Number -> Number -> Number -> Number -> Number -> Effect Unit
_grid = _gridImpl
_axesIcon :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
_axesIcon = _axesIconImpl
ambientLight :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
ambientLight = ambientLightImpl
directionalLight :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
directionalLight = directionalLightImpl
pointLight :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
pointLight = pointLightImpl
loadShader :: P5 -> String -> String -> Effect Unit
loadShader = loadShaderImpl
createShader :: P5 -> String -> String -> Effect Unit
createShader = createShaderImpl
ambientMaterial :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
ambientMaterial = ambientMaterialImpl
specularMaterial :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
specularMaterial = specularMaterialImpl
camera :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
camera = cameraImpl
perspective :: P5 -> Number -> Number -> Number -> Number -> Effect Unit
perspective = perspectiveImpl
ortho :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> Effect Unit
ortho = orthoImpl
setAttributes :: P5 -> String -> Boolean -> Effect Unit
setAttributes = setAttributesImpl
