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
    callP5(p, p.arc, [x, y, w, h, start, stop, mode.value0 !== undefined ? mode.value0 : undefined, detail.value0 !== undefined ? detail.value0 : undefined]);
  };
};
exports.beginContourImpl = function(p) {
  return function() {
    callP5(p, p.beginContour, []);
  };
};
exports.beginShapeImpl = function(p, kind) {
  return function() {
    callP5(p, p.beginShape, [kind.value0 !== undefined ? kind.value0 : undefined]);
  };
};
exports.bezierImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.bezier, [x1, y1, x2, y2, x3, y3, x4, y4]);
  };
};
exports.bezierDetailImpl = function(p, detail) {
  return function() {
    callP5(p, p.bezierDetail, [detail]);
  };
};
exports.bezierPointImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.bezierPoint, [a, b, c, d, t]);
};
exports.bezierTangentImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.bezierTangent, [a, b, c, d, t]);
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
exports.boxImpl = function(p, width, height, depth, detailX, detailY) {
  return function() {
    callP5(p, p.box, [width.value0 !== undefined ? width.value0 : undefined, height.value0 !== undefined ? height.value0 : undefined, depth.value0 !== undefined ? depth.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.coneImpl = function(p, radius, height, detailX, detailY, cap) {
  return function() {
    callP5(p, p.cone, [radius.value0 !== undefined ? radius.value0 : undefined, height.value0 !== undefined ? height.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined, cap.value0 !== undefined ? cap.value0 : undefined]);
  };
};
exports.curveImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.curve, [x1, y1, x2, y2, x3, y3, x4, y4]);
  };
};
exports.curveDetailImpl = function(p, resolution) {
  return function() {
    callP5(p, p.curveDetail, [resolution]);
  };
};
exports.curvePointImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.curvePoint, [a, b, c, d, t]);
};
exports.curveTangentImpl = function(p, a, b, c, d, t) {
  return callP5(p, p.curveTangent, [a, b, c, d, t]);
};
exports.curveTightnessImpl = function(p, amount) {
  return function() {
    callP5(p, p.curveTightness, [amount]);
  };
};
exports.curveVertexImpl = function(p, x, y) {
  return function() {
    callP5(p, p.curveVertex, [x, y]);
  };
};
exports.curveVertex2Impl = function(p, x, y, z) {
  return function() {
    callP5(p, p.curveVertex, [x, y, z.value0 !== undefined ? z.value0 : undefined]);
  };
};
exports.cylinderImpl = function(p, radius, height, detailX, detailY, bottomCap, topCap) {
  return function() {
    callP5(p, p.cylinder, [radius.value0 !== undefined ? radius.value0 : undefined, height.value0 !== undefined ? height.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined, bottomCap.value0 !== undefined ? bottomCap.value0 : undefined, topCap.value0 !== undefined ? topCap.value0 : undefined]);
  };
};
exports.ellipseImpl = function(p, x, y, w, h) {
  return function() {
    callP5(p, p.ellipse, [x, y, w, h.value0 !== undefined ? h.value0 : undefined]);
  };
};
exports.ellipse2Impl = function(p, x, y, w, h, detail) {
  return function() {
    callP5(p, p.ellipse, [x, y, w, h, detail]);
  };
};
exports.ellipseModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.ellipseMode, [p[mode.constructor.name.replace(new RegExp('^ELLIPSE_MODE_'), '')]]);
  };
};
exports.ellipsoidImpl = function(p, radiusx, radiusy, radiusz, detailX, detailY) {
  return function() {
    callP5(p, p.ellipsoid, [radiusx.value0 !== undefined ? radiusx.value0 : undefined, radiusy.value0 !== undefined ? radiusy.value0 : undefined, radiusz.value0 !== undefined ? radiusz.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.endContourImpl = function(p) {
  return function() {
    callP5(p, p.endContour, []);
  };
};
exports.endShapeImpl = function(p, mode) {
  return function() {
    callP5(p, p.endShape, [mode.value0 !== undefined ? mode.value0 : undefined]);
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
exports.modelImpl = function(p, model) {
  return function() {
    callP5(p, p.model, [model]);
  };
};
exports.noSmoothImpl = function(p) {
  return function() {
    callP5(p, p.noSmooth, []);
  };
};
exports.planeImpl = function(p, width, height, detailX, detailY) {
  return function() {
    callP5(p, p.plane, [width.value0 !== undefined ? width.value0 : undefined, height.value0 !== undefined ? height.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.pointImpl = function(p, x, y, z) {
  return function() {
    callP5(p, p.point, [x, y, z.value0 !== undefined ? z.value0 : undefined]);
  };
};
exports.quadImpl = function(p, x1, y1, x2, y2, x3, y3, x4, y4) {
  return function() {
    callP5(p, p.quad, [x1, y1, x2, y2, x3, y3, x4, y4]);
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
exports.rectImpl = function(p, x, y, w, h, detailX, detailY) {
  return function() {
    callP5(p, p.rect, [x, y, w, h, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.rect2Impl = function(p, x, y, w, h, tl, tr, br, bl) {
  return function() {
    callP5(p, p.rect, [x, y, w, h, tl.value0 !== undefined ? tl.value0 : undefined, tr.value0 !== undefined ? tr.value0 : undefined, br.value0 !== undefined ? br.value0 : undefined, bl.value0 !== undefined ? bl.value0 : undefined]);
  };
};
exports.rectModeImpl = function(p, mode) {
  return function() {
    callP5(p, p.rectMode, [p[mode.constructor.name.replace(new RegExp('^RECT_MODE_'), '')]]);
  };
};
exports.smoothImpl = function(p) {
  return function() {
    callP5(p, p.smooth, []);
  };
};
exports.sphereImpl = function(p, radius, detailX, detailY) {
  return function() {
    callP5(p, p.sphere, [radius.value0 !== undefined ? radius.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.strokeCapImpl = function(p, cap) {
  return function() {
    callP5(p, p.strokeCap, [p[cap.constructor.name.replace(new RegExp('^STROKE_CAP_'), '')]]);
  };
};
exports.strokeJoinImpl = function(p, join) {
  return function() {
    callP5(p, p.strokeJoin, [p[join.constructor.name.replace(new RegExp('^STROKE_JOIN_'), '')]]);
  };
};
exports.strokeWeightImpl = function(p, weight) {
  return function() {
    callP5(p, p.strokeWeight, [weight]);
  };
};
exports.torusImpl = function(p, radius, tubeRadius, detailX, detailY) {
  return function() {
    callP5(p, p.torus, [radius.value0 !== undefined ? radius.value0 : undefined, tubeRadius.value0 !== undefined ? tubeRadius.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.triangleImpl = function(p, x1, y1, x2, y2, x3, y3) {
  return function() {
    callP5(p, p.triangle, [x1, y1, x2, y2, x3, y3]);
  };
};
exports.vertexImpl = function(p, x, y) {
  return function() {
    callP5(p, p.vertex, [x, y]);
  };
};
exports.vertex2Impl = function(p, x, y, z, u, v) {
  return function() {
    callP5(p, p.vertex, [x, y, z, u.value0 !== undefined ? u.value0 : undefined, v.value0 !== undefined ? v.value0 : undefined]);
  };
};