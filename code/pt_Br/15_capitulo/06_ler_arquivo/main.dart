import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  final file = File('teste.txt');
  String texto = await file.readAsString(encoding: Utf8Codec());
  print(texto);
}
