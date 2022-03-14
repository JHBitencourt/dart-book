class Programador {
  String? nome;
  double salario = 0.0;
  List<String> tarefas = [];
  List<String>? linguagens;

  void trabalhar() {}

  @override
  String toString() => '$nome';

  @override
  bool operator ==(Object other) => other is Programador && nome == other.nome;

  @override
  int get hashCode => nome.hashCode;
}

void main() {
  final p1 = Programador()..nome = 'Julio';
  final p2 = Programador()..nome = 'Julio';
  print(p1 == p2); // > true
  print(identical(p1, p2)); // > false
  print('hash p1: ${p1.hashCode} - hash p2: ${p2.hashCode}');
  // > hash p1: 514913100 - hash p2: 514913100
}
