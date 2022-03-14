class ResultadoType {
  const ResultadoType._internal(this._classeCss, this._mensagem);

  final String _classeCss;
  final String _mensagem;

  static const empate = const ResultadoType._internal('empatou', 'Empatou..');
  static const vitoria =
      const ResultadoType._internal('venceu', 'Você ganhou :D');
  static const derrota =
      const ResultadoType._internal('perdeu', 'Você perdeu :/');

  static List<ResultadoType> values() => [empate, derrota, vitoria];

  toString() =>
      'ResultadoType {classeCss = $_classeCss, mensagem = $_mensagem}';
}

void main() {
  for (var r in ResultadoType.values()) {
    print(r);
  }
}
