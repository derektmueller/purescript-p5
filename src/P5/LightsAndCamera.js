function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.ambientLightImpl = function(p, value) {
  return function() {
    callP5(p, p.ambientLight, [value]);
  };
};
exports.ambientLight2Impl = function(p, values) {
  return function() {
    callP5(p, p.ambientLight, [values]);
  };
};
exports.ambientLight3Impl = function(p, color) {
  return function() {
    callP5(p, p.ambientLight, [color]);
  };
};
exports.ambientLight4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.ambientLight, [gray, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
exports.ambientLight5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.ambientLight, [v1, v2, v3, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
exports.ambientMaterialImpl = function(p, color) {
  return function() {
    callP5(p, p.ambientMaterial, [color.value0]);
  };
};
exports.ambientMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.ambientMaterial, [v1, v2.value0 !== undefined ? v2.value0 : undefined, v3.value0 !== undefined ? v3.value0 : undefined, a.value0 !== undefined ? a.value0 : undefined]);
  };
};
exports.cameraImpl = function(p, x, y, z, centerX, centerY, centerZ, upX, upY, upZ) {
  return function() {
    callP5(p, p.camera, [x.value0 !== undefined ? x.value0 : undefined, y.value0 !== undefined ? y.value0 : undefined, z.value0 !== undefined ? z.value0 : undefined, centerX.value0 !== undefined ? centerX.value0 : undefined, centerY.value0 !== undefined ? centerY.value0 : undefined, centerZ.value0 !== undefined ? centerZ.value0 : undefined, upX.value0 !== undefined ? upX.value0 : undefined, upY.value0 !== undefined ? upY.value0 : undefined, upZ.value0 !== undefined ? upZ.value0 : undefined]);
  };
};
exports.createCameraImpl = function(p) {
  return callP5(p, p.createCamera, []);
};
exports.createShaderImpl = function(p, vertSrc, fragSrc) {
  return callP5(p, p.createShader, [vertSrc, fragSrc]);
};
exports.debugModeImpl = function(p) {
  return function() {
    callP5(p, p.debugMode, []);
  };
};
exports.debugMode2Impl = function(p, mode) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')]]);
  };
};
exports.debugMode3Impl = function(p, mode, axesSize, xOff, yOff, zOff) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')], axesSize.value0 !== undefined ? axesSize.value0 : undefined, xOff.value0 !== undefined ? xOff.value0 : undefined, yOff.value0 !== undefined ? yOff.value0 : undefined, zOff.value0 !== undefined ? zOff.value0 : undefined]);
  };
};
exports.debugMode4Impl = function(p, mode, gridSize, gridDivisions, xOff, yOff, zOff) {
  return function() {
    callP5(p, p.debugMode, [p[mode.constructor.name.replace(new RegExp('^DEBUG_MODE_'), '')], gridSize.value0 !== undefined ? gridSize.value0 : undefined, gridDivisions.value0 !== undefined ? gridDivisions.value0 : undefined, xOff.value0 !== undefined ? xOff.value0 : undefined, yOff.value0 !== undefined ? yOff.value0 : undefined, zOff.value0 !== undefined ? zOff.value0 : undefined]);
  };
};
exports.debugMode5Impl = function(p, gridSize, gridDivisions, gridXOff, gridYOff, gridZOff, axesSize, axesXOff, axesYOff, axesZOff) {
  return function() {
    callP5(p, p.debugMode, [gridSize.value0 !== undefined ? gridSize.value0 : undefined, gridDivisions.value0 !== undefined ? gridDivisions.value0 : undefined, gridXOff.value0 !== undefined ? gridXOff.value0 : undefined, gridYOff.value0 !== undefined ? gridYOff.value0 : undefined, gridZOff.value0 !== undefined ? gridZOff.value0 : undefined, axesSize.value0 !== undefined ? axesSize.value0 : undefined, axesXOff.value0 !== undefined ? axesXOff.value0 : undefined, axesYOff.value0 !== undefined ? axesYOff.value0 : undefined, axesZOff.value0 !== undefined ? axesZOff.value0 : undefined]);
  };
};
exports.directionalLightImpl = function(p, color, position) {
  return function() {
    callP5(p, p.directionalLight, [color.value0, position]);
  };
};
exports.directionalLight2Impl = function(p, v1, v2, v3, position) {
  return function() {
    callP5(p, p.directionalLight, [v1, v2, v3, position]);
  };
};
exports.directionalLight3Impl = function(p, color, x, y, z) {
  return function() {
    callP5(p, p.directionalLight, [color.value0, x, y, z]);
  };
};
exports.directionalLight4Impl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    callP5(p, p.directionalLight, [v1, v2, v3, x, y, z]);
  };
};
exports.loadShaderImpl = function(p, vertFilename, fragFilename) {
  return callP5(p, p.loadShader, [vertFilename.value0 !== undefined ? vertFilename.value0 : undefined, fragFilename.value0 !== undefined ? fragFilename.value0 : undefined]);
};
exports.noDebugModeImpl = function(p) {
  return function() {
    callP5(p, p.noDebugMode, []);
  };
};
exports.normalMaterialImpl = function(p) {
  return function() {
    callP5(p, p.normalMaterial, []);
  };
};
exports.orbitControlImpl = function(p, sensitivityX, sensitivityY) {
  return function() {
    callP5(p, p.orbitControl, [sensitivityX.value0 !== undefined ? sensitivityX.value0 : undefined, sensitivityY.value0 !== undefined ? sensitivityY.value0 : undefined]);
  };
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
exports.pointLightImpl = function(p, color, position) {
  return function() {
    callP5(p, p.pointLight, [color.value0, position]);
  };
};
exports.pointLight2Impl = function(p, v1, v2, v3, position) {
  return function() {
    callP5(p, p.pointLight, [v1, v2, v3, position]);
  };
};
exports.pointLight3Impl = function(p, color, x, y, z) {
  return function() {
    callP5(p, p.pointLight, [color.value0, x, y, z]);
  };
};
exports.pointLight4Impl = function(p, v1, v2, v3, x, y, z) {
  return function() {
    callP5(p, p.pointLight, [v1, v2, v3, x, y, z]);
  };
};
exports.setCameraImpl = function(p, cam) {
  return function() {
    callP5(p, p.setCamera, [cam]);
  };
};
exports.shaderImpl = function(p, s) {
  return function() {
    callP5(p, p.shader, [s.value0 !== undefined ? s.value0 : undefined]);
  };
};
exports.specularMaterialImpl = function(p, color) {
  return function() {
    callP5(p, p.specularMaterial, [color.value0]);
  };
};
exports.specularMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.specularMaterial, [v1, v2.value0 !== undefined ? v2.value0 : undefined, v3.value0 !== undefined ? v3.value0 : undefined, a.value0 !== undefined ? a.value0 : undefined]);
  };
};
exports.textureImpl = function(p, tex) {
  return function() {
    callP5(p, p.texture, [tex.value0]);
  };
};