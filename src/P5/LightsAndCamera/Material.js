function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.ambientMaterialImpl = function(p, color) {
  return function() {
    callP5(p, p.ambientMaterial, [color.value0]);
  };
};
exports.ambientMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.ambientMaterial, [v1, v2.value0 ? v2.value0 : undefined, v3.value0 ? v3.value0 : undefined, a.value0 ? a.value0 : undefined]);
  };
};
exports.createShaderImpl = function(p, vertSrc, fragSrc) {
  return callP5(p, p.createShader, [vertSrc, fragSrc]);
};
exports.loadShaderImpl = function(p, vertFilename, fragFilename) {
  return callP5(p, p.loadShader, [vertFilename.value0 ? vertFilename.value0 : undefined, fragFilename.value0 ? fragFilename.value0 : undefined]);
};
exports.normalMaterialImpl = function(p) {
  return function() {
    callP5(p, p.normalMaterial, []);
  };
};
exports.shaderImpl = function(p, s) {
  return function() {
    callP5(p, p.shader, [s.value0 ? s.value0 : undefined]);
  };
};
exports.specularMaterialImpl = function(p, color) {
  return function() {
    callP5(p, p.specularMaterial, [color.value0]);
  };
};
exports.specularMaterial2Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.specularMaterial, [v1, v2.value0 ? v2.value0 : undefined, v3.value0 ? v3.value0 : undefined, a.value0 ? a.value0 : undefined]);
  };
};
exports.textureImpl = function(p, tex) {
  return function() {
    callP5(p, p.texture, [tex.value0]);
  };
};