function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.arcImpl = function(p, x, y, w, h, start, stop, mode, detail) {
  return function() {
    callP5(p, p.arc, [x, y, w, h, start, stop, mode.value0 ? mode.value0 : undefined, detail.value0 ? detail.value0 : undefined]);
  };
};
exports.ellipseImpl = function(p, x, y, w, h) {
  return function() {
    callP5(p, p.ellipse, [x, y, w, h.value0 ? h.value0 : undefined]);
  };
};
exports.ellipse2Impl = function(p, x, y, w, h, detail) {
  return function() {
    callP5(p, p.ellipse, [x, y, w, h, detail]);
  };
};
exports.lineImpl = function(p, x1, y1, x2, y2) {
  return function() {
    callP5(p, p.line, [x1, y1, x2, y2]);
  };
};
exports.line2Impl = function(p, x1, y1, z1, x2, y2, z2) {
  return function() {
    callP5(p, p.line, [x1, y1, z1, x2, y2, z2]);
  };
};
exports.pointImpl = function(p, x, y, z) {
  return function() {
    callP5(p, p.point, [x, y, z.value0 ? z.value0 : undefined]);
  };
};
exports.quadImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.quad, [x1, y1, x2, y2, x3, y3, x4, y4]);
  };
};
exports.rectImpl = function(p, x, y, w, h, detailX, detailY) {
  return function() {
    callP5(p, p.rect, [x, y, w, h, detailX.value0 ? detailX.value0 : undefined, detailY.value0 ? detailY.value0 : undefined]);
  };
};
exports.rect2Impl = function(p, x, y, w, h, tl, tr, br, bl) {
  return function() {
    callP5(p, p.rect, [x, y, w, h, tl.value0 ? tl.value0 : undefined, tr.value0 ? tr.value0 : undefined, br.value0 ? br.value0 : undefined, bl.value0 ? bl.value0 : undefined]);
  };
};
exports.triangleImpl = function(p, x1, y1, x2, y2, x3, y3) {
  return function() {
    callP5(p, p.triangle, [x1, y1, x2, y2, x3, y3]);
  };
};