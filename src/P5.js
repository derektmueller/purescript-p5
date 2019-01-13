var p5;

function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}

function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}

exports.p5Impl = function(f) {
  return function() {
    p5 = p5 === undefined ? require('p5') : p5;
    return new p5(function(p) {
      f(p)();
    });
  }
};

exports.getP5Impl = function() {
  p5 = p5 === undefined ? require('p5') : p5;
  return new p5(function() {});
};

exports.setupImpl = function(p) {
  return function(eff) {
    return function() {
      p.setup = eff;
    };
  }
};

exports.drawImpl = function(p) {
  return function(eff) {
    return function() {
      p.draw = eff;
    };
  };
};

exports.createCanvasImpl = function(p) {
  return function(w) {
    return function(h) {
      return function(r) {
        return function() {
          return p.createCanvas(
            w, h, r.value0 ? r.value0 : undefined);
        };
      };
    };
  };
};

exports.backgroundImpl = function(p) {
  return function(str) {
    return function() {
      p.background(str);
    };
  }
};

exports.idImpl = function(e) {
  return e.id();
}

exports.setIdImpl = function(e, x) {
  return function() {
    e.id(x);
  };
}

exports.noiseImpl = function(p, x, y, z) {
  return function() {
    return callP5(p, p.noise, [x, y.value0 ? y.value0 : undefined, z.value0 ? z.value0 : undefined]);
  };
};

exports.random2Impl = function(p, min, max) {
  return function() {
    return callP5(p, p.random, [min.value0 ? min.value0 : undefined, max.value0 ? max.value0 : undefined]);
  };
};

exports.randomGaussianImpl = function(p, mean, sd) {
  return function() {
    return callP5(p, p.randomGaussian, [mean, sd]);
  };
};

//Object.keys (
//  [].concat (
//    ...
//      [].concat (
//        ...json.classitems.filter(
//          (i) => i.class === 'p5' && i.itemtype === 'method')
//        .map ((i) => (i.params || []).concat(
//          i["return"] ? [i["return"]] : []))
//      ).map ((p) => p.type)
//        //.map((p) => p.split('|'))
//  )
//    .sort()
//    .reduce((a, b) => { a[b] = true; return a; }, {}))
//
