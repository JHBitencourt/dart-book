import 'strings_extension.dart';

String capitalizar(String texto) {
  if (texto.isEmpty) return texto;
  return '${texto[0].toUpperCase()}${texto.substring(1)}';
}

void main() {
  print(capitalizar('dart')); // > Dart
  print('julio'.capitalizar()); // > Julio
  print('julio bitencourt'.primeiraPalavra); // > julio
  print('julio bitencourt'.ultimaPalavra.capitalizar());
  // > Bitencourt
  print('julio' & 'bitencourt'); // > julio - bitencourt
}
