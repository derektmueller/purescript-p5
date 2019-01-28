function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.cameraImpl = function(p, x, y, z, centerX, centerY, centerZ, upX, upY, upZ) {
  return function() {
    callP5(p, p.camera, [x.value0 !== undefined ? x.value0 : undefined, y.value0 !== undefined ? y.value0 : undefined, z.value0 !== undefined ? z.value0 : undefined, centerX.value0 !== undefined ? centerX.value0 : undefined, centerY.value0 !== undefined ? centerY.value0 : undefined, centerZ.value0 !== undefined ? centerZ.value0 : undefined, upX.value0 !== undefined ? upX.value0 : undefined, upY.value0 !== undefined ? upY.value0 : undefined, upZ.value0 !== undefined ? upZ.value0 : undefined]);
  };
};
exports.createCameraImpl = function(p) {
  return callP5(p, p.createCamera, []);
};
exports.orthoImpl = function(p, left, right, bottom, top, near, far) {
  return function() {
    callP5(p, p.ortho, [left.value0 !== undefined ? left.value0 : undefined, right.value0 !== undefined ? right.value0 : undefined, bottom.value0 !== undefined ? bottom.value0 : undefined, top.value0 !== undefined ? top.value0 : undefined, near.value0 !== undefined ? near.value0 : undefined, far.value0 !== undefined ? far.value0 : undefined]);
  };
};
exports.perspectiveImpl = function(p, fovy, aspect, near, far) {
  return function() {
    callP5(p, p.perspective, [fovy.value0 !== undefined ? fovy.value0 : undefined, aspect.value0 !== undefined ? aspect.value0 : undefined, near.value0 !== undefined ? near.value0 : undefined, far.value0 !== undefined ? far.value0 : undefined]);
  };
};
exports.setCameraImpl = function(p, cam) {
  return function() {
    callP5(p, p.setCamera, [cam]);
  };
};