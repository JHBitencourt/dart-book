import 'dart:isolate';

void main(List<String> args, SendPort sendPort) {
  print('[${Isolate.current.debugName}] - Args {$args}');
  sendPort.send('Esse livro é muito massa mesmo!');
}
