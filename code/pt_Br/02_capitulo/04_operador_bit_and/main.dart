void main() {
  var and = 42 & 27;
  print(42.toRadixString(2).padLeft(8, '0')); // > 00101010
  print(27.toRadixString(2).padLeft(8, '0')); // > 00011011
  print(and); // > 10
  print(and.toRadixString(2).padLeft(8, '0')); // > 00001010
}