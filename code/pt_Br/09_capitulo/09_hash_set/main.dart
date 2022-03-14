import 'dart:collection';

/// A implementação do HashSet não mantém a ordem de inserção.
/// A ordem dos elementos é de acordo com a implementação do hashCode.
void main() {
  final megasena = HashSet<int?>();
  megasena.addAll([44, 35, 4, 11, null, 29, 4, null, 35, 57]);
  print(megasena); // > {35, 4, 57, 11, null, 44, 29}
}
