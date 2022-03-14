class Programador {
  Programador({
    this.nome = 'Fulano',
    this.linguagens = const [],
  });

  Programador.dart(this.nome) {
    linguagens = ['Dart'];
  }

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
  final p1 = Programador(nome: 'James Gosling', linguagens: ['Java']);
  final p2 = Programador.dart('Julio');
  print('$p1 ama ${p1.linguagens}');
  print('$p2 ama ${p2.linguagens}');
}
