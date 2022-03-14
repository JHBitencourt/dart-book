void temperaturaEm(String cidade, [int? ano = 2020, int? mes, int dia = 01]) {
  print('$cidade $dia/$mes/$ano');
}

void main() {
  temperaturaEm('Floripa'); // > Floripa 1/null/2020
  temperaturaEm('Floripa', null); // > Floripa 1/null/null
  temperaturaEm('Floripa', 2021, 1); // > Floripa 1/1/2021
  temperaturaEm('Floripa', 2021, 1, 2); // > Floripa 2/1/2021
}
