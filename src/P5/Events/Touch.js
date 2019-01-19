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
exports.doubleClickedImpl = function(p) {
  return function() {
    callP5(p, p.doubleClicked, []);
  };
};
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
exports.mouseClickedImpl = function(p) {
  return function() {
    callP5(p, p.mouseClicked, []);
  };
};
exports.mouseDraggedImpl = function(p) {
  return function() {
    callP5(p, p.mouseDragged, []);
  };
};
exports.mouseMovedImpl = function(p) {
  return function() {
    callP5(p, p.mouseMoved, []);
  };
};
exports.mousePressedImpl = function(p) {
  return function() {
    callP5(p, p.mousePressed, []);
  };
};
exports.mouseReleasedImpl = function(p) {
  return function() {
    callP5(p, p.mouseReleased, []);
  };
};
exports.mouseWheelImpl = function(p) {
  return function() {
    callP5(p, p.mouseWheel, []);
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