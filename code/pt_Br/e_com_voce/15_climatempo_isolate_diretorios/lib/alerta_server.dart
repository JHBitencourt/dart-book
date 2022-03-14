import 'dart:convert';
import 'dart:io';

class AlertaServer {
  Stream<String> start() async* {
    var server = await HttpServer.bind(
      InternetAddress.loopbackIPv4,
      8080,
    );
    await for (HttpRequest request in server) {
      final contentType = request.headers.contentType != null
          ? request.headers.contentType!.mimeType : '';
      final response = request.response;

      if (request.method == 'POST'
          && contentType == 'application/json') {
        final requestMap = await utf8.decoder.bind(request).join();
        final String? aviso = jsonDecode(requestMap)['aviso'];
        if (aviso != null) {
          response
            ..statusCode = HttpStatus.ok
            ..write('Informação recebida!');
          yield aviso;
        } else {
          response
            ..statusCode = HttpStatus.badRequest
            ..write('Formato de request errado..');
        }
      } else {
        response
          ..statusCode = HttpStatus.methodNotAllowed
          ..write('É aceito apenas request POST');
      }
      await request.response.close();
    }
  }
}