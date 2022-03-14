// class Programador {
//   DateTime? nascimento;
// }
//
// void main() {
//   final p1 = Programador();
//   p1.nascimento = DateTime(1995, 12, 1, 2, 30);
//   print(p1.nascimento); // > 1995-12-01 02:30:00.000
// }

class Programador {
  DateTime? _nascimento;

  set nascimento(DateTime? value) {
    if (value != null)
      _nascimento = DateTime(value.year, value.month, value.day);
  }

  DateTime? get nascimento => _nascimento;

  int get idade {
    if (_nascimento == null) return 0;
    return DateTime.now().difference(_nascimento!).inDays ~/ 365;
  }
}

void main() {
  final p1 = Programador();
  p1.nascimento = DateTime(1995, 12, 1, 2, 30);
  print(p1.nascimento); // > 1995-12-01 00:00:00.000
  print(p1.idade); // > 26
}
