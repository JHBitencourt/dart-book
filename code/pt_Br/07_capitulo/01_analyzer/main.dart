/// Execute o analyzer neste arquivo e deverá ser apontado 1 erro e nenhuma
/// melhoria. Afinal, ele não possui um linter configurado.
class pessoa {
  pessoa({this.nome = null});

  final String? nome

  void DizerOi() {
    print('Olá!	Me	chamo	$nome');
  }
}

main() {
  final julio = new pessoa(nome: 'Julio');
  julio.DizerOi();
}