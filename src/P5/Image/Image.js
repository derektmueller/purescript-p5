function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.createImageImpl = function(p, width, height) {
  return callP5(p, p.createImage, [width, height]);
};
exports.saveCanvasImpl = function(p, filename, extension) {
  return function() {
    callP5(p, p.saveCanvas, [filename.value0 ? filename.value0 : undefined, extension.value0 ? extension.value0 : undefined]);
  };
};