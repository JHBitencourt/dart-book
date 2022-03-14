abstract class Assalariado {
  Assalariado(this.salario);

  double salario;

  void receber();
}

abstract class Funcionario {
  String? nome;
  List<String> tarefas = [];

  void trabalhar();
}

class Programador extends Funcionario implements Assalariado {
  Programador({this.salario = 1000});

  List<String>? linguagens;

  @override
  double salario;

  @override
  void trabalhar() {
    print('Programador trabalhando..');
  }

  @override
  void receber() {
    print('Programador recebendo $salario');
  }
}

class Gerente extends Funcionario implements Assalariado {
  Gerente({this.salario = 5000});

  double? bonus;

  @override
  double salario;

  @override
  void trabalhar() {
    print('Gerente trabalhando..');
  }

  @override
  void receber() {
    print('Gerente recebendo $salario');
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
  Funcionario programador = Programador();
  Funcionario gerente = Gerente();
  Funcionario robo = Robo();
  final startup = Startup(
    [programador, gerente, robo],
    [(programador as Assalariado), (gerente as Assalariado)],
  );
  startup.pagarFuncionarios();
}
