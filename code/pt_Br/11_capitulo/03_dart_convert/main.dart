import 'dart:convert';

void main() {
  final dados =
      '{"data":[{ "id":1, "name":"Acre" }, { "id":2, "name":"Alagoas" }]}';
  Map<String, dynamic> map = json.decode(dados);
  print(map);
}
