void main() {
  var xor = 42 ^ 27;
  print(42.toRadixString(2).padLeft(8, '0')); // > 00101010
  print(27.toRadixString(2).padLeft(8, '0')); // > 00011011
  print(xor); // > 49
  print(xor.toRadixString(2).padLeft(8, '0')); // > 00110001
}