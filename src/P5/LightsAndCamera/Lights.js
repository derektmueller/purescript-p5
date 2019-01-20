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
    callP5(p, p.ambientLight, [gray, alpha.value0 ? alpha.value0 : undefined]);
  };
};
exports.ambientLight5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.ambientLight, [v1, v2, v3, alpha.value0 ? alpha.value0 : undefined]);
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