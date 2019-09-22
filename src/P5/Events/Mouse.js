exports.doubleClickedImpl = function(p, eff) {
  return function() {
    p.doubleClicked = eff;
  };
};
exports.mouseClickedImpl = function(p, eff) {
  return function() {
    p.mouseClicked = eff;
  };
};
exports.mouseDraggedImpl = function(p, eff) {
  return function() {
    p.mouseDragged = eff;
  };
};
exports.mouseMovedImpl = function(p, eff) {
  return function() {
    p.mouseMoved = eff;
  };
};
exports.mousePressedImpl = function(p, eff) {
  return function() {
    p.mousePressed = eff;
  };
};
exports.mouseReleasedImpl = function(p, eff) {
  return function() {
    p.mouseReleased = eff;
  };
};
exports.mouseWheelImpl = function(p, eff) {
  return function() {
    p.mouseWheel = eff;
  };
};
