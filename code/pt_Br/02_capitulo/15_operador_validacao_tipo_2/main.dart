void main() {
  num a = 42.5;

  // O operador is permite validar o tipo para evitar erros de cast
  if (a is int) {
    print((a as int).bitLength);
  }

  if (a is! int) {
    print('Não é inteiro'); // > Não é inteiro
  }
}