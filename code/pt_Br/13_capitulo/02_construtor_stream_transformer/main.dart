import 'dart:async';

StreamTransformer<String, String> criarTransformer({
  String sufixo = '',
  String prefixo = '',
}) {
  return StreamTransformer<String, String>(
      (Stream<String> streamEntrada, bool cancelOnError) {
    late StreamController<String> controller;
    late StreamSubscription<String> subscription;
    controller = StreamController<String>(
      onListen: () {
        subscription = streamEntrada.listen((dado) {
          if (dado.length == 1 && RegExp('[a-zA-Z]').hasMatch(dado)) {
            controller.sink.add('$prefixo$dado$sufixo');
          } else {
            controller.sink.addError('Elemento inválido');
          }
        },
            onDone: controller.close,
            onError: controller.addError,
            cancelOnError: cancelOnError);
      },
      onPause: () => subscription.pause(),
      onResume: () => subscription.resume(),
      onCancel: () => subscription.cancel(),
    );
    return controller.stream.listen(null);
  });
}

void main() {
  final stream = Stream.fromIterable(['z', '0', '%', 'U']);
  final streamTransformada =
      stream.transform(criarTransformer(sufixo: '-', prefixo: '-'));
  streamTransformada.listen(print, onError: print);
}
