void main() {
  Future(() => 'Future normal').then(print);
  Future.microtask(() => 'Future microtask').then(print);
}
