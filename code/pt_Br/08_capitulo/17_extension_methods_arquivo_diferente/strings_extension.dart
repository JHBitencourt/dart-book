extension StringExtension on String {
  String capitalizar() =>
      this.isEmpty ? this : '${this[0].toUpperCase()}${this.substring(1)}';

  String operator &(String other) => '$this - $other';

  String get primeiraPalavra => split(' ').first;

  String get ultimaPalavra => split(' ').last;
}