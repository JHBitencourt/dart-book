/// Parâmetros: posicional e obrigatório
void temperaturaEm(String cidade, int? ano, int? mes, int dia) {
  print('$cidade $dia/$mes/$ano');
}

void main() {
  temperaturaEm('Floripa', null, 12, 1); // > Floripa 1/12/null
}
