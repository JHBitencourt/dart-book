import 'dart:io';

void main() {
  print(temperaturaAtual());
  print(previsaoAmanha());
}

String temperaturaAtual() {
  sleep(const Duration(seconds: 3));
  return 'Está fazendo 28º';
}

String previsaoAmanha() {
  sleep(const Duration(seconds: 4));
  return 'Amanhã fará 35º';
}