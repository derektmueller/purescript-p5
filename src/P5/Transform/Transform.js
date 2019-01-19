function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.applyMatrixImpl = function(p, a, b, c, d, e, f) {
  return function() {
    callP5(p, p.applyMatrix, [a, b, c, d, e, f]);
  };
};
exports.resetMatrixImpl = function(p) {
  return function() {
    callP5(p, p.resetMatrix, []);
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