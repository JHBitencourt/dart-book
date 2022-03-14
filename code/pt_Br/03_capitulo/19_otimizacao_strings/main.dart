var elonUm = 'Elon Musk';
var elonDois = 'Elon Musk';
var jeff = 'Jeff Bezos';

void main() {
  print(elonUm == jeff); // > false
  print(identical(elonUm, jeff)); // > false
  print(elonUm == elonDois); // > true
  print(identical(elonUm, elonDois)); // > true
}
