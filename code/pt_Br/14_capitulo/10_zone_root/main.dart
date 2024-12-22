import 'dart:async';

void main() {
  final root = Zone.current;
  print(root); // > Instance of '_RootZone'
}
