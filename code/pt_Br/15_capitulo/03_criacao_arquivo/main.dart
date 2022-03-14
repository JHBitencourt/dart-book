import 'dart:io';

Future<void> main() async {
  final file = File('teste.txt');
  await file.create();
  print('Arquivo criado: $file'); // > Arquivo criado: File: 'teste.txt'
}
