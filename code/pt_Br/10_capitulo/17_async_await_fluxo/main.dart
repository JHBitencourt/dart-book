void main() {
  final future = resposta();
  future.then(print);
  print('Resposta: $future');
}

Future<int> resposta() async {
  print('Isso é síncrono');
  final r = await 42;
  print('Isso é após o await');
  return r;
}
