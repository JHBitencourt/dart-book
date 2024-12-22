void main() {
  var nota = 9;
  var mensagem = switch (nota) {
    0 => 'Sério?',
    1 || 2 || 3 => 'Estudar mais, urgente!',
    >= 4 && <= 6 => 'Tá quase lá..',
    > 6 && <= 8 => 'Tá na média!',
    > 8 when nota <= 10 => 'GOAT!',
    _ => 'Nota inválida'
  };
  print(mensagem); // > GOAT! 
}