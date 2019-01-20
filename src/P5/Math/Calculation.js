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
exports.ceilImpl = function(p, n) {
  return callP5(p, p.ceil, [n]);
};
exports.constrainImpl = function(p, n, low, high) {
  return callP5(p, p.constrain, [n, low, high]);
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
  return callP5(p, p.map, [value, start1, stop1, start2, stop2, withinBounds.value0 ? withinBounds.value0 : undefined]);
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
exports.normImpl = function(p, value, start, stop) {
  return callP5(p, p.norm, [value, start, stop]);
};
exports.powImpl = function(p, n, e) {
  return callP5(p, p.pow, [n, e]);
};
exports.roundImpl = function(p, n) {
  return callP5(p, p.round, [n]);
};
exports.sqImpl = function(p, n) {
  return callP5(p, p.sq, [n]);
};
exports.sqrtImpl = function(p, n) {
  return callP5(p, p.sqrt, [n]);
};