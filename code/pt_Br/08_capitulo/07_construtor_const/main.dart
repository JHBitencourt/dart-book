class LinguagemProgramacao {
  const LinguagemProgramacao(this.nome);

  final String nome;
}

void main() {
  final primeira = const LinguagemProgramacao('Dart');
  final segunda = const LinguagemProgramacao('Dart');
  final terceira = LinguagemProgramacao('Dart');
  print(identical(primeira, segunda)); // > true
  print(identical(primeira, terceira)); // > false
}
