class Id {
  Id(this._valor);
  final int _valor;
  
  bool get isValid => _valor > 0;
  Id get next => Id(_valor +1);

  @override
  String toString() => '$_valor';
}

class Funcionario {
  Funcionario(this.id);
  final Id id;
}

void main() {
  final id = Funcionario(Id(1)).id;
  // print(id + 1); // Erro de compilação
  print(id.next.next); // > 3
  print(id.runtimeType); // > Id
}