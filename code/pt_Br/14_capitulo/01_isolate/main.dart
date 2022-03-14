import 'dart:isolate';

void main() async {
  Isolate mainIsolate = Isolate.current;
  print('Executando na isolate: {${mainIsolate.debugName}}');
  mainIsolate.kill(priority: Isolate.immediate);
  print('fim do main()');
}
