void main() {
  buscarId().then((int id) {
    print('Id encontrado, buscando nome..');
    return buscarNome(id);
  }).then(print);
  print('Buscando..');
}

Future<int> buscarId() {
  return Future.delayed(const Duration(seconds: 3), () => 1);
}

Future<String> buscarNome(int id) {
  return Future.delayed(const Duration(seconds: 3), () => 'JHBitencourt');
}
