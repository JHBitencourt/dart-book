/*
Com 9999 Strings:
0:00:00.007252 : StringBuffer
0:00:00.178047 : Concatenação

Com 99999 Strings
0:00:00.020247 : StringBuffer
0:03:59.309432 : Concatenação
*/
const quantidade = 9999;

void main() {
  print("Benchmarking $quantidade strings");

  print("${medir(usarStringBuffer)} : StringBuffer");
  print("${medir(usarConcatenacao)} : Concatenação");
}

Duration medir(Function fn) {
  final sw = Stopwatch();
  sw.start();
  fn();
  return sw.elapsed;
}

void usarStringBuffer() {
  var hodor = new StringBuffer();

  for (var i = quantidade; i > 0; i--) {
    hodor.write(i.toString());
    hodor.write(" hold the door\n");
  }

  hodor.toString();
}

void usarConcatenacao() {
  var hodor = '';

  for (var i = quantidade; i > 0; i--) {
    hodor += i.toString();
    hodor += " hold the door\n";
  }
}