function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.loopImpl = function(p) {
  return function() {
    callP5(p, p.loop, []);
  };
};
exports.noLoopImpl = function(p) {
  return function() {
    callP5(p, p.noLoop, []);
  };
};
exports.popImpl = function(p) {
  return function() {
    callP5(p, p.pop, []);
  };
};
exports.preloadImpl = function(p) {
  return function() {
    callP5(p, p.preload, []);
  };
};
exports.pushImpl = function(p) {
  return function() {
    callP5(p, p.push, []);
  };
};
exports.redrawImpl = function(p, n) {
  return function() {
    callP5(p, p.redraw, [n.value0 !== undefined ? n.value0 : undefined]);
  };
};
exports.removeImpl = function(p) {
  return function() {
    callP5(p, p.remove, []);
  };
};