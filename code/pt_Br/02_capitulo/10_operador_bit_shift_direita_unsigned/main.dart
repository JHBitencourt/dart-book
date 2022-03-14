void main() {
  var shift = -42 >>> 1;
  print((-42).toRadixString(2).padLeft(8, '0')); // > 0-101010
  print(shift); // > 9223372036854775787
  print(shift.toRadixString(2));
  // > 111111111111111111111111111111111111111111111111111111111101011
}