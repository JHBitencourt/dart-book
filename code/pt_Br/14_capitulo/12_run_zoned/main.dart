import 'dart:async';

void main() {
  runZoned(() {
    print('Zone nova: ${Zone.current}');
    print('Zone nova pai: ${Zone.current.parent}');
  });
}
