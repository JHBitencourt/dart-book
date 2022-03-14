import 'dart:io';

Stream<int> divisores(int numero) async* {
  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) yield i;
  }
}

Future<void> main() async {
  print('Insira o valor:');
  final numero = int.parse(stdin.readLineSync()!);

  print('Todos os divisores de $numero:');
  await for (final e in divisores(numero)) {
    print('Número: $e');
  }
}
