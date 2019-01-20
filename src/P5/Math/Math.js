function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.createVectorImpl = function(p, x, y, z) {
  return callP5(p, p.createVector, [x.value0 ? x.value0 : undefined, y.value0 ? y.value0 : undefined, z.value0 ? z.value0 : undefined]);
};