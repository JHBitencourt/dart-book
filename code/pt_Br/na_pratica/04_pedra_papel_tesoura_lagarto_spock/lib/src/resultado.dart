enum ResultadoType { empate, vitoria, derrota }

class Resultado {
  Resultado(this.resultadoType, this.resumo);

  final ResultadoType resultadoType;
  final String resumo;
}
