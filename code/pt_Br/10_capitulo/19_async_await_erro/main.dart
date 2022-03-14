void main() {
  buscarId();
  print('Capturando um erro assíncrono...');
}

Future<int> buscarId() async {
  try {
    return await Future<int>(() {
      return 42 ~/ 0;
    });
  } on UnsupportedError catch (e) {
    print('Erro capturado: $e');
  } catch (e) {
    print('Demais erros caem aqui');
  }
  return 0;
}

// Future<int> buscarId() async {
//   return Future<int>(() {
//     return 42 ~/ 0;
//   }).catchError((dynamic e) {
//     print('Erro capturado: $e');
//     return 0;
//   }, test: (dynamic e) => e is UnsupportedError)
//       .catchError(
//         (dynamic e) {
//       print('Demais erros caem aqui');
//       return 0;
//     },
//   );
// }
