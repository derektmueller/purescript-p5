exports.touchEndedImpl = function(p, eff) {
  return function() {
    p.touchEnded = eff;
  };
};
exports.touchMovedImpl = function(p, eff) {
  return function() {
    p.touchMoved = eff;
  };
};
exports.touchStartedImpl = function(p, eff) {
  return function() {
    p.touchStarted = eff;
  };
};
