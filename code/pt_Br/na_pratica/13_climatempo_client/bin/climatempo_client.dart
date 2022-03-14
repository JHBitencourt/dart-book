import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  var aviso = args.isNotEmpty ? args.first : '-';
  final jsonMap = {'aviso': aviso};

  HttpClientRequest request =
      await HttpClient().post(InternetAddress.loopbackIPv4.host, 8080, '')
        ..headers.contentType = ContentType.json
        ..write(jsonEncode(jsonMap));

  HttpClientResponse response = await request.close();
  response.transform(utf8.decoder).forEach(print);
}
