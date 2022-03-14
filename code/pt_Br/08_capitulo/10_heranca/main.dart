class Funcionario {
  String? nome;
  double salario = 0.0;
  List<String> tarefas = [];

  void trabalhar() {
    print('${this.runtimeType} trabalhando..');
  }
}

class Programador extends Funcionario {
  List<String>? linguagens;
}

class Gerente extends Funcionario {
  double? bonus;
}

void main() {
  final programador = Programador()
    ..nome = 'Bill Gates'
    ..linguagens = ['.Net'];
  final gerente = Gerente()
    ..nome = 'Jeff Bezos'
    ..bonus = 500;
  programador.trabalhar(); // > Programador trabalhando..
  print('Programador é Funcionario? ${programador is Funcionario}');
  // > Programador é Funcionario? true
  gerente.trabalhar(); // > Gerente trabalhando..
  print('Gerente é Funcionario? ${gerente is Funcionario}');
  // > Gerente é Funcionario? true
}
