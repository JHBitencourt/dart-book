void voar() {
  throw Exception('Você não tem asas!');
}

void ligarCarro() => throw 'Sem gasolina!';

void main() {
  // voar();
  ligarCarro();
}
