function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.loadStringsImpl = function(p, filename, callback, errorCallback) {
  return callP5(p, p.loadStrings, [filename, callback.value0 !== undefined ? callback.value0 : undefined, errorCallback.value0 !== undefined ? errorCallback.value0 : undefined]);
};