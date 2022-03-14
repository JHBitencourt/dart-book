import 'printer.dart';

/// Enum com as cores utilizadas para personalizar a fonte de log no temrinal.
enum Cores { verde, vermelho, azul }

/// Código ANSI utilizado para resetar a cor da fonte no terminal.
const resetarCor = '\x1b[m';

/// Map com o código ANSI utilizado para personalizar as cores de fonte no terminal.
const ansiCores = {
  Cores.vermelho: '\x1b[31m',
  Cores.verde: '\x1b[32m',
  Cores.azul: '\x1b[36m',
};

/// Controla o [Nivel] permitido do log para ser impresso, quanto mais crítico
/// mais restrito é, e menos níveis são impressos.
/// Abaixo as opções ordenadas pelo menos crítico:
///
/// * [Nivel.info] signica que serão impressos todos os níveis.
/// * [Nivel.warning] são impressos os logs de [Nivel.warning] e [Nivel.error]
/// * [Nivel.error] é o nível mais restrito, e apenas [Nivel.error] são impressos.
enum Nivel { info, warning, error }

/// Controla a impressão de logs, feitas através do [printer].
/// Imprime logs de acordo com o [nivel] informado.
class Logger {
  const Logger({
    this.printer = const Printer(),
    required this.nivel,
  });

  /// Impressora responsável por imprimir o log de acordo com a plataforma.
  final Printer printer;

  /// Permite definir o [nivel] dos logs impressos.
  final Nivel nivel;

  /// Imprime logs de [Nivel.info] com a cor [Cores.verde].
  void info(Object object) {
    if (_habilitado(Nivel.info)) printer.log(Cores.verde, '[INFO] $object');
  }

  /// Imprime logs de [Nivel.warning] com a cor [Cores.azul].
  void warning(Object object) {
    if (_habilitado(Nivel.warning)) {
      printer.log(Cores.azul, '[WARNING] $object');
    }
  }

  /// Imprime logs de [Nivel.error] com a cor [Cores.vermelho].
  void error(Object object) {
    if (_habilitado(Nivel.error)) {
      printer.log(Cores.vermelho, '[ERROR] $object');
    }
  }

  /// Define se um determinado [Nivel] está habilitado para impressão.
  bool _habilitado(Nivel nivelHabilitado) =>
      nivelHabilitado.index >= nivel.index;
}
