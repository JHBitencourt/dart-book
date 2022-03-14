import 'dart:async';

void main() async {
  print('início main()');
  final controller = StreamController();
  controller.sink.add('42');
  await for (var dado in controller.stream) {
    print('Novo evento: $dado');
  }
  print('fim main()');
}
