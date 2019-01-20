function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.keyIsDownImpl = function(p, code) {
  return callP5(p, p.keyIsDown, [code]);
};
exports.keyPressedImpl = function(p) {
  return function() {
    callP5(p, p.keyPressed, []);
  };
};
exports.keyReleasedImpl = function(p) {
  return function() {
    callP5(p, p.keyReleased, []);
  };
};
exports.keyTypedImpl = function(p) {
  return function() {
    callP5(p, p.keyTyped, []);
  };
};