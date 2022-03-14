import 'dart:io';

Future<void> main() async {
  final dir = Directory('dir/teste');
  await dir.create(recursive: true);
  print('Diretórios criados: $dir');
  // > Diretórios criados: Directory: 'dir/teste'
}
