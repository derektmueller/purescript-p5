function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.ellipseModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.ellipseMode, [p[mode.constructor.name.replace(new RegExp('^ELLIPSE_MODE_'), '')]]);
  };
};
exports.noSmoothImpl = function(p) {
  return function() {
    callP5(p, p.noSmooth, []);
  };
};
exports.rectModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.rectMode, [p[mode.constructor.name.replace(new RegExp('^RECT_MODE_'), '')]]);
  };
};
exports.smoothImpl = function(p) {
  return function() {
    callP5(p, p.smooth, []);
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