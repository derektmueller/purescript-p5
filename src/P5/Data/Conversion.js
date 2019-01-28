function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.byteImpl = function(p, n) {
  return callP5(p, p.byte, [n.value0]);
};
exports.charImpl = function(p, n) {
  return callP5(p, p.char, [n.value0]);
};
exports.floatImpl = function(p, str) {
  return callP5(p, p.float, [str]);
};
exports.hexImpl = function(p, n, digits) {
  return callP5(p, p.hex, [n, digits.value0 !== undefined ? digits.value0 : undefined]);
};
exports.hex2Impl = function(p, ns, digits) {
  return callP5(p, p.hex, [ns, digits.value0 !== undefined ? digits.value0 : undefined]);
};
exports.int2Impl = function(p, n, radix) {
  return callP5(p, p.int, [n.value0, radix.value0 !== undefined ? radix.value0 : undefined]);
};
exports.strImpl = function(p, n) {
  return callP5(p, p.str, [n.value0]);
};
exports.uncharImpl = function(p, n) {
  return callP5(p, p.unchar, [n]);
};
exports.unchar2Impl = function(p, ns) {
  return callP5(p, p.unchar, [ns]);
};
exports.unhexImpl = function(p, n) {
  return callP5(p, p.unhex, [n]);
};
exports.unhex2Impl = function(p, ns) {
  return callP5(p, p.unhex, [ns]);
};