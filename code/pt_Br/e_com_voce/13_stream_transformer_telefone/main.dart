import 'dart:async';

const telefonePattern =
    r'^(?:(?:\+|00)?(55)\s?)?(?:(?:\(?[1-9][0-9]\)?)?\s?)?(?:((?:9\d|[2-9])\d{3})-?(\d{4}))$';

StreamTransformer<String, String> transformerTelefone() {
  return StreamTransformer.fromHandlers(
      handleData: (String dado, EventSink<String> sink) {
    final regExp = RegExp(telefonePattern);

    if (regExp.hasMatch(dado)) {
      sink.add('Telefone válido: $dado');
    } else {
      sink.addError('---> Inválido: $dado');
    }
  }, handleError:
          (Object error, StackTrace stackTrace, EventSink<String> sink) {
    sink.addError('Erro stream');
  }, handleDone: (EventSink<String> sink) {
    sink.add('Stream finalizada');
  });
}

void main() {
  StreamController<String>? controller;
  controller = StreamController<String>(onListen: () {
    controller!.sink.add('4891883344');
    controller.sink.add('(473) 998735467');
    controller.sink.add('47991433265');
    controller.sink.add('(47) 998735467');
    controller.sink.add('473998735467');
    controller.sink.add('554891883344');
    controller.close();
  });
  final streamEmail = controller.stream.transform(transformerTelefone());
  streamEmail.listen(print, onError: print);
}
