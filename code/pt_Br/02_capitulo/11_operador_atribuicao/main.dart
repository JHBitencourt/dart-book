void main() {
  num a = 4;
  print(a); // > 4
  a += 5;
  print(a); // > 9
  a -= 4;
  print(a); // > 5
  a %= 2;
  print(a); // > 1
  a *= 11;
  print(a); // > 11
  a /= 5;
  print(a); // > 2.2
  a ~/= 2;
  print(a); // > 1
  int b = 1;
  b <<= 4;
  print(b); // > 16
  b |= 42;
  print(b); // > 58
  b &= 60;
  print(b); // > 56
  b ^= 42;
  print(b); // > 18
  b >>= 1;
  print(b); // > 9
  b >>>= 1;
  print(b); // > 4
}