String? nome;

void main() {
  nome = 'Julio';

  // Erro de compilação, afinal nome é uma variável global:
  // if (nome != null) print(nome.length);

  // Acessando com operador de cast
  if (nome != null) print((nome as String).length);

  // Acessando com o bang
  if (nome != null) print(nome!.length);
}
