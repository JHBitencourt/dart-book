import 'dart:async';

const emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

StreamTransformer<String, String> transformerEmail() {
  return StreamTransformer.fromHandlers(
      handleData: (String dado, EventSink<String> sink) {
    final regExp = RegExp(emailPattern);

    if (regExp.hasMatch(dado)) {
      sink.add('E-mail válido: $dado');
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
    controller!.sink.add('jhb@aaa');
    controller.sink.add('jhb@gmail.com');
    controller.sink.add('peter-parker@marvel.com');
    controller.sink.add('julio.gmail.com');
    controller.close();
  });
  final streamEmail = controller.stream.transform(transformerEmail());
  streamEmail.listen(print, onError: print);
}
