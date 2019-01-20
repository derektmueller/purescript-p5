function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.debugModeImpl = function(p) {
  return function() {
    callP5(p, p.debugMode, []);
  };
};
exports.debugMode2Impl = function(p, mode) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')]]);
  };
};
exports.debugMode3Impl = function(p, mode, axesSize, xOff, yOff, zOff) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')], axesSize.value0 ? axesSize.value0 : undefined, xOff.value0 ? xOff.value0 : undefined, yOff.value0 ? yOff.value0 : undefined, zOff.value0 ? zOff.value0 : undefined]);
  };
};
exports.debugMode4Impl = function(p, mode, gridSize, gridDivisions, xOff, yOff, zOff) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')], gridSize.value0 ? gridSize.value0 : undefined, gridDivisions.value0 ? gridDivisions.value0 : undefined, xOff.value0 ? xOff.value0 : undefined, yOff.value0 ? yOff.value0 : undefined, zOff.value0 ? zOff.value0 : undefined]);
  };
};
exports.debugMode5Impl = function(p, gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff) {
  return function() {
    callP5(p, p.debugMode, [gridSize.value0 ? gridSize.value0 : undefined, gridDivisions.value0 ? gridDivisions.value0 : undefined, gridXOff.value0 ? gridXOff.value0 : undefined, gridYOff.value0 ? gridYOff.value0 : undefined, gridZOff.value0 ? gridZOff.value0 : undefined, axesSize.value0 ? axesSize.value0 : undefined, axesXOff.value0 ? axesXOff.value0 : undefined, axesYOff.value0 ? axesYOff.value0 : undefined, axesZOff.value0 ? axesZOff.value0 : undefined]);
  };
};
exports.noDebugModeImpl = function(p) {
  return function() {
    callP5(p, p.noDebugMode, []);
  };
};
exports.orbitControlImpl = function(p, sensitivityX, sensitivityY) {
  return function() {
    callP5(p, p.orbitControl, [sensitivityX.value0 ? sensitivityX.value0 : undefined, sensitivityY.value0 ? sensitivityY.value0 : undefined]);
  };
};