void main() {
  var list = [1, 2, 3, 4];
  var [primeiro, ..., ultimo] = list;
  print('$primeiro - $ultimo'); // > 1 - 4

  var (a, b) = ('esquerda', 'direita');
  (a, b) = (b, a);
  print('$a - $b'); // > direita - esquerda

  var coordenada = (4, 2);
  if(coordenada case (var x, var y) when x > 0 && y > 0) {
    print('Coordenadas positivas $x-$y!'); // > Coordenadas positivas 4-2!
  }
  
  switch (coordenada) {
    case (var x, var y) when x > 0 && y > 0:
      print('1° quadrante do plano cartesiano!'); // > 1° quadrante do plano cartesiano!
    case (var x, var y) when x < 0 && y < 0:
      print('3° quadrante do plano cartesiano!');
  }

  var cliente = Cliente(id: 42, apelido: 'Bob', idade: 28);
  var Cliente(:id, apelido: nickname) = cliente;
  print('Cliente $id é o $nickname'); // > Cliente 42 é o Bob
}

class Cliente {
  final int id;
  final String apelido;
  final int? idade;

  Cliente({required this.id, required this.apelido, this.idade});
}
