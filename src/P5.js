var p5;

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
      return function() {
        return p.createCanvas(w, h);
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
