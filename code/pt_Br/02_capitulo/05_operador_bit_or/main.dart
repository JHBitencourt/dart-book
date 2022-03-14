void main() {
  var or = 42 | 27;
  print(42.toRadixString(2).padLeft(8, '0')); // > 00101010
  print(27.toRadixString(2).padLeft(8, '0')); // > 00011011
  print(or); // > 59
  print(or.toRadixString(2).padLeft(8, '0')); // > 00111011
}