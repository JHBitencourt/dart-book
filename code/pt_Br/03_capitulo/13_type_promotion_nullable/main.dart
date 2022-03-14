void main() {
  print(letrasNome('Julio', 'Bitencourt'));
  print(letrasNome('Julio', null));

  print(letrasNome2('Julio', 'Bitencourt'));
  print(letrasNome2('Julio', null));
}

List<String> letrasNome(String nome, String? sobrenome) {
  var letras = nome.split('');
  if (sobrenome != null) {
    letras.addAll(sobrenome.split(''));
  }
  return letras;
}

List<String> letrasNome2(String nome, String? sobrenome) {
  var letras = nome.split('');
  if (sobrenome == null) return letras;
  letras.addAll(sobrenome.split(''));
  return letras;
}
