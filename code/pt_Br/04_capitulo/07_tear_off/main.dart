void main() {
  final vogais = ['a', 'e', 'i', 'o', 'u'];
  vogais.forEach((e) {
    print(e);
  });

  /// Usando tear-off:
  vogais.forEach(print);
}
