void main() async {
  final stream = Stream.value('42').asBroadcastStream();
  stream.listen((dado) => print('Inscrição 1 - $dado'));
  stream.listen((dado) => print('Inscrição 2 - $dado'));
}
