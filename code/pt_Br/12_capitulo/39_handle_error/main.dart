import 'dart:async';

void main() async {
  final controller = StreamController();
  controller.sink.add('4');
  controller.sink.addError('Erro');
  controller.sink.add('2');
  final streamError = controller.stream.handleError((e) {
    print('Erro capturado $e');
  });
  await for (var dado in streamError) {
    print('Novo evento: $dado');
  }
}
