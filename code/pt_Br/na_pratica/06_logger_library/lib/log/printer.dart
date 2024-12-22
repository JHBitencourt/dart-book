part of 'log.dart';

class Printer {
  const Printer({this.inicio = '', this.fim = ''});

  final String inicio;
  final String fim;

  void _log(_Cores cor, Object object) {
    stdout.writeln(
      '${cor.ansi}'
      '$inicio$object$fim'
      '$_resetarCor',
    );
  }
}
