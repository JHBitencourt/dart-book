library logger;

import 'dart:io';

part 'printer.dart';

enum _Cores { verde, vermelho, azul }

const _resetarCor = '\x1b[m';
const _ansiCores = {
  _Cores.vermelho: '\x1b[31m',
  _Cores.verde: '\x1b[32m',
  _Cores.azul: '\x1b[36m',
};

enum Nivel { info, warning, error }

class Logger {
  const Logger({
    required this.nivel,
    this.printer = const Printer(),
  });

  final Printer printer;
  final Nivel nivel;

  void info(Object object) {
    if (_habilitado(Nivel.info)) printer._log(_Cores.verde, '[INFO] $object');
  }

  void warning(Object object) {
    if (_habilitado(Nivel.warning))
      printer._log(_Cores.azul, '[WARNING] $object');
  }

  void error(Object object) {
    if (_habilitado(Nivel.error))
      printer._log(_Cores.vermelho, '[ERROR] $object');
  }

  bool _habilitado(Nivel nivelHabilitado) =>
      nivelHabilitado.index >= nivel.index;
}
