function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
exports.setRedImpl = function(p5, color, red) {
  var newColor = p5.color(color.toString());
  callP5(newColor, newColor.setRed, [red]);
  return newColor;
};
exports.setGreenImpl = function(p5, color, green) {
  var newColor = p5.color(color.toString());
  callP5(newColor, newColor.setGreen, [green]);
  return newColor;
};
exports.setBlueImpl = function(p5, color, blue) {
  var newColor = p5.color(color.toString());
  callP5(newColor, newColor.setBlue, [blue]);
  return newColor;
};
exports.setAlphaImpl = function(p5, color, alpha) {
  var newColor = p5.color(color.toString());
  callP5(newColor, newColor.setAlpha, [alpha]);
  return newColor;
};
