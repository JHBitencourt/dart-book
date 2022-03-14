void main() {
  var somaInt = soma(1, 2);
  var somaString = soma('1', '2');
  print('$somaInt: ${somaInt.runtimeType}'); // > 3: int
  print('$somaString: ${somaString.runtimeType}'); // > 12: String
}

soma(a, b) => a + b;
