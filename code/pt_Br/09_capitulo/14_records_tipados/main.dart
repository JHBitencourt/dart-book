void main() {
  (String, int, int) turing = ('Alan Turing', 41, 1954);
  (String nome,) hawking = ('Stephen Hawking',);
  (String nome, {int idade, int falecimento}) lovelace; 
  lovelace = ('Ada Lovelace', idade: 36, falecimento: 1852);
  print(lovelace.runtimeType); // > (String, {int falecimento, int idade})
}