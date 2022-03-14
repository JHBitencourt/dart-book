/// Execute o analyzer neste arquivo e deverá ser apontado 5 melhorias.
/// Afinal, ele possui o linter configurado em analysis_options.dart
class pessoa {
  pessoa({this.nome = null});

  final String? nome;

  void DizerOi() {
    print('Olá!	Me	chamo	$nome');
  }
}

main() {
  final julio = new pessoa(nome: 'Julio');
  julio.DizerOi();
}