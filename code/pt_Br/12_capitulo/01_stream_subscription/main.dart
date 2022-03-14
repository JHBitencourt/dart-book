import 'dart:async';

void main() {
  print('Início main()');
  final stream = Stream<String>.value('A');
  StreamSubscription subscription = stream.listen((dado) {
    print('Novo evento: $dado');
  });
  print('Fim main()');
}
