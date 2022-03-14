void main() {
  int? a = null;
  var resposta = a ?? 42;
  print(resposta); // > 42
}