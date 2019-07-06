function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}

exports.loadImageImpl = function(p, path, callback, onError) {
  return callP5(p, p.loadImage, [
    path,
    callback.value0 !== undefined ? function(img) {
      callback.value0(img)();
    } : undefined,
    onError.value0 !== undefined ? onError.value0 : undefined
  ]);
};
exports.imageImpl = function(p, img, x, y, width, height) {
  return function() {
    callP5(p, p.image, [img.value0, x, y, width.value0 !== undefined ? width.value0 : undefined, height.value0 !== undefined ? height.value0 : undefined]);
  };
};
exports.image2Impl = function(p, img, dx, dy, dWidth, dHeight, sx, sy, sWidth, sHeight) {
  return function() {
    callP5(p, p.image, [img.value0, dx, dy, dWidth, dHeight, sx, sy, sWidth.value0 !== undefined ? sWidth.value0 : undefined, sHeight.value0 !== undefined ? sHeight.value0 : undefined]);
  };
};
exports.imageModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.imageMode, [p[mode.constructor.name.replace(new RegExp('^IMAGE_MODE_'), '')]]);
  };
};
exports.noTintImpl = function(p) {
  return function() {
    callP5(p, p.noTint, []);
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
    callP5(p, p.tint, [gray, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
exports.tint5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.tint, [v1, v2, v3, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
