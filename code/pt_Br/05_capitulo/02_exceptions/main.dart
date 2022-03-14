import 'dart:io';

void main() {
  // Um formato inválido informado resultará em FormatException
  final dataUsuario = stdin.readLineSync();
  DateTime.parse(dataUsuario!);
}
