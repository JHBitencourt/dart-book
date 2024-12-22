void main() {
  var clientes = {1:'Bob', 2:'Ana'};
  for(var MapEntry(:key, value: nome) in clientes.entries) {
    print('Cliente $key chama-se $nome');
  }
}