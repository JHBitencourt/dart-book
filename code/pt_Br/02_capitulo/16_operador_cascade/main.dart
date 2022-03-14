// Sem o operador cascade:
// final frase = StringBuffer();
// frase.write('Operação ');
// frase.write('em ');
// frase.write('cascade.');

void main() {
  final frase = StringBuffer()
    ..write('Operação ')
    ..write('em ')
    ..write('cascade.');
  print(frase); // > Operação em cascade.
}