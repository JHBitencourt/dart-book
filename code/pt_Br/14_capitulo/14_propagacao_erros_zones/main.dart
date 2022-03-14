import 'dart:async';

void main() {
  runZonedGuarded(() {
    runZoned(() {
      Future(() => throw TimeoutException('Um erro qualquer na zone#3'));
    });
  }, (e, s) {
    print('Erro capturado na zone#2 $e');
  });
}
