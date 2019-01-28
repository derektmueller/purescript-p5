function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.blendImpl = function(p, sx, sy, sw, sh, dx, dy, dw, dh, blendMode) {
  return function() {
    callP5(p, p.blend, [sx, sy, sw, sh, dx, dy, dw, dh, p[blendMode.constructor.name.replace(new RegExp('^BLEND_MODE_'), '')]]);
  };
};
exports.copyImpl = function(p, sx, sy, sw, sh, dx, dy, dw, dh) {
  return function() {
    callP5(p, p.copy, [sx, sy, sw, sh, dx, dy, dw, dh]);
  };
};
exports.copy2Impl = function(p, srcImage, sx, sy, sw, sh, dx, dy, dw, dh) {
  return function() {
    callP5(p, p.copy, [srcImage.value0, sx, sy, sw, sh, dx, dy, dw, dh]);
  };
};
exports.filterImpl = function(p, filterType, filterParam) {
  return function() {
    callP5(p, p.filter, [p[filterType.constructor.name.replace(new RegExp('^FILTER_TYPE_'), '')], filterParam.value0 !== undefined ? filterParam.value0 : undefined]);
  };
};
exports.getImpl = function(p, x, y, w, h) {
  return callP5(p, p.get, [x.value0 !== undefined ? x.value0 : undefined, y.value0 !== undefined ? y.value0 : undefined, w.value0 !== undefined ? w.value0 : undefined, h.value0 !== undefined ? h.value0 : undefined]);
};
exports.loadPixelsImpl = function(p) {
  return function() {
    callP5(p, p.loadPixels, []);
  };
};
exports.setImpl = function(p, x, y, c) {
  return function() {
    callP5(p, p.set, [x, y, c.value0]);
  };
};
exports.updatePixelsImpl = function(p, x, y, w, h) {
  return function() {
    callP5(p, p.updatePixels, [x.value0 !== undefined ? x.value0 : undefined, y.value0 !== undefined ? y.value0 : undefined, w.value0 !== undefined ? w.value0 : undefined, h.value0 !== undefined ? h.value0 : undefined]);
  };
};