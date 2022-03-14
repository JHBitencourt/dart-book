import 'package:http/http.dart' as http;
void main(List<String> args) async {
  http.Response response = await http.get(Uri.parse('https://google.com'));
  print(response.body);
}