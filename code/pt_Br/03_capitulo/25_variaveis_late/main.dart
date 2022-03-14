class Pizza {
  // int pedacos;
  late int pedacos;

  void media() {
    pedacos = 8;
  }

  void grande() {
    pedacos = 16;
  }

  String servir() => '$pedacos pedaços servidos!';
}

void main() {
  final pizza = Pizza();
  pizza.media();
  print(pizza.servir()); // > 8 pedaços servidos!
}
