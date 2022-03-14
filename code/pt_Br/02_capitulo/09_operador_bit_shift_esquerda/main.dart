void main() {
  var shift = 42 << 2;
  print(42.toRadixString(2).padLeft(8, '0')); // > 00101010
  print(shift); // > 168
  print(shift.toRadixString(2).padLeft(8, '0')); // > 10101000
}