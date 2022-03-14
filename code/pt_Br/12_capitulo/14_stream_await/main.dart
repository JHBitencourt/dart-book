// void main() {
//   print('início main()');
//   final stream = Stream.fromIterable(['4', '2']);
//   stream.listen((dado) {
//     print('Novo evento: $dado');
//   });
//   print('fim main()');
// }

Future<void> main() async {
  print('início main()');
  final stream = Stream.fromIterable(['4', '2']);
  await for (var dado in stream) {
    print('Novo evento: $dado');
  }
  print('fim main()');
}
