void main() {
  //String('Erro'); // Sem construtor default
  var a = '42'; // Forma literal
  print(a); // > 42
  print(a.codeUnits); // > [52, 50]
  print(String.fromCharCode(52)+String.fromCharCode(50)); // > 42
}