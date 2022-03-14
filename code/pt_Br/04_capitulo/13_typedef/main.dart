typedef Operacao = Object Function(double a, double b);

double somar(double a, double b) {
  return a + b;
}

String subtrair(double a, double b) {
  return (a - b).toString();
}

Object calcular(double a, double b, Operacao operacao) {
  return operacao(a, b);
}

void main() {
  print(calcular(22, 20, somar)); // > 42.0
  print(calcular(22, 20, subtrair)); // > 2.0
}
