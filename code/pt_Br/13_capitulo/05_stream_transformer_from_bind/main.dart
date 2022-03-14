import 'dart:async';

class AlfabetoTransformer extends StreamTransformerBase<String, String> {
  AlfabetoTransformer({
    String sufixo = '',
    String prefixo = '',
  }) : _transformer = criarTransformer(sufixo, prefixo);
  final StreamTransformer<String, String> _transformer;

  @override
  Stream<String> bind(Stream<String> stream) => _transformer.bind(stream);

  static StreamTransformer<String, String> criarTransformer(
      String sufixo, String prefixo) {
    return StreamTransformer<String, String>(
        (Stream<String> inputStream, bool cancelOnError) {
      late StreamController<String> controller;
      late StreamSubscription<String> subscription;
      controller = StreamController<String>(
        onListen: () {
          subscription = inputStream.listen(
            (dado) {
              if (dado.length == 1 && RegExp('[a-zA-Z]').hasMatch(dado)) {
                controller.sink.add('$prefixo$dado$sufixo');
              } else {
                controller.sink.addError('Elemento inválido');
              }
            },
            onDone: controller.close,
            onError: controller.addError,
          );
        },
        onPause: () => subscription.pause(),
        onResume: () => subscription.resume(),
        onCancel: () => subscription.cancel(),
      );
      return controller.stream.listen(null);
    });
  }
}

final alfabetoMinusculoTransformer = StreamTransformer.fromBind(
    (Stream<String> stream) => stream
        .transform(AlfabetoTransformer(sufixo: '}', prefixo: '{'))
        .map((dado) => dado.toLowerCase()));

void main() {
  final stream = Stream.fromIterable(['F', 'f', '42', 'J']);
  final streamTransformada = stream.transform(alfabetoMinusculoTransformer);
  streamTransformada.listen(print, onError: print);
}
