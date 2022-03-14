void main() {
  final r = resposta().then(print);
  print('Resposta: $r');
}

resposta() async {
  return 42;
}
