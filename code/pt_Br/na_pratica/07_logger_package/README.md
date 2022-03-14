Um package para facilitar a criação de logs nas aplicações.

## Utilização

A utilização do `logger` é muito simples:

```dart
import 'package:logger/logger.dart';

void main() {
  const logger = Logger(
    nivel: Nivel.warning,
    printer: Printer(inicio: 'Customizado: {', fim: '}'),
  );
  logger.error('Este é um erro');
  logger.warning('Este é um warning');
  logger.info('Esta é uma info');
}
```
