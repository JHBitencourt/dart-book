void main() {
  var nota = 8;
  switch (nota) {
    case 0:
      print('Sério?');
    case 1 || 2 || 3:
      print('Estudar mais, urgente!');
    case >= 4 && <= 6:
      print('Tá quase lá..');
    case > 6 && <= 8:
      print('Tá na média!'); // > Tá na média
    case > 8 when nota <= 10:
      print('GOAT!');
    default:
      print('Nota inválida');
  }
}