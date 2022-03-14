abstract class VeiculoAutomotor {}

class Carro extends VeiculoAutomotor {}

class Caminhao extends VeiculoAutomotor {}

class FilaPedagioCarro {
  List _veiculos = [];

  void entrarNaFila(Carro veiculo) {
    _veiculos.add(veiculo);
  }
}

class FilaPedagioCaminhao {
  List _veiculos = [];

  void entrarNaFila(Caminhao veiculo) {
    _veiculos.add(veiculo);
  }
}

/// Criar duas filas separadas é uma alternativa, mas não é
/// um bom design de código, pois estamos duplicando código.
void main() {
  var filaCarro = FilaPedagioCarro();
  filaCarro.entrarNaFila(Carro());
  var filaCaminhao = FilaPedagioCaminhao();
  filaCaminhao.entrarNaFila(Caminhao());
}
