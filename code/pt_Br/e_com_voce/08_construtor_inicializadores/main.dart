import 'dart:math';

class Circunferencia {
  final double resultado;

  /// Inicializar valores e utilizar assert
  Circunferencia(double raio)
      : resultado = 2 * pi * raio,
        assert(raio >= 0);
}

class Subclasse extends Circunferencia {
  /// Chamada para construtor de superclasse
  Subclasse(double raio) : super(raio);
}

void main() {
  final c = Circunferencia(5);
  print(c.resultado);

  final s = Subclasse(5);
  print(s.resultado);
}
