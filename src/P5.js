const p5 = require('p5');

exports.p5Impl = function(f) {
  return function() {
    new p5(function(p) {
      f(p)();
    });
  }
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
        p.createCanvas(w, h);
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

exports.strokeImpl = function(p) {
  return function(str) {
    return function() {
      p.stroke(str);
    };
  };
};

exports.strokeWeightImpl = function(p) {
  return function(w) {
    return function() {
      p.strokeWeight(w);
    };
  };
};

exports.lineImpl = function(p) {
  return function(x1) {
    return function(y1) {
      return function(x2) {
        return function(y2) {
          return function(str) {
            p.line(x1, y1, x2, y2);
          };
        };
      };
    };
  };
};
