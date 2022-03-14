class Programador {
  // Programador(String nome, List<String> linguagens) {
  //   this.nome = nome;
  //   this.linguagens = linguagens;
  // }

  /// Syntax sugar para a forma acima:
  // Programador(this.nome, this.linguagens);

  /// Construtor padrão com parâmetros opcionais e valores default:
  Programador({this.nome = 'Fulano', this.linguagens = const []});

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
  final p1 = Programador();
  final p2 = Programador(nome: 'Julio', linguagens: ['Dart']);
  print(p1);
  print(p2);
}
