function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.blendModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.blendMode, [p[mode.constructor.name.replace(new RegExp('^BLEND_MODE_'), '')]]);
  };
};
exports.createGraphicsImpl = function(p, w, h, renderer) {
  return callP5(p, p.createGraphics, [w, h, renderer.value0 !== undefined ? renderer.value0 : undefined]);
};
exports.noCanvasImpl = function(p) {
  return function() {
    callP5(p, p.noCanvas, []);
  };
};
exports.resizeCanvasImpl = function(p, w, h, noRedraw) {
  return function() {
    callP5(p, p.resizeCanvas, [w, h, noRedraw.value0 !== undefined ? noRedraw.value0 : undefined]);
  };
};
exports.setAttributes2Impl = function(p, key, value) {
  return function() {
    callP5(p, p.setAttributes, [key, value]);
  };
};
exports.createCanvasImpl = function(p, w, h, r) {
  return function() {
    return callP5(p, p.createCanvas, [w, h, r.value0 !== undefined ? p[r.value0.constructor.name.replace(new RegExp('^CREATE_CANVAS_RENDERER_'), '')] : undefined]);
  };
};
