// Coerção implícita em javascript:
// var a = "Resposta: " + 42;
// console.log(a); // >	"Resposta:	42"

void main() {
  var a = 'Resposta:' + 42.toString();
  print(a); // > Resposta: 42
}
