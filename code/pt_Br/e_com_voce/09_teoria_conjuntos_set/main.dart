void main() {
  final a = {'c', 'a', 'r', 'e', 't'};
  final b = {'a', 'e', 'i', 'o', 'u'};
  print('Conjunto a: $a');
  print('Conjunto b: $b');

  // União
  print('União de a e b: ${a.union(b)}');

  // Interseção
  print('Interseção de a e b: ${a.intersection(b)}');

  // Diferença
  print('Diferença de a e b: ${a.difference(b)}');
  print('Diferença de b e a: ${b.difference(a)}');
}