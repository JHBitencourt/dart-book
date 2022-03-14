import 'dart:async';

void main() {
  final future = Future(() => throw TimeoutException('Um erro qualquer'));
  future.whenComplete(() => print('whenComplete zone#1'));
  runZonedGuarded(() {
    future.whenComplete(() => print('whenComplete zone#2'));
    print('Dentro zone#2');
  }, (e, s) {
    print('Erro capturado na zone#2 $e');
  });
  runZoned(() {
    future.whenComplete(() => print('whenComplete zone#3'));
  });
}
