enum Resultado {
  empate(classeCss: 'empatou', mensagem: 'Empatou..'),
  vitoria(classeCss: 'venceu', mensagem: 'Você ganhou :D'),
  derrota(classeCss: 'perdeu', mensagem: 'Você perdeu :/');

  const Resultado({required this.classeCss, required this.mensagem});

  final String mensagem;
  final String classeCss;
}

class Resumo {
  Resumo(this.resultado, this.mensagem);
  final Resultado resultado;
  final String mensagem;
}
