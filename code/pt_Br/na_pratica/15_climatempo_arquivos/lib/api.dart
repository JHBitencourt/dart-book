import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model/cidade.dart';
import 'model/clima_tempo.dart';

const apiBaseUrl = 'https://apiadvisor.climatempo.com.br';
const token = '5e411a25e4adf6786d3fd7fa45d9fa9c';

Future<List<Cidade>> buscarCidades({String? nome, String? estado}) async {
  var url = '$apiBaseUrl/api/v1/locale/city?';
  if (nome != null) url += 'name=$nome';
  if (estado != null) url += '&state=$estado';

  final response = await http.get(Uri.parse('$url&token=$token'));
  if (response.statusCode != 200) throw response.body;
  final responseJson = json.decode(response.body);

  final cidades = <Cidade>[];
  responseJson.forEach((map) => cidades.add(Cidade.fromJson(map)));
  return cidades;
}

Future<void> registrarCidade({required int idCidade}) async {
  final url = '$apiBaseUrl/api-manager/user-token/$token/locales';
  final map = {'localeId[]': '$idCidade'};
  await http.put(Uri.parse(url), body: map);
}

Future<ClimaTempo> climaAtual({required int idCidade}) async {
  final url =
      '$apiBaseUrl/api/v1/weather/locale/$idCidade/current?token=$token';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode != 200) throw response.body;
  final responseJson = json.decode(response.body);

  return ClimaTempo.fromJson(responseJson);
}
