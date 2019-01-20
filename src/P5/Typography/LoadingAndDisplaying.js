function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.loadFontImpl = function(p, path, callback, onError) {
  return callP5(p, p.loadFont, [path, callback.value0 ? callback.value0 : undefined, onError.value0 ? onError.value0 : undefined]);
};