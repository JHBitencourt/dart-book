void main() {
  Future<int>(() => Future.value(42)).then(print);
  print('Future.value():');
}
