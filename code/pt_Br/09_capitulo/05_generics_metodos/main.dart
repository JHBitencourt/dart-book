T ultimo<T extends num>(List<T> itens) {
  T ultimo = itens.last;
  return ultimo;
}

void main() {
  print(ultimo<int>([10, 20, 30])); // > 30
  print(ultimo([1.4, 2, 42.0])); // > 42.0
}
