exports.colorImpl = function(p, gray, alpha) {
  return function() {
    p.color(gray, alpha);
  };
};
exports.backgroundImpl = function(p, colorstring, a) {
  return function() {
    p.background(colorstring, a);
  };
};
exports.fillImpl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.fill(v1, v2, v3, alpha);
  };
};
exports.strokeImpl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.stroke(v1, v2, v3, alpha);
  };
};
exports.ellipseImpl = function(p, x, y, w, h) {
  return function() {
    p.ellipse(x, y, w, h);
  };
};
exports.lineImpl = function(p, x1, y1, x2, y2) {
  return function() {
    p.line(x1, y1, x2, y2);
  };
};
exports.pointImpl = function(p, x, y, z) {
  return function() {
    p.point(x, y, z);
  };
};
exports.quadImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    p.quad(x1, y1, x2, y2, x3, y3, x4, y4);
  };
};
exports.rectImpl = function(p, x, y, w, h, tl, tr, br, bl) {
  return function() {
    p.rect(x, y, w, h, tl, tr, br, bl);
  };
};
exports.triangleImpl = function(p, x1, y1, x2, y2, x3, y3) {
  return function() {
    p.triangle(x1, y1, x2, y2, x3, y3);
  };
};
exports.strokeWeightImpl = function(p, weight) {
  return function() {
    p.strokeWeight(weight);
  };
};
exports.bezierImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    p.bezier(x1, y1, x2, y2, x3, y3, x4, y4);
  };
};
exports.bezierDetailImpl = function(p, detail) {
  return function() {
    p.bezierDetail(detail);
  };
};
exports.bezierPointImpl = function(p, a, b, c, d, t) {
  return function() {
    p.bezierPoint(a, b, c, d, t);
  };
};
exports.bezierTangentImpl = function(p, a, b, c, d, t) {
  return function() {
    p.bezierTangent(a, b, c, d, t);
  };
};
exports.curveImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    p.curve(x1, y1, x2, y2, x3, y3, x4, y4);
  };
};
exports.curveDetailImpl = function(p, resolution) {
  return function() {
    p.curveDetail(resolution);
  };
};
exports.curveTightnessImpl = function(p, amount) {
  return function() {
    p.curveTightness(amount);
  };
};
exports.curvePointImpl = function(p, a, b, c, d, t) {
  return function() {
    p.curvePoint(a, b, c, d, t);
  };
};
exports.curveTangentImpl = function(p, a, b, c, d, t) {
  return function() {
    p.curveTangent(a, b, c, d, t);
  };
};
exports.bezierVertexImpl = function(p, x2, y2, x3, y3, x4, y4) {
  return function() {
    p.bezierVertex(x2, y2, x3, y3, x4, y4);
  };
};
exports.curveVertexImpl = function(p, x, y) {
  return function() {
    p.curveVertex(x, y);
  };
};
exports.quadraticVertexImpl = function(p, cx, cy, x3, y3) {
  return function() {
    p.quadraticVertex(cx, cy, x3, y3);
  };
};
exports.vertexImpl = function(p, x, y) {
  return function() {
    p.vertex(x, y);
  };
};
exports.frameRateImpl = function(p, fps) {
  return function() {
    p.frameRate(fps);
  };
};
exports.fullscreenImpl = function(p, val) {
  return function() {
    p.fullscreen(val);
  };
};
exports.pixelDensityImpl = function(p, val) {
  return function() {
    p.pixelDensity(val);
  };
};
exports.resizeCanvasImpl = function(p, w, h, noRedraw) {
  return function() {
    p.resizeCanvas(w, h, noRedraw);
  };
};
exports.redrawImpl = function(p, n) {
  return function() {
    p.redraw(n);
  };
};
exports.applyMatrixImpl = function(p, a, b, c, d, e, f) {
  return function() {
    p.applyMatrix(a, b, c, d, e, f);
  };
};
exports.rotateXImpl = function(p, angle) {
  return function() {
    p.rotateX(angle);
  };
};
exports.rotateYImpl = function(p, angle) {
  return function() {
    p.rotateY(angle);
  };
};
exports.rotateZImpl = function(p, angle) {
  return function() {
    p.rotateZ(angle);
  };
};
exports.shearXImpl = function(p, angle) {
  return function() {
    p.shearX(angle);
  };
};
exports.shearYImpl = function(p, angle) {
  return function() {
    p.shearY(angle);
  };
};
exports.translateImpl = function(p, x, y, z) {
  return function() {
    p.translate(x, y, z);
  };
};
exports.createStringDictImpl = function(p, key, value) {
  return function() {
    p.createStringDict(key, value);
  };
};
exports.createNumberDictImpl = function(p, key, value) {
  return function() {
    p.createNumberDict(key, value);
  };
};
exports.setMoveThresholdImpl = function(p, value) {
  return function() {
    p.setMoveThreshold(value);
  };
};
exports.setShakeThresholdImpl = function(p, value) {
  return function() {
    p.setShakeThreshold(value);
  };
};
exports.keyIsDownImpl = function(p, code) {
  return function() {
    p.keyIsDown(code);
  };
};
exports.createImageImpl = function(p, width, height) {
  return function() {
    p.createImage(width, height);
  };
};
exports.saveCanvasImpl = function(p, filename, extension) {
  return function() {
    p.saveCanvas(filename, extension);
  };
};
exports.tintImpl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.tint(v1, v2, v3, alpha);
  };
};
exports.copyImpl = function(p, sx, sy, sw, sh, dx, dy, dw, dh) {
  return function() {
    p.copy(sx, sy, sw, sh, dx, dy, dw, dh);
  };
};
exports.getImpl = function(p, x, y, w, h) {
  return function() {
    p.get(x, y, w, h);
  };
};
exports.updatePixelsImpl = function(p, x, y, w, h) {
  return function() {
    p.updatePixels(x, y, w, h);
  };
};
exports.createWriterImpl = function(p, name, extension) {
  return function() {
    p.createWriter(name, extension);
  };
};
exports.saveStringsImpl = function(p, list, filename, extension) {
  return function() {
    p.saveStrings(list, filename, extension);
  };
};
exports.absImpl = function(p, n) {
  return function() {
    p.abs(n);
  };
};
exports.ceilImpl = function(p, n) {
  return function() {
    p.ceil(n);
  };
};
exports.constrainImpl = function(p, n, low, high) {
  return function() {
    p.constrain(n, low, high);
  };
};
exports.distImpl = function(p, x1, y1, x2, y2) {
  return function() {
    p.dist(x1, y1, x2, y2);
  };
};
exports.expImpl = function(p, n) {
  return function() {
    p.exp(n);
  };
};
exports.floorImpl = function(p, n) {
  return function() {
    p.floor(n);
  };
};
exports.lerpImpl = function(p, start, stop, amt) {
  return function() {
    p.lerp(start, stop, amt);
  };
};
exports.logImpl = function(p, n) {
  return function() {
    p.log(n);
  };
};
exports.magImpl = function(p, a, b) {
  return function() {
    p.mag(a, b);
  };
};
exports.mapImpl = function(p, value, start1, stop1, start2, stop2, withinBounds) {
  return function() {
    p.map(value, start1, stop1, start2, stop2, withinBounds);
  };
};
exports.maxImpl = function(p, n0, n1) {
  return function() {
    p.max(n0, n1);
  };
};
exports.minImpl = function(p, n0, n1) {
  return function() {
    p.min(n0, n1);
  };
};
exports.normImpl = function(p, value, start, stop) {
  return function() {
    p.norm(value, start, stop);
  };
};
exports.powImpl = function(p, n, e) {
  return function() {
    p.pow(n, e);
  };
};
exports.roundImpl = function(p, n) {
  return function() {
    p.round(n);
  };
};
exports.sqImpl = function(p, n) {
  return function() {
    p.sq(n);
  };
};
exports.sqrtImpl = function(p, n) {
  return function() {
    p.sqrt(n);
  };
};
exports.createVectorImpl = function(p, x, y, z) {
  return function() {
    p.createVector(x, y, z);
  };
};
exports.noiseImpl = function(p, x, y, z) {
  return function() {
    p.noise(x, y, z);
  };
};
exports.noiseDetailImpl = function(p, lod, falloff) {
  return function() {
    p.noiseDetail(lod, falloff);
  };
};
exports.noiseSeedImpl = function(p, seed) {
  return function() {
    p.noiseSeed(seed);
  };
};
exports.randomSeedImpl = function(p, seed) {
  return function() {
    p.randomSeed(seed);
  };
};
exports.randomImpl = function(p, min, max) {
  return function() {
    p.random(min, max);
  };
};
exports.randomGaussianImpl = function(p, mean, sd) {
  return function() {
    p.randomGaussian(mean, sd);
  };
};
exports.acosImpl = function(p, value) {
  return function() {
    p.acos(value);
  };
};
exports.asinImpl = function(p, value) {
  return function() {
    p.asin(value);
  };
};
exports.atanImpl = function(p, value) {
  return function() {
    p.atan(value);
  };
};
exports.atan2Impl = function(p, y, x) {
  return function() {
    p.atan2(y, x);
  };
};
exports.cosImpl = function(p, angle) {
  return function() {
    p.cos(angle);
  };
};
exports.sinImpl = function(p, angle) {
  return function() {
    p.sin(angle);
  };
};
exports.tanImpl = function(p, angle) {
  return function() {
    p.tan(angle);
  };
};
exports.degreesImpl = function(p, radians) {
  return function() {
    p.degrees(radians);
  };
};
exports.radiansImpl = function(p, degrees) {
  return function() {
    p.radians(degrees);
  };
};
exports._toRadiansImpl = function(p, angle) {
  return function() {
    p._toRadians(angle);
  };
};
exports._toDegreesImpl = function(p, angle) {
  return function() {
    p._toDegrees(angle);
  };
};
exports._fromRadiansImpl = function(p, angle) {
  return function() {
    p._fromRadians(angle);
  };
};
exports.textLeadingImpl = function(p, leading) {
  return function() {
    p.textLeading(leading);
  };
};
exports.textSizeImpl = function(p, theSize) {
  return function() {
    p.textSize(theSize);
  };
};
exports.textWidthImpl = function(p, theText) {
  return function() {
    p.textWidth(theText);
  };
};
exports.floatImpl = function(p, str) {
  return function() {
    p.float(str);
  };
};
exports.uncharImpl = function(p, n) {
  return function() {
    p.unchar(n);
  };
};
exports.hexImpl = function(p, n, digits) {
  return function() {
    p.hex(n, digits);
  };
};
exports.unhexImpl = function(p, n) {
  return function() {
    p.unhex(n);
  };
};
exports.matchImpl = function(p, str, regexp) {
  return function() {
    p.match(str, regexp);
  };
};
exports.matchAllImpl = function(p, str, regexp) {
  return function() {
    p.matchAll(str, regexp);
  };
};
exports.nfpImpl = function(p, num, left, right) {
  return function() {
    p.nfp(num, left, right);
  };
};
exports.nfsImpl = function(p, num, left, right) {
  return function() {
    p.nfs(num, left, right);
  };
};
exports.splitImpl = function(p, value, delim) {
  return function() {
    p.split(value, delim);
  };
};
exports.splitTokensImpl = function(p, value, delim) {
  return function() {
    p.splitTokens(value, delim);
  };
};
exports.trimImpl = function(p, str) {
  return function() {
    p.trim(str);
  };
};
exports.planeImpl = function(p, width, height, detailX, detailY) {
  return function() {
    p.plane(width, height, detailX, detailY);
  };
};
exports.boxImpl = function(p, width, Height, depth, detailX, detailY) {
  return function() {
    p.box(width, Height, depth, detailX, detailY);
  };
};
exports.sphereImpl = function(p, radius, detailX, detailY) {
  return function() {
    p.sphere(radius, detailX, detailY);
  };
};
exports.cylinderImpl = function(p, radius, height, detailX, detailY, bottomCap, topCap) {
  return function() {
    p.cylinder(radius, height, detailX, detailY, bottomCap, topCap);
  };
};
exports.coneImpl = function(p, radius, height, detailX, detailY, cap) {
  return function() {
    p.cone(radius, height, detailX, detailY, cap);
  };
};
exports.ellipsoidImpl = function(p, radiusx, radiusy, radiusz, detailX, detailY) {
  return function() {
    p.ellipsoid(radiusx, radiusy, radiusz, detailX, detailY);
  };
};
exports.torusImpl = function(p, radius, tubeRadius, detailX, detailY) {
  return function() {
    p.torus(radius, tubeRadius, detailX, detailY);
  };
};
exports.orbitControlImpl = function(p, sensitivityX, sensitivityY) {
  return function() {
    p.orbitControl(sensitivityX, sensitivityY);
  };
};
exports.debugModeImpl = function(p, gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff) {
  return function() {
    p.debugMode(gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff);
  };
};
exports._gridImpl = function(p, size, div, xOff, yOff, zOff) {
  return function() {
    p._grid(size, div, xOff, yOff, zOff);
  };
};
exports._axesIconImpl = function(p, size, xOff, yOff, zOff) {
  return function() {
    p._axesIcon(size, xOff, yOff, zOff);
  };
};
exports.ambientLightImpl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.ambientLight(v1, v2, v3, alpha);
  };
};
exports.directionalLightImpl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    p.directionalLight(v1, v2, v3, x, y, z);
  };
};
exports.pointLightImpl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    p.pointLight(v1, v2, v3, x, y, z);
  };
};
exports.loadShaderImpl = function(p, vertFilename, fragFilename) {
  return function() {
    p.loadShader(vertFilename, fragFilename);
  };
};
exports.createShaderImpl = function(p, vertSrc, fragSrc) {
  return function() {
    p.createShader(vertSrc, fragSrc);
  };
};
exports.ambientMaterialImpl = function(p, v1, v2, v3, a) {
  return function() {
    p.ambientMaterial(v1, v2, v3, a);
  };
};
exports.specularMaterialImpl = function(p, v1, v2, v3, a) {
  return function() {
    p.specularMaterial(v1, v2, v3, a);
  };
};
exports.cameraImpl = function(p, x, y, z, centerX, centerY, centerZ, upX, upY, upZ) {
  return function() {
    p.camera(x, y, z, centerX, centerY, centerZ, upX, upY, upZ);
  };
};
exports.perspectiveImpl = function(p, fovy, aspect, near, far) {
  return function() {
    p.perspective(fovy, aspect, near, far);
  };
};
exports.orthoImpl = function(p, left, right, bottom, top, near, far) {
  return function() {
    p.ortho(left, right, bottom, top, near, far);
  };
};
exports.setAttributesImpl = function(p, key, value) {
  return function() {
    p.setAttributes(key, value);
  };
};