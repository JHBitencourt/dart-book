void temperaturaEm(String cidade,
    {required int dia, required int? mes, int? ano = 2020}) {
  print('$cidade $dia/$mes/$ano');
}

void main() {
  temperaturaEm('Floripa', dia: 1, mes: null); // > Floripa 1/null/2020
  temperaturaEm('Floripa', mes: 1, dia: 12); // > Floripa 12/12/2020
  temperaturaEm('Floripa', mes: 1, dia: 2, ano: 2021); // > Floripa 2/1/2021
}
