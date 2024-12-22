void main() {
  final vogais = ['a', 'e', 'i', 'o', 'u'];
  for(final vogal in vogais) {
    if(vogal == 'e') continue;
    if(vogal == 'u') break;
    print(vogal); // > a i o
  }
}