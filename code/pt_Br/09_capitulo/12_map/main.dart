import 'dart:collection';

void main() {
  final clientes = Map<int, String>();
  clientes[1] = 'Rafael';
  clientes[1] = 'Juliana';
  clientes.putIfAbsent(2, () => 'João');
  clientes.putIfAbsent(2, () => 'Maria');
  print(clientes); // {1: Juliana, 2: João}
  final usuario = {
    'Nome': 'Julio',
    'Linguagens': ['dart', 'java']
  };
  usuario.putIfAbsent('Github', () => 'JHBitencourt');
  print(usuario.runtimeType); // > _InternalLinkedHashMap<String, Object>

  print(usuario['Nome']!.runtimeType); // > String
  print(usuario['Sobrenome']?.runtimeType); // > null

  Iterable chaves = clientes.keys;
  Iterable valores = clientes.values;
  Iterable<MapEntry> elementos = clientes.entries;
  print(elementos.first.key); // > 1
  print(elementos.first.value); // > Juliana

  final linkedHashMap = LinkedHashMap.fromIterables(['3', '1', '2'], [1, 2, 3]);
  print(linkedHashMap); // > {3: 1, 1: 2, 2: 3}

  final hashMap = HashMap.fromIterables(['3', '1', '2'], [1, 2, 3]);
  print(hashMap); // > {1: 2, 3: 1, 2: 3}

  final splayTreeMap = SplayTreeMap<String, int>.fromIterables(
      ['3', '1', '2'], [1, 2, 3], (a, b) {
    return int.parse(a).compareTo(int.parse(b));
  });
  print(splayTreeMap); // > {1: 2, 2: 3, 3: 1}
}
