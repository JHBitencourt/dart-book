void comer() => throw Exception('Acabou a comida..');

void main() {
  try {
    comer();
    print('Não vai chegar aqui..');
  } catch (e, s) {
    print('Exceção capturada: $e');
    print('Stacktrace: $s');
  }
}
