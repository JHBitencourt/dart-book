const double G = 6.67300e-11;

enum Planeta {
  mercurio(3.303e+23, 2.4397e6, aneis: false),
  venus(4.869e+24, 6.0518e6, aneis: false),
  terra(5.976e+24, 6.37814e6, aneis: false),
  marte(6.421e+23, 3.3972e6, aneis: false),
  jupiter(1.9e+27, 7.1492e7, aneis: true),
  saturno(5.688e+26, 6.0268e7, aneis: true),
  urano(8.686e+25, 2.5559e7, aneis: true),
  netuno(1.024e+26, 2.4746e7, aneis: true);

  const Planeta(this.massa, this.raio, {required this.aneis});

  factory Planeta.planetaComVida() => Planeta.terra;

  final bool aneis;
  final double massa;
  final double raio;

  bool get ehAzul => this == Planeta.terra;
  double gravidadeSuperficial() => G * massa / (raio * raio);
  double pesoSuperficie(double massaCorpo) =>
      massaCorpo * gravidadeSuperficial();
}

void main() {
  print(Planeta.planetaComVida());
  print(Planeta.marte.ehAzul);
  final peso = 80 / Planeta.terra.gravidadeSuperficial();
  for (final p in Planeta.values) {
    print('Meu peso em ${p.name}: ${p.pesoSuperficie(peso)}kg');
  }
}