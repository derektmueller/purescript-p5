function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.cursorImpl = function(p, _type, x, y) {
  return function() {
    callP5(p, p.cursor, [_type.value0, x.value0 !== undefined ? x.value0 : undefined, y.value0 !== undefined ? y.value0 : undefined]);
  };
};
exports.displayDensityImpl = function(p) {
  return callP5(p, p.displayDensity, []);
};

exports.frameCountImpl = function(p) {
    return p.frameCount;
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
  return callP5(p, p.fullscreen, [val.value0 !== undefined ? val.value0 : undefined]);
};
exports.getURLImpl = function(p) {
  return callP5(p, p.getURL, []);
};
exports.getURLPathImpl = function(p) {
  return callP5(p, p.getURLPath, []);
};
exports.heightImpl = function(p) {
  return p.height;
};
exports.noCursorImpl = function(p) {
  return function() {
    callP5(p, p.noCursor, []);
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
exports.widthImpl = function(p) {
  return p.width;
};
exports.windowResizedImpl = function(p) {
  return function() {
    callP5(p, p.windowResized, []);
  };
};
