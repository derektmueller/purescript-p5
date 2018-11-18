exports.absImpl = function(p, n) {
  return function() {
    p.abs(n);
  };
};
exports.acosImpl = function(p, value) {
  return function() {
    p.acos(value);
  };
};
exports.ambientLightImpl = function(p, value) {
  return function() {
    p.ambientLight(value);
  };
};
exports.ambientLight_Impl = function(p, values) {
  return function() {
    p.ambientLight(values);
  };
};
exports.ambientLight__Impl = function(p, gray, alpha) {
  return function() {
    p.ambientLight(gray, alpha);
  };
};
exports.ambientLight___Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.ambientLight(v1, v2, v3, alpha);
  };
};
exports.ambientMaterialImpl = function(p, v1, v2, v3, a) {
  return function() {
    p.ambientMaterial(v1, v2, v3, a);
  };
};
exports.applyMatrixImpl = function(p, a, b, c, d, e, f) {
  return function() {
    p.applyMatrix(a, b, c, d, e, f);
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
exports.backgroundImpl = function(p, values) {
  return function() {
    p.background(values);
  };
};
exports.background_Impl = function(p, colorstring, a) {
  return function() {
    p.background(colorstring, a);
  };
};
exports.background__Impl = function(p, gray, a) {
  return function() {
    p.background(gray, a);
  };
};
exports.background___Impl = function(p, v1, v2, v3, a) {
  return function() {
    p.background(v1, v2, v3, a);
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
exports.bezierVertexImpl = function(p, x2, y2, x3, y3, x4, y4) {
  return function() {
    p.bezierVertex(x2, y2, x3, y3, x4, y4);
  };
};
exports.bezierVertex_Impl = function(p, x2, y2, z2, x3, y3, z3, x4, y4, z4) {
  return function() {
    p.bezierVertex(x2, y2, z2, x3, y3, z3, x4, y4, z4);
  };
};
exports.boxImpl = function(p, width, Height, depth, detailX, detailY) {
  return function() {
    p.box(width, Height, depth, detailX, detailY);
  };
};
exports.cameraImpl = function(p, x, y, z, centerX, centerY, centerZ, upX, upY, upZ) {
  return function() {
    p.camera(x, y, z, centerX, centerY, centerZ, upX, upY, upZ);
  };
};
exports.ceilImpl = function(p, n) {
  return function() {
    p.ceil(n);
  };
};
exports.coneImpl = function(p, radius, height, detailX, detailY, cap) {
  return function() {
    p.cone(radius, height, detailX, detailY, cap);
  };
};
exports.constrainImpl = function(p, n, low, high) {
  return function() {
    p.constrain(n, low, high);
  };
};
exports.copyImpl = function(p, sx, sy, sw, sh, dx, dy, dw, dh) {
  return function() {
    p.copy(sx, sy, sw, sh, dx, dy, dw, dh);
  };
};
exports.cosImpl = function(p, angle) {
  return function() {
    p.cos(angle);
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
exports.curveTightnessImpl = function(p, amount) {
  return function() {
    p.curveTightness(amount);
  };
};
exports.curveVertexImpl = function(p, x, y) {
  return function() {
    p.curveVertex(x, y);
  };
};
exports.curveVertex_Impl = function(p, x, y, z) {
  return function() {
    p.curveVertex(x, y, z);
  };
};
exports.cylinderImpl = function(p, radius, height, detailX, detailY, bottomCap, topCap) {
  return function() {
    p.cylinder(radius, height, detailX, detailY, bottomCap, topCap);
  };
};
exports.debugModeImpl = function(p, gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff) {
  return function() {
    p.debugMode(gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff);
  };
};
exports.degreesImpl = function(p, radians) {
  return function() {
    p.degrees(radians);
  };
};
exports.directionalLightImpl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    p.directionalLight(v1, v2, v3, x, y, z);
  };
};
exports.distImpl = function(p, x1, y1, x2, y2) {
  return function() {
    p.dist(x1, y1, x2, y2);
  };
};
exports.dist_Impl = function(p, x1, y1, z1, x2, y2, z2) {
  return function() {
    p.dist(x1, y1, z1, x2, y2, z2);
  };
};
exports.ellipseImpl = function(p, x, y, w, h) {
  return function() {
    p.ellipse(x, y, w, h);
  };
};
exports.ellipse_Impl = function(p, x, y, w, h, detail) {
  return function() {
    p.ellipse(x, y, w, h, detail);
  };
};
exports.ellipsoidImpl = function(p, radiusx, radiusy, radiusz, detailX, detailY) {
  return function() {
    p.ellipsoid(radiusx, radiusy, radiusz, detailX, detailY);
  };
};
exports.expImpl = function(p, n) {
  return function() {
    p.exp(n);
  };
};
exports.fillImpl = function(p, value) {
  return function() {
    p.fill(value);
  };
};
exports.fill_Impl = function(p, values) {
  return function() {
    p.fill(values);
  };
};
exports.fill__Impl = function(p, gray, alpha) {
  return function() {
    p.fill(gray, alpha);
  };
};
exports.fill___Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.fill(v1, v2, v3, alpha);
  };
};
exports.floatImpl = function(p, str) {
  return function() {
    p.float(str);
  };
};
exports.floorImpl = function(p, n) {
  return function() {
    p.floor(n);
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
exports.hexImpl = function(p, n, digits) {
  return function() {
    p.hex(n, digits);
  };
};
exports.hex_Impl = function(p, ns, digits) {
  return function() {
    p.hex(ns, digits);
  };
};
exports.keyIsDownImpl = function(p, code) {
  return function() {
    p.keyIsDown(code);
  };
};
exports.lerpImpl = function(p, start, stop, amt) {
  return function() {
    p.lerp(start, stop, amt);
  };
};
exports.lineImpl = function(p, x1, y1, x2, y2) {
  return function() {
    p.line(x1, y1, x2, y2);
  };
};
exports.line_Impl = function(p, x1, y1, z1, x2, y2, z2) {
  return function() {
    p.line(x1, y1, z1, x2, y2, z2);
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
exports.maxImpl = function(p, nums) {
  return function() {
    p.max(nums);
  };
};
exports.max_Impl = function(p, n0, n1) {
  return function() {
    p.max(n0, n1);
  };
};
exports.minImpl = function(p, nums) {
  return function() {
    p.min(nums);
  };
};
exports.min_Impl = function(p, n0, n1) {
  return function() {
    p.min(n0, n1);
  };
};
exports.nfpImpl = function(p, num, left, right) {
  return function() {
    p.nfp(num, left, right);
  };
};
exports.nfp_Impl = function(p, nums, left, right) {
  return function() {
    p.nfp(nums, left, right);
  };
};
exports.nfsImpl = function(p, num, left, right) {
  return function() {
    p.nfs(num, left, right);
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
exports.normImpl = function(p, value, start, stop) {
  return function() {
    p.norm(value, start, stop);
  };
};
exports.orbitControlImpl = function(p, sensitivityX, sensitivityY) {
  return function() {
    p.orbitControl(sensitivityX, sensitivityY);
  };
};
exports.orthoImpl = function(p, left, right, bottom, top, near, far) {
  return function() {
    p.ortho(left, right, bottom, top, near, far);
  };
};
exports.perspectiveImpl = function(p, fovy, aspect, near, far) {
  return function() {
    p.perspective(fovy, aspect, near, far);
  };
};
exports.pixelDensityImpl = function(p, val) {
  return function() {
    p.pixelDensity(val);
  };
};
exports.planeImpl = function(p, width, height, detailX, detailY) {
  return function() {
    p.plane(width, height, detailX, detailY);
  };
};
exports.pointImpl = function(p, x, y, z) {
  return function() {
    p.point(x, y, z);
  };
};
exports.pointLightImpl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    p.pointLight(v1, v2, v3, x, y, z);
  };
};
exports.powImpl = function(p, n, e) {
  return function() {
    p.pow(n, e);
  };
};
exports.quadImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    p.quad(x1, y1, x2, y2, x3, y3, x4, y4);
  };
};
exports.quadraticVertexImpl = function(p, cx, cy, x3, y3) {
  return function() {
    p.quadraticVertex(cx, cy, x3, y3);
  };
};
exports.quadraticVertex_Impl = function(p, cx, cy, cz, x3, y3, z3) {
  return function() {
    p.quadraticVertex(cx, cy, cz, x3, y3, z3);
  };
};
exports.radiansImpl = function(p, degrees) {
  return function() {
    p.radians(degrees);
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
exports.randomSeedImpl = function(p, seed) {
  return function() {
    p.randomSeed(seed);
  };
};
exports.rectImpl = function(p, x, y, w, h, detailX, detailY) {
  return function() {
    p.rect(x, y, w, h, detailX, detailY);
  };
};
exports.rect_Impl = function(p, x, y, w, h, tl, tr, br, bl) {
  return function() {
    p.rect(x, y, w, h, tl, tr, br, bl);
  };
};
exports.redrawImpl = function(p, n) {
  return function() {
    p.redraw(n);
  };
};
exports.resizeCanvasImpl = function(p, w, h, noRedraw) {
  return function() {
    p.resizeCanvas(w, h, noRedraw);
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
exports.roundImpl = function(p, n) {
  return function() {
    p.round(n);
  };
};
exports.saveCanvasImpl = function(p, filename, extension) {
  return function() {
    p.saveCanvas(filename, extension);
  };
};
exports.saveStringsImpl = function(p, list, filename, extension) {
  return function() {
    p.saveStrings(list, filename, extension);
  };
};
exports.setAttributesImpl = function(p, key, value) {
  return function() {
    p.setAttributes(key, value);
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
exports.sinImpl = function(p, angle) {
  return function() {
    p.sin(angle);
  };
};
exports.specularMaterialImpl = function(p, v1, v2, v3, a) {
  return function() {
    p.specularMaterial(v1, v2, v3, a);
  };
};
exports.sphereImpl = function(p, radius, detailX, detailY) {
  return function() {
    p.sphere(radius, detailX, detailY);
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
exports.strokeImpl = function(p, value) {
  return function() {
    p.stroke(value);
  };
};
exports.stroke_Impl = function(p, values) {
  return function() {
    p.stroke(values);
  };
};
exports.stroke__Impl = function(p, gray, alpha) {
  return function() {
    p.stroke(gray, alpha);
  };
};
exports.stroke___Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.stroke(v1, v2, v3, alpha);
  };
};
exports.strokeWeightImpl = function(p, weight) {
  return function() {
    p.strokeWeight(weight);
  };
};
exports.tanImpl = function(p, angle) {
  return function() {
    p.tan(angle);
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
exports.tintImpl = function(p, value) {
  return function() {
    p.tint(value);
  };
};
exports.tint_Impl = function(p, values) {
  return function() {
    p.tint(values);
  };
};
exports.tint__Impl = function(p, gray, alpha) {
  return function() {
    p.tint(gray, alpha);
  };
};
exports.tint___Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    p.tint(v1, v2, v3, alpha);
  };
};
exports.torusImpl = function(p, radius, tubeRadius, detailX, detailY) {
  return function() {
    p.torus(radius, tubeRadius, detailX, detailY);
  };
};
exports.translateImpl = function(p, x, y, z) {
  return function() {
    p.translate(x, y, z);
  };
};
exports.triangleImpl = function(p, x1, y1, x2, y2, x3, y3) {
  return function() {
    p.triangle(x1, y1, x2, y2, x3, y3);
  };
};
exports.trimImpl = function(p, str) {
  return function() {
    p.trim(str);
  };
};
exports.uncharImpl = function(p, n) {
  return function() {
    p.unchar(n);
  };
};
exports.unhexImpl = function(p, n) {
  return function() {
    p.unhex(n);
  };
};
exports.updatePixelsImpl = function(p, x, y, w, h) {
  return function() {
    p.updatePixels(x, y, w, h);
  };
};
exports.vertexImpl = function(p, x, y) {
  return function() {
    p.vertex(x, y);
  };
};
exports.vertex_Impl = function(p, x, y, z, u, v) {
  return function() {
    p.vertex(x, y, z, u, v);
  };
};