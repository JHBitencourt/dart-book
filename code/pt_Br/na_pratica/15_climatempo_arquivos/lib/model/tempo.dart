class Tempo {
  Tempo.fromJson(Map<String, dynamic> jsonMap)
      : temperatura = jsonMap['temperature'],
        velocidadeVento = jsonMap['wind_velocity'],
        humidade = jsonMap['humidity'],
        sensacao = jsonMap['sensation'],
        data = DateTime.parse(jsonMap['date']);
  final num temperatura;
  final num velocidadeVento;
  final num humidade;
  final num sensacao;
  final DateTime data;
}
