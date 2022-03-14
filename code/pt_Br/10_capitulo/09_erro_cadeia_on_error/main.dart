Future<String> um() => Future.value('Primeiro');

Future<String> dois() => Future.error('Erro no dois()');

Future<String> tres() => Future.value('Terceiro');

void main() {
  um().then((_) => dois())
      .then((_) => tres(), onError: (dynamic e) {
    print('Capturado onError: $e');
    return '42 :)';
  }).catchError((dynamic e) {
    print('Capturado: $e');
    return '42';
  }).then((String valor) {
    print('O valor é $valor');
  });
}