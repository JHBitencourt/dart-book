void main() {
  int a = 5;
  double b = 8.2;
  double c = 1;
  num x = (a * b) + c;
  print('Resultado: $x'); // > Resultado: 42
  print('a: ${a.runtimeType}'); // > a: int
  print('b: ${b.runtimeType}'); // > b: double
  print('x: ${x.runtimeType}'); // > x: double
}
