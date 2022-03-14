import 'dart:async';

void main() {
  final root = Zone.current;
  print('Zone principal: $root');
  final novaZone = root.fork();
  novaZone.run(() {
    print('Zone nova: ${Zone.current}');
    print('Zone nova pai: ${Zone.current.parent}');
  });
}
