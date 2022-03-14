import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  final file = File('teste.txt');
  await file.writeAsString('linha um', encoding: Utf8Codec());
  await file.writeAsString('\nlinha dois', mode: FileMode.append);
}
