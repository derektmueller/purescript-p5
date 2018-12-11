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
exports.alphaImpl = function(p, color) {
  return callP5(p, p.alpha, [color.value0]);
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
exports.ambientLight3Impl = function(p, color) {
  return function() {
    callP5(p, p.ambientLight, [color]);
  };
};
exports.ambientLight4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.ambientLight, [gray, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.ambientLight5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.ambientLight, [v1, v2, v3, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.ambientMaterialImpl = function(p, color) {
  return function() {
    callP5(p, p.ambientMaterial, [color.value0]);
  };
};
exports.ambientMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.ambientMaterial, [v1, v2.value0 ? v2.value0 : undefined, v3.value0 ? v3.value0 : undefined, a.value0 ? a.value0 : undefined]);
  };
};
exports.angleModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.angleMode, [p[mode.constructor.name.replace(new RegExp('^ANGLE_MODE_'), '')]]);
  };
};
exports.applyMatrixImpl = function(p, a, b, c, d, e, f) {
  return function() {
    callP5(p, p.applyMatrix, [a, b, c, d, e, f]);
  };
};
exports.arcImpl = function(p, x, y, w, h, start, stop, mode, detail) {
  return function() {
    callP5(p, p.arc, [x, y, w, h, start, stop, mode.value0 ? mode.value0 : undefined, detail.value0 ? detail.value0 : undefined]);
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
exports.backgroundImpl = function(p, color) {
  return function() {
    callP5(p, p.background, [color]);
  };
};
exports.background2Impl = function(p, values) {
  return function() {
    callP5(p, p.background, [values]);
  };
};
exports.background3Impl = function(p, colorstring, a) {
  return function() {
    callP5(p, p.background, [colorstring, a.value0 ? a.value0 : undefined]);
  };
};
exports.background4Impl = function(p, gray, a) {
  return function() {
    callP5(p, p.background, [gray, a.value0 ? a.value0 : undefined]);
  };
};
exports.background5Impl = function(p, image, a) {
  return function() {
    callP5(p, p.background, [image, a.value0 ? a.value0 : undefined]);
  };
};
exports.background6Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.background, [v1, v2, v3, a.value0 ? a.value0 : undefined]);
  };
};
exports.beginContourImpl = function(p) {
  return function() {
    callP5(p, p.beginContour, []);
  };
};
exports.beginShapeImpl = function(p, kind) {
  return function() {
    callP5(p, p.beginShape, [kind.value0 ? kind.value0 : undefined]);
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
exports.blendImpl = function(p, sx, sy, sw, sh, dx, dy, dw, dh, blendMode) {
  return function() {
    callP5(p, p.blend, [sx, sy, sw, sh, dx, dy, dw, dh, p[blendMode.constructor.name.replace(new RegExp('^BLEND_MODE_'), '')]]);
  };
};
exports.blendModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.blendMode, [p[mode.constructor.name.replace(new RegExp('^BLEND_MODE_'), '')]]);
  };
};
exports.blueImpl = function(p, color) {
  return callP5(p, p.blue, [color.value0]);
};
exports.boxImpl = function(p, width, height, depth, detailX, detailY) {
  return function() {
    callP5(p, p.box, [width.value0 ? width.value0 : undefined, height.value0 ? height.value0 : undefined, depth.value0 ? depth.value0 : undefined, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined]);
  };
};
exports.brightnessImpl = function(p, color) {
  return callP5(p, p.brightness, [color.value0]);
};
exports.byteImpl = function(p, n) {
  return callP5(p, p.byte, [n.value0]);
};
exports.cameraImpl = function(p, x, y, z, centerX, centerY, centerZ, upX, upY, upZ) {
  return function() {
    callP5(p, p.camera, [x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined, z.value0 ? z.value0 : undefined, centerX.value0 ? centerX.value0 : undefined, centerY.value0 ? centerY.value0 : undefined, centerZ.value0 ? centerZ.value0 : undefined, upX.value0 ? upX.value0 : undefined, upY.value0 ? upY.value0 : undefined, upZ.value0 ? upZ.value0 : undefined]);
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
exports.colorImpl = function(p, value) {
  return callP5(p, p.color, [value]);
};
exports.color2Impl = function(p, values) {
  return callP5(p, p.color, [values]);
};
exports.color3Impl = function(p, color) {
  return callP5(p, p.color, [color]);
};
exports.color4Impl = function(p, gray, alpha) {
  return callP5(p, p.color, [gray, alpha.value0 ? alpha.value0 : undefined]);
};
exports.color5Impl = function(p, v1, v2, v3, alpha) {
  return callP5(p, p.color, [v1, v2, v3, alpha.value0 ? alpha.value0 : undefined]);
};
exports.colorModeImpl = function(p, mode, max) {
  return function() {
    callP5(p, p.colorMode, [p[mode.constructor.name.replace(new RegExp('^COLOR_MODE_'), '')], max.value0 ? max.value0 : undefined]);
  };
};
exports.colorMode2Impl = function(p, mode, max1, max2, max3, maxA) {
  return function() {
    callP5(p, p.colorMode, [p[mode.constructor.name.replace(new RegExp('^COLOR_MODE_'), '')], max1, max2, max3, maxA.value0 ? maxA.value0 : undefined]);
  };
};
exports.coneImpl = function(p, radius, height, detailX, detailY, cap) {
  return function() {
    callP5(p, p.cone, [radius.value0 ? radius.value0 : undefined, height.value0 ? height.value0 : undefined, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined, cap.value0 ? cap.value0 : undefined]);
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
exports.createImageImpl = function(p, width, height) {
  return callP5(p, p.createImage, [width, height]);
};
exports.createVectorImpl = function(p, x, y, z) {
  return callP5(p, p.createVector, [x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined, z.value0 ? z.value0 : undefined]);
};
exports.cursorImpl = function(p, _type, x, y) {
  return function() {
    callP5(p, p.cursor, [_type.value0, x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined]);
  };
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
    callP5(p, p.curveVertex, [x, y, z.value0 ? z.value0 : undefined]);
  };
};
exports.cylinderImpl = function(p, radius, height, detailX, detailY, bottomCap, topCap) {
  return function() {
    callP5(p, p.cylinder, [radius.value0 ? radius.value0 : undefined, height.value0 ? height.value0 : undefined, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined, bottomCap.value0 ? bottomCap.value0 : undefined, topCap.value0 ? topCap.value0 : undefined]);
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
exports.debugMode2Impl = function(p, mode) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')]]);
  };
};
exports.debugMode3Impl = function(p, mode, axesSize, xOff, yOff, zOff) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')], axesSize.value0 ? axesSize.value0 : undefined, xOff.value0 ? xOff.value0 : undefined, yOff.value0 ? yOff.value0 : undefined, zOff.value0 ? zOff.value0 : undefined]);
  };
};
exports.debugMode4Impl = function(p, mode, gridSize, gridDivisions, xOff, yOff, zOff) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')], gridSize.value0 ? gridSize.value0 : undefined, gridDivisions.value0 ? gridDivisions.value0 : undefined, xOff.value0 ? xOff.value0 : undefined, yOff.value0 ? yOff.value0 : undefined, zOff.value0 ? zOff.value0 : undefined]);
  };
};
exports.debugMode5Impl = function(p, gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff) {
  return function() {
    callP5(p, p.debugMode, [gridSize.value0 ? gridSize.value0 : undefined, gridDivisions.value0 ? gridDivisions.value0 : undefined, gridXOff.value0 ? gridXOff.value0 : undefined, gridYOff.value0 ? gridYOff.value0 : undefined, gridZOff.value0 ? gridZOff.value0 : undefined, axesSize.value0 ? axesSize.value0 : undefined, axesXOff.value0 ? axesXOff.value0 : undefined, axesYOff.value0 ? axesYOff.value0 : undefined, axesZOff.value0 ? axesZOff.value0 : undefined]);
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
exports.directionalLightImpl = function(p, color, position) {
  return function() {
    callP5(p, p.directionalLight, [color.value0, position]);
  };
};
exports.directionalLight2Impl = function(p, v1, v2, v3, position) {
  return function() {
    callP5(p, p.directionalLight, [v1, v2, v3, position]);
  };
};
exports.directionalLight3Impl = function(p, color, x, y, z) {
  return function() {
    callP5(p, p.directionalLight, [color.value0, x, y, z]);
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
    callP5(p, p.ellipse, [x, y, w, h.value0 ? h.value0 : undefined]);
  };
};
exports.ellipse2Impl = function(p, x, y, w, h, detail) {
  return function() {
    callP5(p, p.ellipse, [x, y, w, h, detail]);
  };
};
exports.ellipseModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.ellipseMode, [p[mode.constructor.name.replace(new RegExp('^ELLIPSE_MODE_'), '')]]);
  };
};
exports.ellipsoidImpl = function(p, radiusx, radiusy, radiusz, detailX, detailY) {
  return function() {
    callP5(p, p.ellipsoid, [radiusx.value0 ? radiusx.value0 : undefined, radiusy.value0 ? radiusy.value0 : undefined, radiusz.value0 ? radiusz.value0 : undefined, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined]);
  };
};
exports.endContourImpl = function(p) {
  return function() {
    callP5(p, p.endContour, []);
  };
};
exports.endShapeImpl = function(p, mode) {
  return function() {
    callP5(p, p.endShape, [mode.value0 ? mode.value0 : undefined]);
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
exports.fill3Impl = function(p, color) {
  return function() {
    callP5(p, p.fill, [color]);
  };
};
exports.fill4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.fill, [gray, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.fill5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.fill, [v1, v2, v3, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.filterImpl = function(p, filterType, filterParam) {
  return function() {
    callP5(p, p.filter, [p[filterType.constructor.name.replace(new RegExp('^FILTER_TYPE_'), '')], filterParam.value0 ? filterParam.value0 : undefined]);
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
  return callP5(p, p.fullscreen, [val.value0 ? val.value0 : undefined]);
};
exports.getImpl = function(p, x, y, w, h) {
  return callP5(p, p.get, [x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined, w.value0 ? w.value0 : undefined, h.value0 ? h.value0 : undefined]);
};
exports.getURLImpl = function(p) {
  return callP5(p, p.getURL, []);
};
exports.getURLPathImpl = function(p) {
  return callP5(p, p.getURLPath, []);
};
exports.greenImpl = function(p, color) {
  return callP5(p, p.green, [color.value0]);
};
exports.hexImpl = function(p, n, digits) {
  return callP5(p, p.hex, [n, digits.value0 ? digits.value0 : undefined]);
};
exports.hex2Impl = function(p, ns, digits) {
  return callP5(p, p.hex, [ns, digits.value0 ? digits.value0 : undefined]);
};
exports.hourImpl = function(p) {
  return callP5(p, p.hour, []);
};
exports.hueImpl = function(p, color) {
  return callP5(p, p.hue, [color.value0]);
};
exports.imageModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.imageMode, [p[mode.constructor.name.replace(new RegExp('^IMAGE_MODE_'), '')]]);
  };
};
exports.int2Impl = function(p, n, radix) {
  return callP5(p, p.int, [n.value0, radix.value0 ? radix.value0 : undefined]);
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
exports.lerpColorImpl = function(p, c1, c2, amt) {
  return callP5(p, p.lerpColor, [c1, c2, amt]);
};
exports.lightnessImpl = function(p, color) {
  return callP5(p, p.lightness, [color.value0]);
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
exports.loadStringsImpl = function(p, filename, callback, errorCallback) {
  return callP5(p, p.loadStrings, [filename, callback.value0 ? callback.value0 : undefined, errorCallback.value0 ? errorCallback.value0 : undefined]);
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
  return callP5(p, p.map, [value, start1, stop1, start2, stop2, withinBounds.value0 ? withinBounds.value0 : undefined]);
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
  return callP5(p, p.nfp, [num, left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined]);
};
exports.nfp2Impl = function(p, nums, left, right) {
  return callP5(p, p.nfp, [nums, left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined]);
};
exports.nfsImpl = function(p, num, left, right) {
  return callP5(p, p.nfs, [num, left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined]);
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
  return callP5(p, p.noise, [x, y.value0 ? y.value0 : undefined, z.value0 ? z.value0 : undefined]);
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
    callP5(p, p.orbitControl, [sensitivityX.value0 ? sensitivityX.value0 : undefined, sensitivityY.value0 ? sensitivityY.value0 : undefined]);
  };
};
exports.orthoImpl = function(p, left, right, bottom, top, near, far) {
  return function() {
    callP5(p, p.ortho, [left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined, bottom.value0 ? bottom.value0 : undefined, top.value0 ? top.value0 : undefined, near.value0 ? near.value0 : undefined, far.value0 ? far.value0 : undefined]);
  };
};
exports.perspectiveImpl = function(p, fovy, aspect, near, far) {
  return function() {
    callP5(p, p.perspective, [fovy.value0 ? fovy.value0 : undefined, aspect.value0 ? aspect.value0 : undefined, near.value0 ? near.value0 : undefined, far.value0 ? far.value0 : undefined]);
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
    callP5(p, p.plane, [width.value0 ? width.value0 : undefined, height.value0 ? height.value0 : undefined, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined]);
  };
};
exports.pointImpl = function(p, x, y, z) {
  return function() {
    callP5(p, p.point, [x, y, z.value0 ? z.value0 : undefined]);
  };
};
exports.pointLightImpl = function(p, color, position) {
  return function() {
    callP5(p, p.pointLight, [color.value0, position]);
  };
};
exports.pointLight2Impl = function(p, v1, v2, v3, position) {
  return function() {
    callP5(p, p.pointLight, [v1, v2, v3, position]);
  };
};
exports.pointLight3Impl = function(p, color, x, y, z) {
  return function() {
    callP5(p, p.pointLight, [color.value0, x, y, z]);
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
  return callP5(p, p.random, [min.value0 ? min.value0 : undefined, max.value0 ? max.value0 : undefined]);
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
    callP5(p, p.rect, [x, y, w, h, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined]);
  };
};
exports.rect2Impl = function(p, x, y, w, h, tl, tr, br, bl) {
  return function() {
    callP5(p, p.rect, [x, y, w, h, tl.value0 ? tl.value0 : undefined, tr.value0 ? tr.value0 : undefined, br.value0 ? br.value0 : undefined, bl.value0 ? bl.value0 : undefined]);
  };
};
exports.rectModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.rectMode, [p[mode.constructor.name.replace(new RegExp('^RECT_MODE_'), '')]]);
  };
};
exports.redImpl = function(p, color) {
  return callP5(p, p.red, [color.value0]);
};
exports.redrawImpl = function(p, n) {
  return function() {
    callP5(p, p.redraw, [n.value0 ? n.value0 : undefined]);
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
    callP5(p, p.resizeCanvas, [w, h, noRedraw.value0 ? noRedraw.value0 : undefined]);
  };
};
exports.rotateImpl = function(p, angle, axis) {
  return function() {
    callP5(p, p.rotate, [angle, axis.value0 ? axis.value0.value0 : undefined]);
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
exports.saturationImpl = function(p, color) {
  return callP5(p, p.saturation, [color.value0]);
};
exports.saveCanvasImpl = function(p, filename, extension) {
  return function() {
    callP5(p, p.saveCanvas, [filename.value0 ? filename.value0 : undefined, extension.value0 ? extension.value0 : undefined]);
  };
};
exports.saveStringsImpl = function(p, list, filename, extension) {
  return function() {
    callP5(p, p.saveStrings, [list, filename, extension.value0 ? extension.value0 : undefined]);
  };
};
exports.scaleImpl = function(p, scales) {
  return function() {
    callP5(p, p.scale, [scales.value0]);
  };
};
exports.scale2Impl = function(p, s, y, z) {
  return function() {
    callP5(p, p.scale, [s.value0, y.value0 ? y.value0 : undefined, z.value0 ? z.value0 : undefined]);
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
exports.specularMaterialImpl = function(p, color) {
  return function() {
    callP5(p, p.specularMaterial, [color.value0]);
  };
};
exports.specularMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.specularMaterial, [v1, v2.value0 ? v2.value0 : undefined, v3.value0 ? v3.value0 : undefined, a.value0 ? a.value0 : undefined]);
  };
};
exports.sphereImpl = function(p, radius, detailX, detailY) {
  return function() {
    callP5(p, p.sphere, [radius.value0 ? radius.value0 : undefined, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined]);
  };
};
exports.splitImpl = function(p, value, delim) {
  return callP5(p, p.split, [value, delim]);
};
exports.splitTokensImpl = function(p, value, delim) {
  return callP5(p, p.splitTokens, [value, delim.value0 ? delim.value0 : undefined]);
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
exports.stroke3Impl = function(p, color) {
  return function() {
    callP5(p, p.stroke, [color]);
  };
};
exports.stroke4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.stroke, [gray, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.stroke5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.stroke, [v1, v2, v3, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.strokeCapImpl = function(p, cap) {
  return function() {
    callP5(p, p.strokeCap, [p[cap.constructor.name.replace(new RegExp('^STROKE_CAP_'), '')]]);
  };
};
exports.strokeJoinImpl = function(p, join) {
  return function() {
    callP5(p, p.strokeJoin, [p[join.constructor.name.replace(new RegExp('^STROKE_JOIN_'), '')]]);
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
exports.textAlign2Impl = function(p, horizAlign, vertAlign) {
  return function() {
    callP5(p, p.textAlign, [p[horizAlign.constructor.name.replace(new RegExp('^TEXT_ALIGN_HORIZ_ALIGN_'), '')], vertAlign.value0 ? vertAlign.value0 : undefined]);
  };
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
exports.textStyle2Impl = function(p, theStyle) {
  return function() {
    callP5(p, p.textStyle, [p[theStyle.constructor.name.replace(new RegExp('^TEXT_STYLE_'), '')]]);
  };
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
exports.tint3Impl = function(p, color) {
  return function() {
    callP5(p, p.tint, [color]);
  };
};
exports.tint4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.tint, [gray, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.tint5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.tint, [v1, v2, v3, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.torusImpl = function(p, radius, tubeRadius, detailX, detailY) {
  return function() {
    callP5(p, p.torus, [radius.value0 ? radius.value0 : undefined, tubeRadius.value0 ? tubeRadius.value0 : undefined, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined]);
  };
};
exports.translateImpl = function(p, vector) {
  return function() {
    callP5(p, p.translate, [vector]);
  };
};
exports.translate2Impl = function(p, x, y, z) {
  return function() {
    callP5(p, p.translate, [x, y, z.value0 ? z.value0 : undefined]);
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
    callP5(p, p.updatePixels, [x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined, w.value0 ? w.value0 : undefined, h.value0 ? h.value0 : undefined]);
  };
};
exports.vertexImpl = function(p, x, y) {
  return function() {
    callP5(p, p.vertex, [x, y]);
  };
};
exports.vertex2Impl = function(p, x, y, z, u, v) {
  return function() {
    callP5(p, p.vertex, [x, y, z, u.value0 ? u.value0 : undefined, v.value0 ? v.value0 : undefined]);
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