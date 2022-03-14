import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  final file = File('teste.txt');
  Stream<List<int>> streamBytes = file.openRead();
  Stream<String> linhas =
      utf8.decoder.bind(streamBytes).transform(LineSplitter());
  await for (var linha in linhas) {
    print('Valor da linha: ${linha}');
  }
}
