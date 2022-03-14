import 'dart:async';

class AlfabetoTransformer implements StreamTransformer<String, String> {
  AlfabetoTransformer({this.sufixo = '', this.prefixo = ''}) {
    _controller = StreamController(
        onListen: _onListen,
        onCancel: _onCancel,
        onPause: () => _subscription.pause,
        onResume: () => _subscription.resume);
  }

  AlfabetoTransformer.broadcast({this.sufixo = '', this.prefixo = ''}) {
    _controller =
        StreamController.broadcast(onListen: _onListen, onCancel: _onCancel);
  }

  late StreamController<String> _controller;
  late StreamSubscription<String> _subscription;
  late Stream<String> _streamEntrada;
  String sufixo;
  String prefixo;

  void _onListen() {
    _subscription = _streamEntrada.listen(_onData,
        onError: _controller.addError, onDone: _controller.close);
  }

  void _onCancel() {
    _subscription.cancel();
  }

  void _onData(String dado) {
    if (dado.length == 1 && RegExp('[a-zA-Z]').hasMatch(dado)) {
      _controller.sink.add('$prefixo$dado$sufixo');
    } else {
      _controller.sink.addError('Elemento inválido');
    }
  }

  @override
  Stream<String> bind(Stream<String> stream) {
    _streamEntrada = stream;
    return _controller.stream;
  }

  @override
  StreamTransformer<RS, RT> cast<RS, RT>() => StreamTransformer.castFrom(this);
}

void main() {
  final stream = Stream
      .fromIterable(['A', 'b', 'CC', 'D', '2', '@']
  );
  final streamTransformada = stream
      .transform(AlfabetoTransformer(sufixo: ']', prefixo: '['));
  streamTransformada.listen(print, onError: print);
}