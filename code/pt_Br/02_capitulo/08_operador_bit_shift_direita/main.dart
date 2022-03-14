void main() {
  var shift = 42 >> 1;
  print(42.toRadixString(2).padLeft(8, '0')); // > 00101010
  print(shift); // > 21
  print(shift.toRadixString(2).padLeft(8, '0')); // > 00010101
}