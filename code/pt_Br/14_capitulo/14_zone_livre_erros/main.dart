import 'dart:async';

void main() {
  runZonedGuarded(() {
    mainZonedGuarded();
  }, (e, s) {
    print('Erro capturado: $e');
  });
}

void mainZonedGuarded() {
  Future(() => throw TimeoutException('Um erro qualquer'));
  Future(() => throw 'Outro erro qualquer');
  Future(() => throw 'Mais um erro qualquer');
}
