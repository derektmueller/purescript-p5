function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.alphaImpl = function(p, color) {
  return callP5(p, p.alpha, [color.value0]);
};
exports.blueImpl = function(p, color) {
  return callP5(p, p.blue, [color.value0]);
};
exports.brightnessImpl = function(p, color) {
  return callP5(p, p.brightness, [color.value0]);
};
exports.colorImpl = function(p, value) {
  return callP5(p, p.color, [value]);
};
exports.color2Impl = function(p, values) {
  return callP5(p, p.color, [values]);
};
exports.color3Impl = function(p, color) {
  return callP5(p, p.color, [color]);
};
exports.color4Impl = function(p, gray, alpha) {
  return callP5(p, p.color, [gray, alpha.value0 ? alpha.value0 : undefined]);
};
exports.color5Impl = function(p, v1, v2, v3, alpha) {
  return callP5(p, p.color, [v1, v2, v3, alpha.value0 !== undefined ? alpha.value0 : undefined]);
};
exports.greenImpl = function(p, color) {
  return callP5(p, p.green, [color.value0]);
};
exports.hueImpl = function(p, color) {
  return callP5(p, p.hue, [color.value0]);
};
exports.lerpColorImpl = function(p, c1, c2, amt) {
  return callP5(p, p.lerpColor, [c1, c2, amt]);
};
exports.lightnessImpl = function(p, color) {
  return callP5(p, p.lightness, [color.value0]);
};
exports.redImpl = function(p, color) {
  return callP5(p, p.red, [color.value0]);
};
exports.saturationImpl = function(p, color) {
  return callP5(p, p.saturation, [color.value0]);
};
