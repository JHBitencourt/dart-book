void main() {
  var not = ~42;
  print(42.toRadixString(2).padLeft(8, '0')); // > 00101010
  print(not); // > -43
  print(not.toRadixString(2)); // > -101011
}