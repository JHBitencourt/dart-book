void main() {
  num a = 42;

  // Ao descomentar a linha abaixo irá produzir um erro de cast de tipo inválido
  // a = 42.5;

  print((a as int).bitLength); // > 6
}