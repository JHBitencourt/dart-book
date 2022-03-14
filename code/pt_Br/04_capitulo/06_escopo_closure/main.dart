Function criaClosure() {
  var resposta = 42;
  return () {
    resposta++;
    print(resposta);
  };
}

void main() {
  var somaImprime = criaClosure();
  somaImprime();
  somaImprime();
}
