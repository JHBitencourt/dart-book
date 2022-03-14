enum ResultadoType { empate, vitoria, derrota }

void main() {
  print(ResultadoType.values);
  // > [ResultadoType.empate, ResultadoType.vitoria, ResultadoType.derrota]
  print(ResultadoType.empate); // > ResultadoType.empate
  print(ResultadoType.empate.name); // > empate
}
