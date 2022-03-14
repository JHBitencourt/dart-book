class SemGasolinaException implements Exception {
  final String mensagem;

  const SemGasolinaException(this.mensagem);

  String toString() => 'SemGasolinaException: $mensagem';
}

void ligarCarro() => throw SemGasolinaException('Carro sem gasolina..');

void main() {
  ligarCarro();
}
