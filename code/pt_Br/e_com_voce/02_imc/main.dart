void main() {
  int idade = 26;
  double altura = 1.71; // centimetros
  double peso = 64.2; // quilogramas

  double imc = peso / (altura * altura);
  print('IMC: $imc');

  if (idade < 20) {
    /// crianças/adolescentes
    if (imc < 13) {
      print('Abaixo do peso');
    } else if (imc >= 13 && imc < 16.8) {
      print('Peso normal ideal');
    } else if (imc >= 16.8 && imc < 18.3) {
      print('Sobrepeso');
    } else {
      print('Obesidade');
    }
  } else if (idade >= 20 && idade < 59) {
    /// adultos
    if (imc < 18.5) {
      print('Abaixo do peso');
    } else if (imc >= 18.5 && imc < 25) {
      print('Peso normal ideal');
    } else if (imc >= 25 && imc < 30) {
      print('Sobrepeso');
    } else if (imc >= 30 && imc < 35) {
      print('Obesidade grau 1');
    } else if (imc >= 35 && imc < 40) {
      print('Obesidade grau 2');
    } else {
      print('Obesidade grau 3');
    }
  } else {
    /// idosos
    if (imc < 22) {
      print('Abaixo do peso');
    } else if (imc >= 22 && imc < 27) {
      print('Peso normal ideal');
    } else {
      print('Obesidade');
    }
  }
}
