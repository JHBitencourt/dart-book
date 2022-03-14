void main() {
  print(fatorial(4));
  print(fatorial(0));
  print(fatorial(42));
}

int fatorial(int numero) {
  if (numero == 0) return 1;
  var resultado = 1;
  for (var i = 1; i <= numero; i++) {
    resultado *= i;
  }
  return resultado;
}
