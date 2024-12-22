void main() {
  var coordenadas = [10, 42];
  if (coordenadas case [int x, int y]) {
    print('Coordenadas: (x:$x,y:$y)'); // > Coordenadas: (x:10,y:42)
  } else {
    print('Coordenadas inválidas');
  }
}