void main() {
  print(textoGrande(42));
  print(textoGrande('Este tem que ser um texto muito grande com mais de 120 '
      'caracteres para que a função retorne verdadeiro. Parabéns pra você'
      'que está lendo esse livro. :) S2 '));
}

bool textoGrande(Object objeto) {
  if (objeto is String) {
    return objeto.length > 120;
  } else {
    return false;
  }
}
