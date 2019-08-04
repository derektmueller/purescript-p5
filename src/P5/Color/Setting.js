function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.backgroundImpl = function(p, color) {
  return function() {
    callP5(p, p.background, [color]);
  };
};
exports.background2Impl = function(p, values) {
  return function() {
    callP5(p, p.background, [values]);
  };
};
exports.background3Impl = function(p, colorstring, a) {
  return function() {
    callP5(p, p.background, [colorstring, a.value0 !== undefined ? a.value0 : undefined]);
  };
};
exports.background4Impl = function(p, gray, a) {
  return function() {
    callP5(p, p.background, [gray, a.value0 !== undefined ? a.value0 : undefined]);
  };
};
exports.background5Impl = function(p, image, a) {
  return function() {
    callP5(p, p.background, [image, a.value0 !== undefined ? a.value0 : undefined]);
  };
};
exports.background6Impl = function(p, v1, v2, v3, a) {
  return function() {
    callP5(p, p.background, [v1, v2, v3, a.value0 !== undefined ? a.value0 : undefined]);
  };
};
exports.clearImpl = function(p) {
  return function() {
    callP5(p, p.clear, []);
  };
};
exports.colorModeImpl = function(p, mode, max) {
  return function() {
    callP5(p, p.colorMode, [p[mode.constructor.name.replace(new RegExp('^COLOR_MODE_'), '')], max.value0 !== undefined ? max.value0 : undefined]);
  };
};
exports.colorMode2Impl = function(p, mode, max1, max2, max3, maxA) {
  return function() {
    callP5(p, p.colorMode, [p[mode.constructor.name.replace(new RegExp('^COLOR_MODE_'), '')], max1, max2, max3, maxA.value0 !== undefined ? maxA.value0 : undefined]);
  };
};
exports.fillImpl = function(p, value) {
  return function() {
    callP5(p, p.fill, [value]);
  };
};
exports.fill2Impl = function(p, values) {
  return function() {
    callP5(p, p.fill, [values]);
  };
};
exports.fill3Impl = function(p, color) {
  return function() {
    callP5(p, p.fill, [color]);
  };
};
exports.fill4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.fill, [gray, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
exports.fill5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.fill, [v1, v2, v3, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
exports.noFillImpl = function(p) {
  return function() {
    callP5(p, p.noFill, []);
  };
};
exports.noStrokeImpl = function(p) {
  return function() {
    callP5(p, p.noStroke, []);
  };
};
exports.strokeImpl = function(p, value) {
  return function() {
    callP5(p, p.stroke, [value]);
  };
};
exports.stroke2Impl = function(p, values) {
  return function() {
    callP5(p, p.stroke, [values]);
  };
};
exports.stroke3Impl = function(p, color) {
  return function() {
    callP5(p, p.stroke, [color]);
  };
};
exports.stroke4Impl = function(p, gray, alpha) {
  return function() {
    callP5(p, p.stroke, [gray, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
exports.stroke5Impl = function(p, v1, v2, v3, alpha) {
  return function() {
    callP5(p, p.stroke, [v1, v2, v3, alpha.value0 !== undefined ? alpha.value0 : undefined]);
  };
};
