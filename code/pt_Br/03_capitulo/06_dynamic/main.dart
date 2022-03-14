void main() {
  dynamic objeto = 42;
  // Uma exceção será lançada em tempo de execução:
  objeto.metodoQueNemExiste(); // > NoSuchMethodError
}
