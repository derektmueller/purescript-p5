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
exports.createImageImpl = function(p, width, height) {
  return callP5(p, p.createImage, [width, height]);
};
exports.filterImpl = function(p, filterType, filterParam) {
  return function() {
    callP5(p, p.filter, [p[filterType.constructor.name.replace(new RegExp('^FILTER_TYPE_'), '')], filterParam.value0 ? filterParam.value0 : undefined]);
  };
};
exports.getImpl = function(p, x, y, w, h) {
  return callP5(p, p.get, [x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined, w.value0 ? w.value0 : undefined, h.value0 ? h.value0 : undefined]);
};
exports.imageImpl = function(p, img, x, y, width, height) {
  return function() {
    callP5(p, p.image, [img.value0, x, y, width.value0 ? width.value0 : undefined, height.value0 ? height.value0 : undefined]);
  };
};
exports.image2Impl = function(p, img, dx, dy, dWidth, dHeight, sx, sy, sWidth, sHeight) {
  return function() {
    callP5(p, p.image, [img.value0, dx, dy, dWidth, dHeight, sx, sy, sWidth.value0 ? sWidth.value0 : undefined, sHeight.value0 ? sHeight.value0 : undefined]);
  };
};
exports.imageModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.imageMode, [p[mode.constructor.name.replace(new RegExp('^IMAGE_MODE_'), '')]]);
  };
};
exports.loadPixelsImpl = function(p) {
  return function() {
    callP5(p, p.loadPixels, []);
  };
};
exports.noTintImpl = function(p) {
  return function() {
    callP5(p, p.noTint, []);
  };
};
exports.saveCanvasImpl = function(p, filename, extension) {
  return function() {
    callP5(p, p.saveCanvas, [filename.value0 ? filename.value0 : undefined, extension.value0 ? extension.value0 : undefined]);
  };
};
exports.setImpl = function(p, x, y, c) {
  return function() {
    callP5(p, p.set, [x, y, c.value0]);
  };
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
exports.updatePixelsImpl = function(p, x, y, w, h) {
  return function() {
    callP5(p, p.updatePixels, [x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined, w.value0 ? w.value0 : undefined, h.value0 ? h.value0 : undefined]);
  };
};