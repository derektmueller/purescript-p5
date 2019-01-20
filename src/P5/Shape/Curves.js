function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
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