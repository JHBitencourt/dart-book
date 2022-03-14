import 'dart:io';

/// Imprime o [object] no terminal da plataforma.
void log(Object object) {
  stdout.writeln('[IO] $object');
}
