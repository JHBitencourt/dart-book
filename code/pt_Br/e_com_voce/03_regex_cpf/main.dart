void main() {
  final regExp = RegExp(r'^\d{3}\.?\d{3}\.?\d{3}\-?\d{2}$');

  print(regExp.hasMatch('000'));
  print(regExp.hasMatch('000111222333'));
  print(regExp.hasMatch('000.111.222-333'));
  print(regExp.hasMatch('000.111.22299'));
  print(regExp.hasMatch('000.111.222-99'));
  print(regExp.hasMatch('000111222-99'));
  print(regExp.hasMatch('00011122299'));
}