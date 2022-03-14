import 'cidade.dart';
import 'tempo.dart';

class ClimaTempo {
  ClimaTempo.fromJson(Map<String, dynamic> jsonMap)
      : cidade = Cidade.fromJson(jsonMap),
        tempo = Tempo.fromJson(jsonMap['data']);
  final Cidade cidade;
  final Tempo tempo;

  String toString() => '''
Cidade:  ${cidade.nome},  ${cidade.estado}  -  ${cidade.pais}
${tempo.data}
Temperatura:  ${tempo.temperatura}  -  Sensação:  ${tempo.sensacao}
Umidade:  ${tempo.humidade}  -  Velocidade  do  Vento:  ${tempo.velocidadeVento}
''';
}
