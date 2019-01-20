function trimRightUndefined(array) {
  return array.filter(function (x, i) {
    return i < array.length - 1 || x !== undefined;
  });
}
function callP5(p5, method, args) {
  return method.apply(
    p5, trimRightUndefined(args));
}
exports.dayImpl = function(p) {
  return callP5(p, p.day, []);
};
exports.hourImpl = function(p) {
  return callP5(p, p.hour, []);
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
exports.secondImpl = function(p) {
  return callP5(p, p.second, []);
};
exports.yearImpl = function(p) {
  return callP5(p, p.year, []);
};