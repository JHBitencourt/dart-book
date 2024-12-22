import 'package:meta/meta.dart';

extension type Id(int id) {
  Id get next => Id(id + 1);
  bool get isValid => id > 0;
}

class Funcionario {
  Funcionario(this.id);
  final Id id;
}

void main() {
  final id = Funcionario(Id(1)).id;
  // print(id + 1); // Erro de compilação
  print(id.next.next); // > 3
  print(id.runtimeType); // > int

  int idInt = id as int;
  print(idInt + idInt); // > 2
  if(id case int n) print('${n+n}'); // > 2
}

extension type MinhaString(String _) implements String {
  @redeclare
  int operator [](int index) => codeUnitAt(index);
}