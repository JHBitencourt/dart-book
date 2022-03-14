import 'dart:async';
import 'dart:math';

class CompletoComNumero {
  late Completer<String> _completer;
  int numero;

  CompletoComNumero._internal(this.numero) {
    _completer = Completer();
    sorteio().listen(_validarNumero);
  }

  Stream<int> sorteio() async* {
    for (int i = 0; i < 5; i++) {
      if (_completer.isCompleted) break;

      await Future<void>.delayed(Duration(seconds: 1));
      final sorteado = Random().nextInt(5) + 1;
      print('Sorteio: $sorteado');

      yield sorteado;
    }
    if (!_completer.isCompleted) {
      _completer.completeError('O número não foi sorteado!');
    }
  }

  void _validarNumero(int numeroSorteado) {
    if (numeroSorteado == numero) {
      _completer.complete('O número $numero foi sorteado!');
    }
  }

  static Future<String> novo(int numero) async {
    final c = CompletoComNumero._internal(numero);
    return c._completer.future;
  }
}

void main() {
  CompletoComNumero.novo(3).then(print).catchError(print);
}