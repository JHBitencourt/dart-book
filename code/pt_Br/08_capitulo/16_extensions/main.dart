String capitalizar(String texto) {
  if (texto.isEmpty) return texto;
  return '${texto[0].toUpperCase()}${texto.substring(1)}';
}

extension on String {
  String capitalizar() =>
      this.isEmpty ? this : '${this[0].toUpperCase()}${this.substring(1)}';

  String operator &(String other) => '$this - $other';

  String get primeiraPalavra => split(' ').first;

  String get ultimaPalavra => split(' ').last;
}

void main() {
  print(capitalizar('dart')); // > Dart
  print('julio'.capitalizar()); // > Julio
  print('julio bitencourt'.primeiraPalavra); // > julio
  print('julio bitencourt'.ultimaPalavra.capitalizar());
  // > Bitencourt
  print('julio' & 'bitencourt'); // > julio - bitencourt
}
