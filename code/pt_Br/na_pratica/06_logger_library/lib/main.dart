import 'log/log.dart';

void main() {
  const logger = Logger(
    nivel: Nivel.warning,
    printer: Printer(inicio: 'Customizado: {', fim: '}'),
  );
  logger.error('Este é um erro');
  logger.warning('Este é um warning');
  logger.info('Esta é uma info');
}
