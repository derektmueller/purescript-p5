function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.randomSeedImpl = function(p, seed) {
  return function() {
    callP5(p, p.randomSeed, [seed]);
  };
};