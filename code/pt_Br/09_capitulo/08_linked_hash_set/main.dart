import 'dart:collection';

/// Todo Set por padrão implementa um LinkedHashSet,
/// que mantém a ordem dos elementos inseridos.
void main() {
  final megasena = Set<int>();
  megasena.addAll([44, 35, 4, 11, 29, 4, 35, 57]);
  print(megasena); // > {44, 35, 4, 11, 29, 57}

  final vogais = <String>{'a', 'e', 'i', 'a', 'o', 'u'};
  print(vogais); // > {a, e, i, o, u}
  print(vogais.elementAt(1)); // e
  // print(vogais[0]); // Erro

  final consoantes = LinkedHashSet();
  consoantes.addAll(['b', 'c', 'd']);
  print(consoantes); // > {b, c, d}
}
