function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.beginContourImpl = function(p) {
  return function() {
    callP5(p, p.beginContour, []);
  };
};
exports.beginShapeImpl = function(p, kind) {
  return function() {
    callP5(p, p.beginShape, [kind.value0 ? kind.value0 : undefined]);
  };
};
exports.bezierVertexImpl = function(p, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.bezierVertex, [x2, y2, x3, y3, x4, y4]);
  };
};
exports.bezierVertex2Impl = function(p, x2, y2, z2, x3, y3, z3, x4, y4, z4) {
  return function() {
    callP5(p, p.bezierVertex, [x2, y2, z2, x3, y3, z3, x4, y4, z4]);
  };
};
exports.curveVertexImpl = function(p, x, y) {
  return function() {
    callP5(p, p.curveVertex, [x, y]);
  };
};
exports.curveVertex2Impl = function(p, x, y, z) {
  return function() {
    callP5(p, p.curveVertex, [x, y, z.value0 ? z.value0 : undefined]);
  };
};
exports.endContourImpl = function(p) {
  return function() {
    callP5(p, p.endContour, []);
  };
};
exports.endShapeImpl = function(p, mode) {
  return function() {
    callP5(p, p.endShape, [mode.value0 ? mode.value0 : undefined]);
  };
};
exports.quadraticVertexImpl = function(p, cx, cy, x3, y3) {
  return function() {
    callP5(p, p.quadraticVertex, [cx, cy, x3, y3]);
  };
};
exports.quadraticVertex2Impl = function(p, cx, cy, cz, x3, y3, z3) {
  return function() {
    callP5(p, p.quadraticVertex, [cx, cy, cz, x3, y3, z3]);
  };
};
exports.vertexImpl = function(p, x, y) {
  return function() {
    callP5(p, p.vertex, [x, y]);
  };
};
exports.vertex2Impl = function(p, x, y, z, u, v) {
  return function() {
    callP5(p, p.vertex, [x, y, z, u.value0 ? u.value0 : undefined, v.value0 ? v.value0 : undefined]);
  };
};