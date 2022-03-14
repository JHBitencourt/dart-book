mixin Assalariado on Funcionario {
  double salario = 0;

  void receber() {
    print('Pegando o salário do ${super.nome}, valor de $salario');
  }
}

abstract class Funcionario {
  String? nome;
  List<String> tarefas = [];

  void trabalhar();
}

class Programador extends Funcionario with Assalariado {
  List<String>? linguagens;

  void trabalhar() {
    print('Programador trabalhando..');
  }
}

class Gerente extends Funcionario with Assalariado {
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

class Startup {
  List<Funcionario> funcionarios;
  List<Assalariado> assalariados;

  Startup(this.funcionarios, this.assalariados);

  void pagarFuncionarios() {
    assalariados.forEach((a) => a.receber());
  }
}

void main() {
  Funcionario programador = Programador()
    ..nome = 'Bill Gates'
    ..salario = 34000;
  Funcionario gerente = Gerente()
    ..nome = 'Douglas Adams'
    ..salario = 42000;
  Funcionario robo = Robo();
  final startup = Startup(
    [programador, gerente, robo],
    [(programador as Assalariado), (gerente as Assalariado)],
  );
  startup.pagarFuncionarios();
}
