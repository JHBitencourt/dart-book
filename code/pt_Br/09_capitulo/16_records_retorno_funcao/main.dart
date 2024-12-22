void main() {
  var comprovante = comprovanteTransacao();
  print(comprovante.$1); // > chavepix@gmail.com

  var (chaveDestino, _, hora: data) = comprovanteTransacao();
  print(chaveDestino); // > chavepix@gmail.com
  print(data); // > 2024-11-19 21:24:02.623
}

typedef Comprovante = (String chave, double valor, {DateTime hora});
Comprovante comprovanteTransacao() {
  return ('chavepix@gmail.com', 29.9, hora: DateTime.now());
}

// (String, double, DateTime) comprovanteTransacao() {
//   return ('chavepix@gmail.com', 29.9, DateTime.now());
// }