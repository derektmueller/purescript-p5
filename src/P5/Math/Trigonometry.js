function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.acosImpl = function(p, value) {
  return callP5(p, p.acos, [value]);
};
exports.angleModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.angleMode, [p[mode.constructor.name.replace(new RegExp('^ANGLE_MODE_'), '')]]);
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
exports.cosImpl = function(p, angle) {
  return callP5(p, p.cos, [angle]);
};
exports.degreesImpl = function(p, radians) {
  return callP5(p, p.degrees, [radians]);
};
exports.radiansImpl = function(p, degrees) {
  return callP5(p, p.radians, [degrees]);
};
exports.sinImpl = function(p, angle) {
  return callP5(p, p.sin, [angle]);
};
exports.tanImpl = function(p, angle) {
  return callP5(p, p.tan, [angle]);
};