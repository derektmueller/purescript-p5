function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.deviceMovedImpl = function(p) {
  return function() {
    callP5(p, p.deviceMoved, []);
  };
};
exports.deviceShakenImpl = function(p) {
  return function() {
    callP5(p, p.deviceShaken, []);
  };
};
exports.deviceTurnedImpl = function(p) {
  return function() {
    callP5(p, p.deviceTurned, []);
  };
};
exports.setMoveThresholdImpl = function(p, value) {
  return function() {
    callP5(p, p.setMoveThreshold, [value]);
  };
};
exports.setShakeThresholdImpl = function(p, value) {
  return function() {
    callP5(p, p.setShakeThreshold, [value]);
  };
};