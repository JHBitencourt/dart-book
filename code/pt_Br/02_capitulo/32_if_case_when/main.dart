void main() {
  var coordenadas = [10, -42];
  if (coordenadas case [int x, int y] when x >= 0 && y >= 0) {
    print('Coordenadas: (x:$x,y:$y)');
  }
}