void temperaturaEm(String cidade, {int? ano = 2020, int dia = 01, int? mes}) {
  print('$cidade $dia/$mes/$ano');
}

void main() {
  temperaturaEm('Floripa', ano: 2021); // > Floripa 1/null/2021
  temperaturaEm('Floripa', mes: 1); // > Floripa 1/1/2020
  temperaturaEm('Floripa', mes: 1, dia: 2, ano: null); // > Floripa 2/1/null
}
