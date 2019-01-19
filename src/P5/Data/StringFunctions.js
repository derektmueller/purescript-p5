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
exports.createStringDict2Impl = function(p, key, value) {
  return callP5(p, p.createStringDict, [key, value]);
};
exports.floatImpl = function(p, str) {
  return callP5(p, p.float, [str]);
};
exports.hexImpl = function(p, n, digits) {
  return callP5(p, p.hex, [n, digits.value0 ? digits.value0 : undefined]);
};
exports.hex2Impl = function(p, ns, digits) {
  return callP5(p, p.hex, [ns, digits.value0 ? digits.value0 : undefined]);
};
exports.int2Impl = function(p, n, radix) {
  return callP5(p, p.int, [n.value0, radix.value0 ? radix.value0 : undefined]);
};
exports.matchImpl = function(p, str, regexp) {
  return callP5(p, p.match, [str, regexp]);
};
exports.matchAllImpl = function(p, str, regexp) {
  return callP5(p, p.matchAll, [str, regexp]);
};
exports.nfImpl = function(p, num, left, right) {
  return callP5(p, p.nf, [num.value0, left.value0 ? left.value0.value0 : undefined, right.value0 ? right.value0.value0 : undefined]);
};
exports.nfcImpl = function(p, num, right) {
  return callP5(p, p.nfc, [num.value0, right.value0 ? right.value0.value0 : undefined]);
};
exports.nfc2Impl = function(p, nums, right) {
  return callP5(p, p.nfc, [nums, right.value0 ? right.value0.value0 : undefined]);
};
exports.nfpImpl = function(p, num, left, right) {
  return callP5(p, p.nfp, [num, left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined]);
};
exports.nfp2Impl = function(p, nums, left, right) {
  return callP5(p, p.nfp, [nums, left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined]);
};
exports.nfsImpl = function(p, num, left, right) {
  return callP5(p, p.nfs, [num, left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined]);
};
exports.nfs2Impl = function(p, nums, left, right) {
  return callP5(p, p.nfs, [nums, left.value0 ? left.value0 : undefined, right.value0 ? right.value0 : undefined]);
};
exports.splitImpl = function(p, value, delim) {
  return callP5(p, p.split, [value, delim]);
};
exports.splitTokensImpl = function(p, value, delim) {
  return callP5(p, p.splitTokens, [value, delim.value0 ? delim.value0 : undefined]);
};
exports.strImpl = function(p, n) {
  return callP5(p, p.str, [n.value0]);
};
exports.trimImpl = function(p, str) {
  return callP5(p, p.trim, [str]);
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