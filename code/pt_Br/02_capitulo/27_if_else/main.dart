void main() {
  var resposta = 20;
  if (resposta != 42) {
    print('A resposta está errada'); // > A resposta está errada
  } else {
    print('A resposta está correta');
  }

  var imc = 25.1;
  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc < 24.9) {
    print('Peso normal ideal');
  } else if (imc >= 24.9 && imc < 29.9) {
    print('Sobrepeso'); // > Sobrepeso
  } else {
    print('Obesidade');
  }
}