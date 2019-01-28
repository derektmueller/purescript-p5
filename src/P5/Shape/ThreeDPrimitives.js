function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
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
exports.cylinderImpl = function(p, radius, height, detailX, detailY, bottomCap, topCap) {
  return function() {
    callP5(p, p.cylinder, [radius.value0 !== undefined ? radius.value0 : undefined, height.value0 !== undefined ? height.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined, bottomCap.value0 !== undefined ? bottomCap.value0 : undefined, topCap.value0 !== undefined ? topCap.value0 : undefined]);
  };
};
exports.ellipsoidImpl = function(p, radiusx, radiusy, radiusz, detailX, detailY) {
  return function() {
    callP5(p, p.ellipsoid, [radiusx.value0 !== undefined ? radiusx.value0 : undefined, radiusy.value0 !== undefined ? radiusy.value0 : undefined, radiusz.value0 !== undefined ? radiusz.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.planeImpl = function(p, width, height, detailX, detailY) {
  return function() {
    callP5(p, p.plane, [width.value0 !== undefined ? width.value0 : undefined, height.value0 !== undefined ? height.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.sphereImpl = function(p, radius, detailX, detailY) {
  return function() {
    callP5(p, p.sphere, [radius.value0 !== undefined ? radius.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};
exports.torusImpl = function(p, radius, tubeRadius, detailX, detailY) {
  return function() {
    callP5(p, p.torus, [radius.value0 !== undefined ? radius.value0 : undefined, tubeRadius.value0 !== undefined ? tubeRadius.value0 : undefined, detailX.value0 !== undefined ? detailX.value0 : undefined, detailY.value0 !== undefined ? detailY.value0 : undefined]);
  };
};