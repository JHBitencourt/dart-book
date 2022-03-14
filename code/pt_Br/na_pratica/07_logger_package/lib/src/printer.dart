import 'log.dart';
import 'printer_console.dart' if (dart.library.io) 'printer_io.dart' as printer;

/// Uma impressora de logs utilizada por [Logger] que funciona em todas
/// as plataformas.
class Printer {
  const Printer({this.inicio = '', this.fim = ''});

  /// Utilizado para personalizar o início de cada linha impressa no log.
  /// Por padrão não contém um valor.
  final String inicio;

  /// Utilizado para personalizar o término de cada linha impressa no log.
  /// Por padrão não contém um valor.
  final String fim;

  /// Imprime o [object] de log de acordo com a plataforma utilizada.
  /// É possível personalizar a [cor] do texto impresso.
  void log(Cores cor, Object object) {
    printer.log(
      '${ansiCores[cor]}'
      '$inicio$object$fim'
      '$resetarCor',
    );
  }
}
