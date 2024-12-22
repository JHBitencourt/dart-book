sealed class Poligono {}
class Pentagono extends Poligono {}
sealed class Triangulo extends Poligono {}
class Isoceles extends Triangulo {}
class Equilatero extends Triangulo {}
sealed class Quadrilatero extends Poligono {}
class Retangulo extends Quadrilatero {}

int ladosPoligono(Poligono p) => switch (p) {
  Isoceles() || Equilatero() => 3,
  Retangulo() => 4,
  Pentagono() => 5,
};