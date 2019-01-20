function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.doubleClickedImpl = function(p) {
  return function() {
    callP5(p, p.doubleClicked, []);
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