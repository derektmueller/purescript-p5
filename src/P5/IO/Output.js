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
  return callP5(p, p.createWriter, [name, extension.value0 ? extension.value0 : undefined]);
};
exports.dayImpl = function(p) {
  return callP5(p, p.day, []);
};
exports.hourImpl = function(p) {
  return callP5(p, p.hour, []);
};
exports.loadStringsImpl = function(p, filename, callback, errorCallback) {
  return callP5(p, p.loadStrings, [filename, callback.value0 ? callback.value0 : undefined, errorCallback.value0 ? errorCallback.value0 : undefined]);
};
exports.millisImpl = function(p) {
  return callP5(p, p.millis, []);
};
exports.minuteImpl = function(p) {
  return callP5(p, p.minute, []);
};
exports.monthImpl = function(p) {
  return callP5(p, p.month, []);
};
exports.saveStringsImpl = function(p, list, filename, extension) {
  return function() {
    callP5(p, p.saveStrings, [list, filename, extension.value0 ? extension.value0 : undefined]);
  };
};
exports.saveTableImpl = function(p, table, filename, options) {
  return function() {
    callP5(p, p.saveTable, [table, filename, options.value0 ? options.value0 : undefined]);
  };
};
exports.secondImpl = function(p) {
  return callP5(p, p.second, []);
};
exports.yearImpl = function(p) {
  return callP5(p, p.year, []);
};