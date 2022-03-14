import 'dart:async';

void main() {
  try {
    abrirConexao();
    buscarDados();
    // fecharConexao();
  } catch (e, s) {
    print('Exceção capturada: $e');
    print('Stacktrace: $s');
  } finally {
    fecharConexao();
  }
}

void abrirConexao() => print('Conexão aberta..');

void buscarDados() => throw TimeoutException('Rede lenta..');

void fecharConexao() => print('Conexão fechada..');
