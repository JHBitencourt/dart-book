void main() {
  final vogais = ['a', 'e', 'i'];
  final consoantes = ['b', 'c', 'd'];
  final alfabeto = [...vogais, ...consoantes];
  print(alfabeto); // > [a, e, i, b, c, d]
}