void main() async {
  print('início main()');
  final stream = Stream.error(['Error']);
  try {
    await for (var dado in stream) {
      print('Novo evento: $dado');
    }
  } catch (e) {
    print('Erro capturado: $e');
  }
  print('fim main()');
}
