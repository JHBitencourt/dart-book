import 'dart:async';
void main () {
  print('Início main()');
  Timer.run(() => print('Event loop 1')); // #E1
  Timer.run(() { // #E2
    scheduleMicrotask(() => print('Microtask 3')); // #M3
    print('Event loop 2');
  });
  scheduleMicrotask(() => print('Microtask 1')); // #M1
  Timer.run(() => print('Event loop 3')); // #E3
  scheduleMicrotask(() => print('Microtask 2')); // #M2
  print('Fim main()');
}