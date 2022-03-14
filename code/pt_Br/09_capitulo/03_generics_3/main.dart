abstract class VeiculoAutomotor {}

class Carro extends VeiculoAutomotor {}

class Caminhao extends VeiculoAutomotor {}

class FilaPedagio<T> {
  List<T> _veiculos = [];

  void entrarNaFila(T veiculo) {
    _veiculos.add(veiculo);
  }
}

/// Tipando FilaPedagio<T> com generics ganhamos a liberdade de criar
/// filas especialistas em um determinado tipo.
/// Como filas só de carros ou caminhões.
void main() {
  final filaCarro = FilaPedagio<Carro>();
  filaCarro.entrarNaFila(Carro());
  // filaCarro.entrarNaFila(Caminhao()); // Erro
  final filaCaminhao = FilaPedagio<Caminhao>();
  filaCaminhao.entrarNaFila(Caminhao());
}
