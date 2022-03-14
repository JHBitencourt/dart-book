// const double pi =  3.14;
const pi = 3.14;
// final double circunferencia = 2 * pi;
final circunferencia = 2 * pi;

/// O código abaixo produz um erro de compilação, afinal variáveis const
/// são definidas em tempo de compilação, enquanto final são em tempo de execução
// final pi =  3.14;
// const circunferencia = 2 * pi;

/// Lista com valores constantes:
var valoresConstantes = const [1, 2, 3];

final listFinal = [1, 2, 3];
const listConst = [1, 2, 3];

void main() {
  /// Objetos constantes são canonicalizados:
  var a = getValorCanonicalizado();
  var b = getValorCanonicalizado();
  print('A e B são os mesmos objetos? ${identical(a, b)}');
  // > 'A e B são os mesmos objetos? true'

  /// Objetos constantes são imutáveis, não é permitido adicionar valores em uma
  /// lista constante:
  listFinal[0] = 4; // é permitido
  // listConst[0] = 4; // erro de execução
}

List getValorCanonicalizado() => const [4, 5, 6];
