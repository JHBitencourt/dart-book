class Coordenada {
  int x, y;

  Coordenada(this.x, this.y);

  /// Redireciona para o construtor padrão
  Coordenada.inicio() : this(0, 0);

  /// Redireciona para o construtor padrão
  Coordenada.xZero(int y) : this(0, y);

  /// Redireciona para o construtor padrão
  Coordenada.yZero(int x) : this(x, 0);

  String toString() {
    return 'Coordenada{x: $x, y: $y}';
  }
}

void main() {
  final um = Coordenada(42, 42);
  final dois = Coordenada.inicio();
  final tres = Coordenada.xZero(42);
  final quatro = Coordenada.yZero(42);

  print(um);
  print(dois);
  print(tres);
  print(quatro);
}
