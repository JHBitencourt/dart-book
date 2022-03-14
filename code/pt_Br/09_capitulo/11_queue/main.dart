import 'dart:collection';

void main() {
  final megasena = Queue<int>();
  megasena.addAll([11, 35]);
  print(megasena);
  megasena.addFirst(4); // > {4, 11, 35}
  print(megasena);
  megasena.removeLast(); // > {4, 11}
  print(megasena);
  megasena.addLast(44); // > {4, 11, 44}
  print(megasena);
  megasena.removeFirst(); // > {11, 44}
  print(megasena);
}
