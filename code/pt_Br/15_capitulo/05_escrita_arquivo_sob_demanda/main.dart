import 'dart:io';

Future<void> main() async {
  final file = File('teste.txt');
  IOSink sink = file.openWrite(mode: FileMode.write);
  await for (String texto in gerarStream()) {
    sink.write(texto);
    await sink.flush();
  }
  await sink.close();
}

Stream<String> gerarStream() async* {
  for (int i = 0; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield '$i\n';
  }
}
