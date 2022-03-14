Future<String> buscarNomeUsuario() {
  return buscarId().then((int id) {
    return buscarNome(id);
  }).then((String nome) {
    return 'Usuário: $nome';
  });
}

Future<String> buscarNomeUsuarioAsync() async {
  final id = await buscarId();
  final nome = await buscarNome(id);
  return 'Usuário: $nome';
}

main() async {
  final usuario = await buscarNomeUsuario();
  print('$usuario');

  final usuarioAsync = await buscarNomeUsuarioAsync();
  print('$usuarioAsync');
}

Future<int> buscarId() async => 42;

Future<String> buscarNome(int id) async => 'JHBitencourt';
