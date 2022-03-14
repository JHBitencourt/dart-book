Future<String> um() => Future.value('Primeiro');
Future<String> dois() => Future.error('Erro no dois()');
Future<String> tres() => Future.value('Terceiro');

void main() {
  um().then((_) => dois())
      .then((_) => tres())
      .then((String valor) {
    print('O valor é $valor');
  });
}