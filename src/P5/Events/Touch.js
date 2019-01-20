function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.touchEndedImpl = function(p) {
  return function() {
    callP5(p, p.touchEnded, []);
  };
};
exports.touchMovedImpl = function(p) {
  return function() {
    callP5(p, p.touchMoved, []);
  };
};
exports.touchStartedImpl = function(p) {
  return function() {
    callP5(p, p.touchStarted, []);
  };
};