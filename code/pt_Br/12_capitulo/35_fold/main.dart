void main() {
  final streamUm = Stream.fromIterable(['A', 'E', 'I', 'O', 'U']);
  final streamDois = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  streamUm.fold('Vogais->', (a, b) => '[$a,$b]').then(print);
  streamDois.fold(10, (int a, int b) => a + b).then(print);
}
