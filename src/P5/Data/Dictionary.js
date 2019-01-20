function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.createStringDict2Impl = function(p, key, value) {
  return callP5(p, p.createStringDict, [key, value]);
};