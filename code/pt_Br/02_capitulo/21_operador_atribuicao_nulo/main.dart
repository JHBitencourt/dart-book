void main() {
  int? resposta = null;
  resposta ??= 42;
  print(resposta); // > 42
}