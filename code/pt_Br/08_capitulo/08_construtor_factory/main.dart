class Programador {
  Programador._internal(this.nome);

  factory Programador(String nome) {
    if (_cache.containsKey(nome)) {
      return _cache[nome]!;
    }
    final novo = Programador._internal(nome);
    _cache[nome] = novo;
    return novo;
  }

  static final Map<String, Programador> _cache = {};
  String nome;

  static imprimirCache() {
    print(_cache);
  }
}

void main() {
  final p1 = Programador('Julio Bitencourt');
  final p2 = Programador('Julio Bitencourt');
  print(identical(p1, p2)); // > true
  Programador.imprimirCache();
  // > {Julio Bitencourt: Instance of 'Programador'}
}
