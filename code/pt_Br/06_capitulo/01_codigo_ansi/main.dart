import 'dart:io';

void error(Object object) {
  stdout.writeln('\x1b[31m[ERROR]	$object\x1b[m');
}

void main() {
  /// O texto será impresso em vermelho no terminal:
  error('Um texto de erro!');
}