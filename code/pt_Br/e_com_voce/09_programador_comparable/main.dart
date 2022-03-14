class Programador implements Comparable<Programador> {
  Programador({required this.nome, required this.salario});

  String nome;
  double salario = 0.0;
  List<String> tarefas = [];
  List<String>? linguagens;

  void trabalhar() {}

  int compareTo(Programador other) {
//    return salario.compareTo(other.salario); //CompareTo salário
    return nome.compareTo(other.nome);
  }

  String toString() => 'Programador{nome: $nome, salario: $salario}';
}

void main() {
  final programadores = [
    Programador(nome: 'James Gosling', salario: 3000),
    Programador(nome: 'Bill Gates', salario: 5000),
    Programador(nome: 'Larry Page', salario: 2000),
  ];
  print('Lista sem ordem: $programadores');
  programadores.sort();
  print('Lista sorteada: $programadores');
}
