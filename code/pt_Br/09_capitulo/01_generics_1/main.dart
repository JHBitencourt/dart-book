abstract class VeiculoAutomotor {}

class Carro extends VeiculoAutomotor {}

class Caminhao extends VeiculoAutomotor {}

class FilaPedagio {
  List _veiculos = [];

  void entrarNaFila(veiculo) {
    _veiculos.add(veiculo);
  }
}

void main() {
  final fila = FilaPedagio();
  fila.entrarNaFila(Carro());

  /// Caminhão não deveria entrar na mesma fila que um carro
  fila.entrarNaFila(Caminhao());
}
