function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.absImpl = function(p, n) {
  return callP5(p, p.abs, [n]);
};
exports.acosImpl = function(p, value) {
  return callP5(p, p.acos, [value]);
};
exports.ambientLightImpl = function(p, value) {
  return function() {
    callP5(p, p.ambientLight, [value]);
  };
};
exports.ambientLight2Impl = function(p, values) {
  return function() {
    callP5(p, p.ambientLight, [values]);
  };
};
exports.ambientLight4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.ambientLight, [gray, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.ambientLight5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.ambientLight, [v1, v2, v3, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.ambientMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.ambientMaterial, [v1, v2.value0 ? v2.value0.value0 : undefined, v3.value0 ? v3.value0.value0 : undefined, a.value0 ? a.value0.value0 : undefined]);
  };
};
exports.applyMatrixImpl = function(p, a, b, c, d, e, f) {
  return function() {
    callP5(p, p.applyMatrix, [a, b, c, d, e, f]);
  };
};
exports.asinImpl = function(p, value) {
  return callP5(p, p.asin, [value]);
};
exports.atanImpl = function(p, value) {
  return callP5(p, p.atan, [value]);
};
exports.atan2Impl = function(p, y, x) {
  return callP5(p, p.atan2, [y, x]);
};
exports.background2Impl = function(p, values) {
  return function() {
    callP5(p, p.background, [values]);
  };
};
exports.background3Impl = function(p, colorstring, a) {
  return function() {
    callP5(p, p.background, [colorstring, a.value0 ? a.value0.value0 : undefined]);
  };
};
exports.background4Impl = function(p, gray, a) {
  return function() {
    callP5(p, p.background, [gray, a.value0 ? a.value0.value0 : undefined]);
  };
};
exports.background6Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.background, [v1, v2, v3, a.value0 ? a.value0.value0 : undefined]);
  };
};
exports.beginContourImpl = function(p) {
  return function() {
    callP5(p, p.beginContour, []);
  };
};
exports.bezierImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.bezier, [x1, y1, x2, y2, x3, y3, x4, y4]);
  };
};
exports.bezierDetailImpl = function(p, detail) {
  return function() {
    callP5(p, p.bezierDetail, [detail]);
  };
};
exports.bezierPointImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.bezierPoint, [a, b, c, d, t]);
};
exports.bezierTangentImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.bezierTangent, [a, b, c, d, t]);
};
exports.bezierVertexImpl = function(p, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.bezierVertex, [x2, y2, x3, y3, x4, y4]);
  };
};
exports.bezierVertex2Impl = function(p, x2, y2, z2, x3, y3, z3, x4, y4, z4) {
  return function() {
    callP5(p, p.bezierVertex, [x2, y2, z2, x3, y3, z3, x4, y4, z4]);
  };
};
exports.boxImpl = function(p, width, height, depth, detailX, detailY) {
  return function() {
    callP5(p, p.box, [width.value0 ? width.value0.value0 : undefined, height.value0 ? height.value0.value0 : undefined, depth.value0 ? depth.value0.value0 : undefined, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined]);
  };
};
exports.byteImpl = function(p, n) {
  return callP5(p, p.byte, [n.value0]);
};
exports.cameraImpl = function(p, x, y, z, centerX, centerY, centerZ, upX, upY, upZ) {
  return function() {
    callP5(p, p.camera, [x.value0 ? x.value0.value0 : undefined, y.value0 ? y.value0.value0 : undefined, z.value0 ? z.value0.value0 : undefined, centerX.value0 ? centerX.value0.value0 : undefined, centerY.value0 ? centerY.value0.value0 : undefined, centerZ.value0 ? centerZ.value0.value0 : undefined, upX.value0 ? upX.value0.value0 : undefined, upY.value0 ? upY.value0.value0 : undefined, upZ.value0 ? upZ.value0.value0 : undefined]);
  };
};
exports.ceilImpl = function(p, n) {
  return callP5(p, p.ceil, [n]);
};
exports.charImpl = function(p, n) {
  return callP5(p, p.char, [n.value0]);
};
exports.clearImpl = function(p) {
  return function() {
    callP5(p, p.clear, []);
  };
};
exports.coneImpl = function(p, radius, height, detailX, detailY, cap) {
  return function() {
    callP5(p, p.cone, [radius.value0 ? radius.value0.value0 : undefined, height.value0 ? height.value0.value0 : undefined, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined, cap.value0 ? cap.value0.value0 : undefined]);
  };
};
exports.constrainImpl = function(p, n, low, high) {
  return callP5(p, p.constrain, [n, low, high]);
};
exports.copyImpl = function(p, sx, sy, sw, sh, dx, dy, dw, dh) {
  return function() {
    callP5(p, p.copy, [sx, sy, sw, sh, dx, dy, dw, dh]);
  };
};
exports.cosImpl = function(p, angle) {
  return callP5(p, p.cos, [angle]);
};
exports.curveImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.curve, [x1, y1, x2, y2, x3, y3, x4, y4]);
  };
};
exports.curveDetailImpl = function(p, resolution) {
  return function() {
    callP5(p, p.curveDetail, [resolution]);
  };
};
exports.curvePointImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.curvePoint, [a, b, c, d, t]);
};
exports.curveTangentImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.curveTangent, [a, b, c, d, t]);
};
exports.curveTightnessImpl = function(p, amount) {
  return function() {
    callP5(p, p.curveTightness, [amount]);
  };
};
exports.curveVertexImpl = function(p, x, y) {
  return function() {
    callP5(p, p.curveVertex, [x, y]);
  };
};
exports.curveVertex2Impl = function(p, x, y, z) {
  return function() {
    callP5(p, p.curveVertex, [x, y, z.value0 ? z.value0.value0 : undefined]);
  };
};
exports.cylinderImpl = function(p, radius, height, detailX, detailY, bottomCap, topCap) {
  return function() {
    callP5(p, p.cylinder, [radius.value0 ? radius.value0.value0 : undefined, height.value0 ? height.value0.value0 : undefined, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined, bottomCap.value0 ? bottomCap.value0.value0 : undefined, topCap.value0 ? topCap.value0.value0 : undefined]);
  };
};
exports.dayImpl = function(p) {
  return callP5(p, p.day, []);
};
exports.debugModeImpl = function(p) {
  return function() {
    callP5(p, p.debugMode, []);
  };
};
exports.debugMode5Impl = function(p, gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff) {
  return function() {
    callP5(p, p.debugMode, [gridSize.value0 ? gridSize.value0.value0 : undefined, gridDivisions.value0 ? gridDivisions.value0.value0 : undefined, gridXOff.value0 ? gridXOff.value0.value0 : undefined, gridYOff.value0 ? gridYOff.value0.value0 : undefined, gridZOff.value0 ? gridZOff.value0.value0 : undefined, axesSize.value0 ? axesSize.value0.value0 : undefined, axesXOff.value0 ? axesXOff.value0.value0 : undefined, axesYOff.value0 ? axesYOff.value0.value0 : undefined, axesZOff.value0 ? axesZOff.value0.value0 : undefined]);
  };
};
exports.degreesImpl = function(p, radians) {
  return callP5(p, p.degrees, [radians]);
};
exports.deviceMovedImpl = function(p) {
  return function() {
    callP5(p, p.deviceMoved, []);
  };
};
exports.deviceShakenImpl = function(p) {
  return function() {
    callP5(p, p.deviceShaken, []);
  };
};
exports.deviceTurnedImpl = function(p) {
  return function() {
    callP5(p, p.deviceTurned, []);
  };
};
exports.directionalLight4Impl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    callP5(p, p.directionalLight, [v1, v2, v3, x, y, z]);
  };
};
exports.displayDensityImpl = function(p) {
  return callP5(p, p.displayDensity, []);
};
exports.distImpl = function(p, x1, y1, x2, y2) {
  return callP5(p, p.dist, [x1, y1, x2, y2]);
};
exports.dist2Impl = function(p, x1, y1, z1, x2, y2, z2) {
  return callP5(p, p.dist, [x1, y1, z1, x2, y2, z2]);
};
exports.ellipseImpl = function(p, x, y, w, h) {
  return function() {
    callP5(p, p.ellipse, [x, y, w, h.value0 ? h.value0.value0 : undefined]);
  };
};
exports.ellipse2Impl = function(p, x, y, w, h, detail) {
  return function() {
    callP5(p, p.ellipse, [x, y, w, h, detail]);
  };
};
exports.ellipsoidImpl = function(p, radiusx, radiusy, radiusz, detailX, detailY) {
  return function() {
    callP5(p, p.ellipsoid, [radiusx.value0 ? radiusx.value0.value0 : undefined, radiusy.value0 ? radiusy.value0.value0 : undefined, radiusz.value0 ? radiusz.value0.value0 : undefined, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined]);
  };
};
exports.endContourImpl = function(p) {
  return function() {
    callP5(p, p.endContour, []);
  };
};
exports.expImpl = function(p, n) {
  return callP5(p, p.exp, [n]);
};
exports.fillImpl = function(p, value) {
  return function() {
    callP5(p, p.fill, [value]);
  };
};
exports.fill2Impl = function(p, values) {
  return function() {
    callP5(p, p.fill, [values]);
  };
};
exports.fill4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.fill, [gray, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.fill5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.fill, [v1, v2, v3, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.floatImpl = function(p, str) {
  return callP5(p, p.float, [str]);
};
exports.floorImpl = function(p, n) {
  return callP5(p, p.floor, [n]);
};
exports.frameRateImpl = function(p) {
  return callP5(p, p.frameRate, []);
};
exports.frameRate2Impl = function(p, fps) {
  return function() {
    callP5(p, p.frameRate, [fps]);
  };
};
exports.fullscreenImpl = function(p, val) {
  return callP5(p, p.fullscreen, [val.value0 ? val.value0.value0 : undefined]);
};
exports.getURLImpl = function(p) {
  return callP5(p, p.getURL, []);
};
exports.getURLPathImpl = function(p) {
  return callP5(p, p.getURLPath, []);
};
exports.hexImpl = function(p, n, digits) {
  return callP5(p, p.hex, [n, digits.value0 ? digits.value0.value0 : undefined]);
};
exports.hex2Impl = function(p, ns, digits) {
  return callP5(p, p.hex, [ns, digits.value0 ? digits.value0.value0 : undefined]);
};
exports.hourImpl = function(p) {
  return callP5(p, p.hour, []);
};
exports.int2Impl = function(p, n, radix) {
  return callP5(p, p.int, [n.value0, radix.value0 ? radix.value0.value0 : undefined]);
};
exports.keyIsDownImpl = function(p, code) {
  return callP5(p, p.keyIsDown, [code]);
};
exports.keyPressedImpl = function(p) {
  return function() {
    callP5(p, p.keyPressed, []);
  };
};
exports.keyReleasedImpl = function(p) {
  return function() {
    callP5(p, p.keyReleased, []);
  };
};
exports.keyTypedImpl = function(p) {
  return function() {
    callP5(p, p.keyTyped, []);
  };
};
exports.lerpImpl = function(p, start, stop, amt) {
  return callP5(p, p.lerp, [start, stop, amt]);
};
exports.lineImpl = function(p, x1, y1, x2, y2) {
  return function() {
    callP5(p, p.line, [x1, y1, x2, y2]);
  };
};
exports.line2Impl = function(p, x1, y1, z1, x2, y2, z2) {
  return function() {
    callP5(p, p.line, [x1, y1, z1, x2, y2, z2]);
  };
};
exports.loadPixelsImpl = function(p) {
  return function() {
    callP5(p, p.loadPixels, []);
  };
};
exports.logImpl = function(p, n) {
  return callP5(p, p.log, [n]);
};
exports.loopImpl = function(p) {
  return function() {
    callP5(p, p.loop, []);
  };
};
exports.magImpl = function(p, a, b) {
  return callP5(p, p.mag, [a, b]);
};
exports.mapImpl = function(p, value, start1, stop1, start2, stop2, withinBounds) {
  return callP5(p, p.map, [value, start1, stop1, start2, stop2, withinBounds.value0 ? withinBounds.value0.value0 : undefined]);
};
exports.matchImpl = function(p, str, regexp) {
  return callP5(p, p.match, [str, regexp]);
};
exports.matchAllImpl = function(p, str, regexp) {
  return callP5(p, p.matchAll, [str, regexp]);
};
exports.maxImpl = function(p, nums) {
  return callP5(p, p.max, [nums]);
};
exports.max2Impl = function(p, n0, n1) {
  return callP5(p, p.max, [n0, n1]);
};
exports.millisImpl = function(p) {
  return callP5(p, p.millis, []);
};
exports.minImpl = function(p, nums) {
  return callP5(p, p.min, [nums]);
};
exports.min2Impl = function(p, n0, n1) {
  return callP5(p, p.min, [n0, n1]);
};
exports.minuteImpl = function(p) {
  return callP5(p, p.minute, []);
};
exports.monthImpl = function(p) {
  return callP5(p, p.month, []);
};
exports.nfImpl = function(p, num, left, right) {
  return callP5(p, p.nf, [num.value0, left.value0 ? left.value0.value0 : undefined, right.value0 ? right.value0.value0 : undefined]);
};
exports.nfcImpl = function(p, num, right) {
  return callP5(p, p.nfc, [num.value0, right.value0 ? right.value0.value0 : undefined]);
};
exports.nfpImpl = function(p, num, left, right) {
  return callP5(p, p.nfp, [num, left.value0 ? left.value0.value0 : undefined, right.value0 ? right.value0.value0 : undefined]);
};
exports.nfp2Impl = function(p, nums, left, right) {
  return callP5(p, p.nfp, [nums, left.value0 ? left.value0.value0 : undefined, right.value0 ? right.value0.value0 : undefined]);
};
exports.nfsImpl = function(p, num, left, right) {
  return callP5(p, p.nfs, [num, left.value0 ? left.value0.value0 : undefined, right.value0 ? right.value0.value0 : undefined]);
};
exports.noCanvasImpl = function(p) {
  return function() {
    callP5(p, p.noCanvas, []);
  };
};
exports.noCursorImpl = function(p) {
  return function() {
    callP5(p, p.noCursor, []);
  };
};
exports.noDebugModeImpl = function(p) {
  return function() {
    callP5(p, p.noDebugMode, []);
  };
};
exports.noFillImpl = function(p) {
  return function() {
    callP5(p, p.noFill, []);
  };
};
exports.noLoopImpl = function(p) {
  return function() {
    callP5(p, p.noLoop, []);
  };
};
exports.noSmoothImpl = function(p) {
  return function() {
    callP5(p, p.noSmooth, []);
  };
};
exports.noStrokeImpl = function(p) {
  return function() {
    callP5(p, p.noStroke, []);
  };
};
exports.noTintImpl = function(p) {
  return function() {
    callP5(p, p.noTint, []);
  };
};
exports.noiseImpl = function(p, x, y, z) {
  return callP5(p, p.noise, [x, y.value0 ? y.value0.value0 : undefined, z.value0 ? z.value0.value0 : undefined]);
};
exports.noiseDetailImpl = function(p, lod, falloff) {
  return function() {
    callP5(p, p.noiseDetail, [lod, falloff]);
  };
};
exports.noiseSeedImpl = function(p, seed) {
  return function() {
    callP5(p, p.noiseSeed, [seed]);
  };
};
exports.normImpl = function(p, value, start, stop) {
  return callP5(p, p.norm, [value, start, stop]);
};
exports.normalMaterialImpl = function(p) {
  return function() {
    callP5(p, p.normalMaterial, []);
  };
};
exports.orbitControlImpl = function(p, sensitivityX, sensitivityY) {
  return function() {
    callP5(p, p.orbitControl, [sensitivityX.value0 ? sensitivityX.value0.value0 : undefined, sensitivityY.value0 ? sensitivityY.value0.value0 : undefined]);
  };
};
exports.orthoImpl = function(p, left, right, bottom, top, near, far) {
  return function() {
    callP5(p, p.ortho, [left.value0 ? left.value0.value0 : undefined, right.value0 ? right.value0.value0 : undefined, bottom.value0 ? bottom.value0.value0 : undefined, top.value0 ? top.value0.value0 : undefined, near.value0 ? near.value0.value0 : undefined, far.value0 ? far.value0.value0 : undefined]);
  };
};
exports.perspectiveImpl = function(p, fovy, aspect, near, far) {
  return function() {
    callP5(p, p.perspective, [fovy.value0 ? fovy.value0.value0 : undefined, aspect.value0 ? aspect.value0.value0 : undefined, near.value0 ? near.value0.value0 : undefined, far.value0 ? far.value0.value0 : undefined]);
  };
};
exports.pixelDensityImpl = function(p) {
  return callP5(p, p.pixelDensity, []);
};
exports.pixelDensity2Impl = function(p, val) {
  return function() {
    callP5(p, p.pixelDensity, [val]);
  };
};
exports.planeImpl = function(p, width, height, detailX, detailY) {
  return function() {
    callP5(p, p.plane, [width.value0 ? width.value0.value0 : undefined, height.value0 ? height.value0.value0 : undefined, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined]);
  };
};
exports.pointImpl = function(p, x, y, z) {
  return function() {
    callP5(p, p.point, [x, y, z.value0 ? z.value0.value0 : undefined]);
  };
};
exports.pointLight4Impl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    callP5(p, p.pointLight, [v1, v2, v3, x, y, z]);
  };
};
exports.popImpl = function(p) {
  return function() {
    callP5(p, p.pop, []);
  };
};
exports.powImpl = function(p, n, e) {
  return callP5(p, p.pow, [n, e]);
};
exports.preloadImpl = function(p) {
  return function() {
    callP5(p, p.preload, []);
  };
};
exports.pushImpl = function(p) {
  return function() {
    callP5(p, p.push, []);
  };
};
exports.quadImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.quad, [x1, y1, x2, y2, x3, y3, x4, y4]);
  };
};
exports.quadraticVertexImpl = function(p, cx, cy, x3, y3) {
  return function() {
    callP5(p, p.quadraticVertex, [cx, cy, x3, y3]);
  };
};
exports.quadraticVertex2Impl = function(p, cx, cy, cz, x3, y3, z3) {
  return function() {
    callP5(p, p.quadraticVertex, [cx, cy, cz, x3, y3, z3]);
  };
};
exports.radiansImpl = function(p, degrees) {
  return callP5(p, p.radians, [degrees]);
};
exports.random2Impl = function(p, min, max) {
  return callP5(p, p.random, [min.value0 ? min.value0.value0 : undefined, max.value0 ? max.value0.value0 : undefined]);
};
exports.randomGaussianImpl = function(p, mean, sd) {
  return callP5(p, p.randomGaussian, [mean, sd]);
};
exports.randomSeedImpl = function(p, seed) {
  return function() {
    callP5(p, p.randomSeed, [seed]);
  };
};
exports.rectImpl = function(p, x, y, w, h, detailX, detailY) {
  return function() {
    callP5(p, p.rect, [x, y, w, h, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined]);
  };
};
exports.rect2Impl = function(p, x, y, w, h, tl, tr, br, bl) {
  return function() {
    callP5(p, p.rect, [x, y, w, h, tl.value0 ? tl.value0.value0 : undefined, tr.value0 ? tr.value0.value0 : undefined, br.value0 ? br.value0.value0 : undefined, bl.value0 ? bl.value0.value0 : undefined]);
  };
};
exports.redrawImpl = function(p, n) {
  return function() {
    callP5(p, p.redraw, [n.value0 ? n.value0.value0 : undefined]);
  };
};
exports.removeImpl = function(p) {
  return function() {
    callP5(p, p.remove, []);
  };
};
exports.resetMatrixImpl = function(p) {
  return function() {
    callP5(p, p.resetMatrix, []);
  };
};
exports.resizeCanvasImpl = function(p, w, h, noRedraw) {
  return function() {
    callP5(p, p.resizeCanvas, [w, h, noRedraw.value0 ? noRedraw.value0.value0 : undefined]);
  };
};
exports.rotateXImpl = function(p, angle) {
  return function() {
    callP5(p, p.rotateX, [angle]);
  };
};
exports.rotateYImpl = function(p, angle) {
  return function() {
    callP5(p, p.rotateY, [angle]);
  };
};
exports.rotateZImpl = function(p, angle) {
  return function() {
    callP5(p, p.rotateZ, [angle]);
  };
};
exports.roundImpl = function(p, n) {
  return callP5(p, p.round, [n]);
};
exports.saveCanvasImpl = function(p, filename, extension) {
  return function() {
    callP5(p, p.saveCanvas, [filename.value0 ? filename.value0.value0 : undefined, extension.value0 ? extension.value0.value0 : undefined]);
  };
};
exports.saveStringsImpl = function(p, list, filename, extension) {
  return function() {
    callP5(p, p.saveStrings, [list, filename, extension.value0 ? extension.value0.value0 : undefined]);
  };
};
exports.secondImpl = function(p) {
  return callP5(p, p.second, []);
};
exports.setAttributes2Impl = function(p, key, value) {
  return function() {
    callP5(p, p.setAttributes, [key, value]);
  };
};
exports.setMoveThresholdImpl = function(p, value) {
  return function() {
    callP5(p, p.setMoveThreshold, [value]);
  };
};
exports.setShakeThresholdImpl = function(p, value) {
  return function() {
    callP5(p, p.setShakeThreshold, [value]);
  };
};
exports.shearXImpl = function(p, angle) {
  return function() {
    callP5(p, p.shearX, [angle]);
  };
};
exports.shearYImpl = function(p, angle) {
  return function() {
    callP5(p, p.shearY, [angle]);
  };
};
exports.sinImpl = function(p, angle) {
  return callP5(p, p.sin, [angle]);
};
exports.smoothImpl = function(p) {
  return function() {
    callP5(p, p.smooth, []);
  };
};
exports.specularMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.specularMaterial, [v1, v2.value0 ? v2.value0.value0 : undefined, v3.value0 ? v3.value0.value0 : undefined, a.value0 ? a.value0.value0 : undefined]);
  };
};
exports.sphereImpl = function(p, radius, detailX, detailY) {
  return function() {
    callP5(p, p.sphere, [radius.value0 ? radius.value0.value0 : undefined, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined]);
  };
};
exports.splitImpl = function(p, value, delim) {
  return callP5(p, p.split, [value, delim]);
};
exports.splitTokensImpl = function(p, value, delim) {
  return callP5(p, p.splitTokens, [value, delim.value0 ? delim.value0.value0 : undefined]);
};
exports.sqImpl = function(p, n) {
  return callP5(p, p.sq, [n]);
};
exports.sqrtImpl = function(p, n) {
  return callP5(p, p.sqrt, [n]);
};
exports.strokeImpl = function(p, value) {
  return function() {
    callP5(p, p.stroke, [value]);
  };
};
exports.stroke2Impl = function(p, values) {
  return function() {
    callP5(p, p.stroke, [values]);
  };
};
exports.stroke4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.stroke, [gray, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.stroke5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.stroke, [v1, v2, v3, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.strokeWeightImpl = function(p, weight) {
  return function() {
    callP5(p, p.strokeWeight, [weight]);
  };
};
exports.tanImpl = function(p, angle) {
  return callP5(p, p.tan, [angle]);
};
exports.textAscentImpl = function(p) {
  return callP5(p, p.textAscent, []);
};
exports.textDescentImpl = function(p) {
  return callP5(p, p.textDescent, []);
};
exports.textLeadingImpl = function(p) {
  return callP5(p, p.textLeading, []);
};
exports.textLeading2Impl = function(p, leading) {
  return function() {
    callP5(p, p.textLeading, [leading]);
  };
};
exports.textSizeImpl = function(p) {
  return callP5(p, p.textSize, []);
};
exports.textSize2Impl = function(p, theSize) {
  return function() {
    callP5(p, p.textSize, [theSize]);
  };
};
exports.textStyleImpl = function(p) {
  return callP5(p, p.textStyle, []);
};
exports.textWidthImpl = function(p, theText) {
  return callP5(p, p.textWidth, [theText]);
};
exports.tintImpl = function(p, value) {
  return function() {
    callP5(p, p.tint, [value]);
  };
};
exports.tint2Impl = function(p, values) {
  return function() {
    callP5(p, p.tint, [values]);
  };
};
exports.tint4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.tint, [gray, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.tint5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.tint, [v1, v2, v3, alpha.value0 ? alpha.value0.value0 : undefined]);
  };
};
exports.torusImpl = function(p, radius, tubeRadius, detailX, detailY) {
  return function() {
    callP5(p, p.torus, [radius.value0 ? radius.value0.value0 : undefined, tubeRadius.value0 ? tubeRadius.value0.value0 : undefined, detailX.value0 ? detailX.value0.value0 : undefined, detailY.value0 ? detailY.value0.value0 : undefined]);
  };
};
exports.translate2Impl = function(p, x, y, z) {
  return function() {
    callP5(p, p.translate, [x, y, z.value0 ? z.value0.value0 : undefined]);
  };
};
exports.triangleImpl = function(p, x1, y1, x2, y2, x3, y3) {
  return function() {
    callP5(p, p.triangle, [x1, y1, x2, y2, x3, y3]);
  };
};
exports.trimImpl = function(p, str) {
  return callP5(p, p.trim, [str]);
};
exports.uncharImpl = function(p, n) {
  return callP5(p, p.unchar, [n]);
};
exports.unhexImpl = function(p, n) {
  return callP5(p, p.unhex, [n]);
};
exports.updatePixelsImpl = function(p, x, y, w, h) {
  return function() {
    callP5(p, p.updatePixels, [x.value0 ? x.value0.value0 : undefined, y.value0 ? y.value0.value0 : undefined, w.value0 ? w.value0.value0 : undefined, h.value0 ? h.value0.value0 : undefined]);
  };
};
exports.vertexImpl = function(p, x, y) {
  return function() {
    callP5(p, p.vertex, [x, y]);
  };
};
exports.vertex2Impl = function(p, x, y, z, u, v) {
  return function() {
    callP5(p, p.vertex, [x, y, z, u.value0 ? u.value0.value0 : undefined, v.value0 ? v.value0.value0 : undefined]);
  };
};
exports.windowResizedImpl = function(p) {
  return function() {
    callP5(p, p.windowResized, []);
  };
};
exports.yearImpl = function(p) {
  return callP5(p, p.year, []);
};