void main() {
  (int x, int y, int z) coordenada1 = (10, 3, 4);
  (int r, int g, int b) cor1 = (10, 3, 4);
  print(coordenada1 == cor1); // > true

  ({int x, int y, int z}) coordenada2 = (x: 10, y: 3, z: 4);
  ({int r, int g, int b}) cor2 = (r: 10, g: 3, b: 4);
  print(coordenada2 == cor2); // > false
}