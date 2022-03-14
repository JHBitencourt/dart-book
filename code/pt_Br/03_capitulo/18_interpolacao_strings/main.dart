var resposta = 42;

void main() {
  print('''A resposta para a vida
    o universo
    e tudo mais é: $resposta''');
  print('42 * 42 = ${resposta * resposta}'); // > 42 * 42 = 1764
  print('Variável: = \$resposta'); // > Variável: = $resposta
  print(r'Variável: = $resposta'); // > Variável: = $resposta
}
