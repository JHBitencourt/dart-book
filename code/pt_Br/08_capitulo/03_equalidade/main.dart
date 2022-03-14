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
  final p2 = Programador()..nome = 'Julio';
  print(p1 == p2); // > false
  print('hash p1: ${p1.hashCode} - hash p2: ${p2.hashCode}');
  // > hash p1: 624437211 - hash p2: 125619715
}
