class Funcionario {
  void trabalhar() {
    print('Funcionario trabalhando..');
  }
}

class Programador extends Funcionario {
  @override
  void trabalhar() {
    print('Programador trabalhando..');
  }
}

class Gerente extends Funcionario {
  @override
  void trabalhar() {
    print('Gerente trabalhando..');
    super.trabalhar();
  }
}

class Startup {
  Startup(this.funcionarios);

  List<Funcionario> funcionarios;

  void novoProjeto() {
    funcionarios.forEach((f) => f.trabalhar());
  }
}

void main() {
  Funcionario funcionario = Funcionario();
  Funcionario programador = Programador();
  Funcionario gerente = Gerente();
  final startup = Startup([funcionario, programador, gerente]);
  startup.novoProjeto();
}
