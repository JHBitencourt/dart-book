void main() {
  var spock = '\u{1f596}';
  print(spock); // Imprime o símbolo
  print(spock.length); // > 2
  print(spock.codeUnits); // > [55357, 56726]
  print(spock.runes); // > (128406)
  print(String.fromCharCode(55357) + String.fromCharCode(56726));
  // Imprime o símbolo
}