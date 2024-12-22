import 'dart:async';

void main() {
  Future? future;
  runZonedGuarded(() {
    future = Future(() => throw TimeoutException('Um erro qualquer'));
  }, (e, s) {
    print('Erro capturado na zone $e');
  });
  future!.catchError((e) => print('Nunca executa'));
}
