function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.createWriterImpl = function(p, name, extension) {
  return callP5(p, p.createWriter, [name, extension.value0 !== undefined ? extension.value0 : undefined]);
};
exports.saveStringsImpl = function(p, list, filename, extension) {
  return function() {
    callP5(p, p.saveStrings, [list, filename, extension.value0 !== undefined ? extension.value0 : undefined]);
  };
};
exports.saveTableImpl = function(p, table, filename, options) {
  return function() {
    callP5(p, p.saveTable, [table, filename, options.value0 !== undefined ? options.value0 : undefined]);
  };
};