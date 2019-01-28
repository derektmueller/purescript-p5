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
exports.ceilImpl = function(p, n) {
  return callP5(p, p.ceil, [n]);
};
exports.constrainImpl = function(p, n, low, high) {
  return callP5(p, p.constrain, [n, low, high]);
};
exports.cosImpl = function(p, angle) {
  return callP5(p, p.cos, [angle]);
};
exports.createVectorImpl = function(p, x, y, z) {
  return callP5(p, p.createVector, [x.value0 !== undefined ? x.value0 : undefined, y.value0 !== undefined ? y.value0 : undefined, z.value0 !== undefined ? z.value0 : undefined]);
};
exports.degreesImpl = function(p, radians) {
  return callP5(p, p.degrees, [radians]);
};
exports.distImpl = function(p, x1, y1, x2, y2) {
  return callP5(p, p.dist, [x1, y1, x2, y2]);
};
exports.dist2Impl = function(p, x1, y1, z1, x2, y2, z2) {
  return callP5(p, p.dist, [x1, y1, z1, x2, y2, z2]);
};
exports.expImpl = function(p, n) {
  return callP5(p, p.exp, [n]);
};
exports.floorImpl = function(p, n) {
  return callP5(p, p.floor, [n]);
};
exports.lerpImpl = function(p, start, stop, amt) {
  return callP5(p, p.lerp, [start, stop, amt]);
};
exports.logImpl = function(p, n) {
  return callP5(p, p.log, [n]);
};
exports.magImpl = function(p, a, b) {
  return callP5(p, p.mag, [a, b]);
};
exports.mapImpl = function(p, value, start1, stop1, start2, stop2, withinBounds) {
  return callP5(p, p.map, [value, start1, stop1, start2, stop2, withinBounds.value0 !== undefined ? withinBounds.value0 : undefined]);
};
exports.maxImpl = function(p, nums) {
  return callP5(p, p.max, [nums]);
};
exports.max2Impl = function(p, n0, n1) {
  return callP5(p, p.max, [n0, n1]);
};
exports.minImpl = function(p, nums) {
  return callP5(p, p.min, [nums]);
};
exports.min2Impl = function(p, n0, n1) {
  return callP5(p, p.min, [n0, n1]);
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
exports.powImpl = function(p, n, e) {
  return callP5(p, p.pow, [n, e]);
};
exports.radiansImpl = function(p, degrees) {
  return callP5(p, p.radians, [degrees]);
};
exports.randomSeedImpl = function(p, seed) {
  return function() {
    callP5(p, p.randomSeed, [seed]);
  };
};
exports.roundImpl = function(p, n) {
  return callP5(p, p.round, [n]);
};
exports.sinImpl = function(p, angle) {
  return callP5(p, p.sin, [angle]);
};
exports.sqImpl = function(p, n) {
  return callP5(p, p.sq, [n]);
};
exports.sqrtImpl = function(p, n) {
  return callP5(p, p.sqrt, [n]);
};
exports.tanImpl = function(p, angle) {
  return callP5(p, p.tan, [angle]);
};