import 'dart:io';

main() {
  print('Insira o número para cálculo do fatorial:');
  final numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('Resultado: ${fatorial(numero)}');
}

/// Modo 1:
int fatorial(int numero) {
 if(numero == 0) return 1; // regra especial 0! = 1
 return numero * fatorial(numero - 1);
}

/// Modo 2:
// int fatorial(int numero) => numero == 0 ? 1 : numero * fatorial(numero - 1);