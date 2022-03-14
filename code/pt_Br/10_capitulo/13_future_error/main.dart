void main() {
  Future.error('ERRO')
      .then(
        (valor) => print('Não executa, o Future completa com erro..'),
        onError: (e) => print('Erro capturado no onError $e'),
      )
      .catchError((e) => print('Future.error() => $e'));
}
