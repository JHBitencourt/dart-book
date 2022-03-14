abstract class VeiculoAutomotor {}

class Carro extends VeiculoAutomotor {}

class Caminhao extends VeiculoAutomotor {}

class FilaPedagio<T extends VeiculoAutomotor> {
  List<T> _veiculos = [];

  void entrarNaFila(T veiculo) {
    _veiculos.add(veiculo);
  }
}

class Bicicleta {}

/// Restringindo os tipos aceitos em FilaPedagio<T> para apenas subclasses de
/// VeiculoAutomotor, estamos impedindo que veículos como Bicicleta entrem na
/// fila de pedágio.
void main() {
  final filaCarro = FilaPedagio<Carro>();
  final filaCaminhao = FilaPedagio<Caminhao>();
  // final filaBicicleta = FilaPedagio<Bicicleta>(); //Erro
}
