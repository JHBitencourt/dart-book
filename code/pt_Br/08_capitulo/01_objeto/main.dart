class Programador {
  String? nome;
  double salario = 0.0;
  List<String> tarefas = [];
  List<String>? linguagens;

  void trabalhar() {}
}

void main() {
  final programador = Programador()..nome = 'Julio Bitencourt';
  programador.tarefas.add('Terminar livro de Dart');

  print(programador.runtimeType);
  print(programador.toString());
}
