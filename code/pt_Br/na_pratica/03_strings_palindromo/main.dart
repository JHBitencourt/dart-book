import 'dart:io';

void main() {
  print("------ Palíndromo ------");

  print("> Informe sua frase:");
  var frase = stdin.readLineSync()?.replaceAll(' ', '').toLowerCase();

  print(frase?.toUpperCase());

  var fraseContrario = frase?.split('').reversed.join();
  print("\n$frase -> $fraseContrario \n");

  if (frase == fraseContrario) {
    print('É um palíndromo!! o/');
  } else {
    print('Não é um palíndromo!!');
  }

  print("------------------------");
}
