function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.deviceMovedImpl = function(p, eff) {
  return function() {
    p.deviceMoved = eff;
  };
};
exports.deviceShakenImpl = function(p, eff) {
  return function() {
    p.deviceShaken = eff;
  };
};
exports.deviceTurnedImpl = function(p, eff) {
  return function() {
    p.deviceTurned = eff;
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
