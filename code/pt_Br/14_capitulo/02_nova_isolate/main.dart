import 'dart:isolate';

void main() async {
  Isolate mainIsolate = Isolate.current;
  print('Executando na isolate: {${mainIsolate.debugName}}');
  await Isolate.spawn(funcaoEntrada, 'Olá nova Isolate.',
      debugName: 'novaIsolate');
}

void funcaoEntrada(String parametro) {
  final isolate = Isolate.current;
  print('Executando na isolate: {${isolate.debugName}}');
  print('Parâmetro: $parametro');
}
