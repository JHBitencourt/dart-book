void main() {
  try {
    buscarUsuario();
  } catch (e, s) {
    print(e);
    print(s.toString());
    print('Catch de erro global');
  }
}

void buscarUsuario() {
  try {
    buscarUsuarioCache();
    buscarUsuarioBancoDados();
  } catch (e) {
    if (e is CacheException) {
      print('Não trataremos erro de cache nesse método..');

      /// Um throw e; não mantém o stacktrace original.
      // throw e;
      rethrow;
    }

    print('Tratando demais erros.');
  }
}

void buscarUsuarioCache() {
  throw CacheException('erro ao buscar o usuário no cache');
}

void buscarUsuarioBancoDados() {}

class CacheException implements Exception {
  final String mensagem;

  const CacheException(this.mensagem);
}
