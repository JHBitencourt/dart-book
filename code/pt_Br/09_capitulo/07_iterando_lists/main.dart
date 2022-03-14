void main() {
  final risadas = <String>['kkk', 'haha', 'rsrs'];

  /// Primeira forma de varrer uma lista:
  /// Para quando o índice é importante.
  for (var i = 0; i < risadas.length; i++) print(risadas[i]);

  print('---------------');

  /// Segunda forma de varrer uma lista:
  /// Para quando o índice não importa.
  for (final r in risadas) print(r);

  print('---------------');

  /// Terceira forma de varrer uma lista:
  /// Uma forma funcional
  risadas.forEach((r) => print(r));

  print('---------------');

  /// Quarta forma de varrer uma lista:
  /// Uma forma hardcore. Utilizando a interface Iterator para controle
  /// do ponteiro que varre a lista.
  Iterator i = risadas.iterator;
  while (i.moveNext()) print(i.current);
}
