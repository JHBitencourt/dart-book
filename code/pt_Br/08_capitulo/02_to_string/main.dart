class Programador {
  String? nome;
  double salario = 0.0;
  List<String> tarefas = [];
  List<String>? linguagens;

  void trabalhar() {}

  @override
  String toString() => '$nome';
}

void main() {
  final p1 = Programador()..nome = 'Julio';
  print(p1); // > Julio
}
