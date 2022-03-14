void comer() => throw 'Acabou	a	comida..';

void main() {
  try {
    comer();
  } on FormatException catch (e) {
    print('O formato  de data deve ser ano-mes-dia.. $e');
  } on Exception catch (e, s) {
    print('Exceção capturada: $e');
    print('Stacktrace: $s');
  }
}
