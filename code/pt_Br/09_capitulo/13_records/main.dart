void main() {
  var turing = ('Alan Turing', 41, 1954);
  var hawking = ('Stephen Hawking',);
  var lovelace = ('Ada Lovelace', idade: 36, falecimento: 1852);
  
  print(hawking.runtimeType); // > (String)
  print(turing.runtimeType); // > (String, int, int)
  print(turing.$1); // > Alan Turing
  print(turing.$3); // > 1954
  print(lovelace.idade); // > 36
}