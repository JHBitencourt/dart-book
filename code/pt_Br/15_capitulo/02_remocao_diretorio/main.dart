import 'dart:io';

Future<void> main() async {
  final dir = Directory('dir/teste');
  // await dir.create(recursive: true);

  if (await dir.exists()) {
    await dir.delete(recursive: true);
    print('Diretório removido: $dir');
    // > Diretório removido: Directory: 'dir/teste'
  }
}
