void main() {
  printNome('Douglas', 'Adams');
  printNome('Douglas', null);
}

void printNome(String nome, String? sobrenome) {
  print('$nome $sobrenome');
}

void valorImpar(int numero) {
  print(numero.isEven);
}
// O compilador não permite acessar as propriedades dos tipos em tipos nullable:
// void valorImparNullable(int? numero) {
//   print(numero.isEven);
// }