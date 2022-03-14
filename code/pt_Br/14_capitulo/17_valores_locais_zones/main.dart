import 'dart:async';

void main() {
  runZoned(() {
    print(Zone.current['resposta']); // > 42
  }, zoneValues: {'resposta': 42});

  /// Usando symbol como chave
  runZoned(() {
    print(Zone.current[#resposta]); // > 42
  }, zoneValues: {#resposta: 42});

  /// Sobrescrevendo valores globais
  runZoned(() {
    logZone();
    runZoned(() {
      logZone();
      print('Resposta ${Zone.current[#resposta]}');
    }, zoneValues: {#nomeZone: 'Zone B'});
  }, zoneValues: {#nomeZone: 'Zone A', #resposta: 42});
}

void logZone() => print('Rodando na ${Zone.current[#nomeZone]}');
