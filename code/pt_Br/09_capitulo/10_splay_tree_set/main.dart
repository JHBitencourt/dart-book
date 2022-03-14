import 'dart:collection';

/// A implementação do SplayTreeSet também não mantém a ordem de inserção.
/// A ordem dos elementos é de acordo com a implementação do compareTo de [Comparable].
void main() {
  final vogais = ['e', 'i', 'a', 'o', 'u'];
  vogais.sort(); // > {11, 35, 4, 44}

  final megasena = SplayTreeSet<String>();
  megasena.addAll(['44', '35', '4', '11', '4']);
  print(megasena); // > {11, 35, 4, 44}

  final megasena2 = SplayTreeSet<String>((a, b) {
    return int.parse(a).compareTo(int.parse(b));
  });
  megasena2.addAll(['44', '35', '4', '11', '4']);
  print(megasena2); // > {4, 11, 35, 44}
}
