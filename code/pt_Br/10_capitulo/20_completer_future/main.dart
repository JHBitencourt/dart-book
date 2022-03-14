import 'dart:async';

class Database {
  void salvarUsuario(String usuario, void Function(String) callback) {
    Timer(Duration(seconds: 2), () {
      callback('$usuario salvo');
    });
  }
}

class FutureDatabase {
  Future<String> salvarUsuario(String usuario) {
    final completer = Completer<String>();
    Database().salvarUsuario(usuario, (String resultado) {
      completer.complete(resultado);
    });
    return completer.future;
  }
}

Future<void> main() async {
  // Database().salvarUsuario('JHBitencourt', callbackUsuario);
  final resultado = await FutureDatabase().salvarUsuario('JHBitencourt');
  print('Resultado: $resultado');
}

void callbackUsuario(String resultado) {
  print('Callback executado: $resultado');
}
