void main() async {
  final stream = Stream.value('42');
  final inscricaoUm = stream.listen(print);
  /// Erro! Só é possível 1 listener em streams de inscrição única.
  final inscricaoDois = stream.listen(print);
}
