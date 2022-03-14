void main() {
  StringBuffer? frase = null;
  frase?..write('Operação ')
    ..write('em ')
    ..write('cascade.');
  print(frase); // > null
}