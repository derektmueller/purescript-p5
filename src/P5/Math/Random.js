function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}

exports.random2Impl = function(p, min, max) {
  return function() {
    return callP5(p, p.random, [min.value0 !== undefined ? min.value0 : undefined, max.value0 !== undefined ? max.value0 : undefined]);
  };
};

exports.randomSeedImpl = function(p, seed) {
  return function() {
    callP5(p, p.randomSeed, [seed]);
  };
};

exports.randomGaussianImpl = function(p, mean, sd) {
  return function() {
    return callP5(p, p.randomGaussian, [mean, sd]);
  };
};
