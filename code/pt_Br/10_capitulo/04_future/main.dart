void main() {
  final future = Future<int>(() {
    return 84 ~/ 2;
  }).then((int valor) {
    print('Future em estado Completo, valor: $valor');
  }).catchError((Object erro, StackTrace stacktrace) {
    print('Future em estado Completo, erro: $erro');
    print(stacktrace);
  }).whenComplete(() {
    print('Future finalizado');
  });
  print('$future em estado Incompleto');
}