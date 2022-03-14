//static var global = 'String global'; // Erro
class Livro {
  static int instancias = 0;

  Livro() {
    instancias++;
  }

  String autor = 'Douglas Adams';
}

void main() {
  print('Instâncias: ${Livro.instancias}');
  Livro();
  Livro();
  print('Autor: ${Livro().autor}');
  print('Instâncias: ${Livro.instancias}');
}
