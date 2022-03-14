import 'dart:async';

StreamTransformer<String, String> criarTransformer({
  String sufixo = '',
  String prefixo = '',
}) {
  return StreamTransformer.fromHandlers(
      handleData: (String dado, EventSink<String> sink) {
    if (dado.length == 1 && RegExp('[a-zA-Z]').hasMatch(dado)) {
      sink.add('$prefixo$dado$sufixo');
    } else {
      sink.addError('Elemento inválido');
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
    controller!.sink.add('j');
    controller.sink.add('42');
    controller.sink.addError('Erro!');
    controller.close();
  });
  final streamTransformada =
      controller.stream.transform(criarTransformer(sufixo: '*', prefixo: '*'));
  streamTransformada.listen(print, onError: print);
}
