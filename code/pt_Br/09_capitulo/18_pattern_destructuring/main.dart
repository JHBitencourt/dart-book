void main() {
  final resposta = 42;
  switch (resposta) {
    case 42:
      print('sentido da vida, do universo e tudo mais!');
  }

  final pares = [2, 4, 6, 8];
  switch (pares) {
    case [2, _, 4, 5]:
      print('Segundo valor não importa');
    case [2 || 4, ...]:
      print('Começa com 2 ou 4!'); // > Começa com 2 ou 4!
    default:
      print('Sem matching.');
  }
}

