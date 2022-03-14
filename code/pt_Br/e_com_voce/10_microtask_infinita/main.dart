import 'dart:async';

import 'dart:io';

int counter = 0;

/// O Future nunca é executado por conta da prioridade da microtask queue
main() {
  print('Início main()');
  criarMicrotask();
  Future(() => 42).then(print);
  print('Fim main()');
}

criarMicrotask() {
  scheduleMicrotask(() {
    counter++;
    print('microtask $counter');
    sleep(Duration(seconds: 1));
    criarMicrotask();
  });
}