void main() {
  var a = 0;
  var b = 1 + ++a; // 1 + 1
  print(a); // > 1
  print(b); // > 2
  var c = 0;
  var d = 1 + --c; // 1 + -1
  print(c); // > -1
  print(d); // > 0
}