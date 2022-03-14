void main() {
  final vogais = [];
  vogais.add('a');
  vogais.add(42);
  print(vogais);
  print(vogais.runtimeType);

  print('---------------');

  final risadas = <String>[];
  risadas.addAll(['kkk', 'haha', 'rsrs']);
  print(risadas);
  print(risadas.runtimeType);

  print('---------------');

  final alfabeto = ['a', 'b'];
  alfabeto.add('c');
  print(alfabeto);
  print(alfabeto.runtimeType);

  print('---------------');

  /// Lista de tamanho fixo:
  final vogaisFixo = List<String>.filled(5, 'e');
  vogaisFixo[0] = 'a';
  vogaisFixo[4] = 'u';
  // vogaisFixo.add('a'); // Erro
  print(vogaisFixo);
}
