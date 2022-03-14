void main() {
  print(retornoNulo());
  print(retornoNuloDois());
  print(retornoString());

  /// Um retorno void não pode ser utilizado:
  // var objeto = retornoDynamic();
  // print(objeto);
}

retornoNulo() {}

retornoNuloDois() {
  return;
}

retornoString() {
  return 'String';
}

void semRetorno() {}

void retornoVazio() {
  return;
}

void retornoDynamic() {
  dynamic dinamico = 'dynamic';
  return dinamico;
}

void retornoFuncao() {
  return print('retornoFuncao');
}
