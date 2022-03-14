abstract class Funcionario {
  String? nome;
  double salario = 0.0;
  List<String> tarefas = [];

  void trabalhar();
}

class Programador extends Funcionario {
  List<String>? linguagens;

  @override
  void trabalhar() {
    print('Programador trabalhando..');
  }
}

class Gerente extends Funcionario {
  double? bonus;

  @override
  void trabalhar() {
    print('Gerente trabalhando..');
  }
}

class Robo extends Funcionario {
  double? bateria;

  @override
  void trabalhar() {
    print('0100010110010110');
  }
}

class Assalariado {
  Assalariado(this.salario);

  double? salario;

  void receber() {}
}

class Startup {
  Startup(this.funcionarios);

  List<Funcionario> funcionarios;

  void novoProjeto() {
    funcionarios.forEach((f) => f.trabalhar());
  }
}

void main() {
  Funcionario programador = Programador();
  Funcionario gerente = Gerente();
  final startup = Startup([programador, gerente]);
  startup.novoProjeto();
}
