function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.textAlign2Impl = function(p, horizAlign, vertAlign) {
  return function() {
    callP5(p, p.textAlign, [p[horizAlign.constructor.name.replace(new RegExp('^TEXT_ALIGN_HORIZ_ALIGN_'), '')], vertAlign.value0 ? vertAlign.value0 : undefined]);
  };
};
exports.textAscentImpl = function(p) {
  return callP5(p, p.textAscent, []);
};
exports.textDescentImpl = function(p) {
  return callP5(p, p.textDescent, []);
};
exports.textLeadingImpl = function(p) {
  return callP5(p, p.textLeading, []);
};
exports.textLeading2Impl = function(p, leading) {
  return function() {
    callP5(p, p.textLeading, [leading]);
  };
};
exports.textSizeImpl = function(p) {
  return callP5(p, p.textSize, []);
};
exports.textSize2Impl = function(p, theSize) {
  return function() {
    callP5(p, p.textSize, [theSize]);
  };
};
exports.textStyleImpl = function(p) {
  return callP5(p, p.textStyle, []);
};
exports.textStyle2Impl = function(p, theStyle) {
  return function() {
    callP5(p, p.textStyle, [p[theStyle.constructor.name.replace(new RegExp('^TEXT_STYLE_'), '')]]);
  };
};
exports.textWidthImpl = function(p, theText) {
  return callP5(p, p.textWidth, [theText]);
};