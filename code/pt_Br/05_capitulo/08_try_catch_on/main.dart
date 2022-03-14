void main() {
  try {
    DateTime.parse('01/01/2022');
    // DateTime.parse('2022-01-22');
  } on FormatException catch (e) {
    print('O formato deve ser ano-mes-dia.. $e');
  } catch (e, s) {
    print('Exceção capturada: $e');
    print('Stacktrace: $s');
  }
}
