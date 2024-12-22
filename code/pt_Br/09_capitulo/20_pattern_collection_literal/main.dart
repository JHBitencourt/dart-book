void main() {
  var numeros = [-3, 4, 6, 1, -9, -4];
  var positivos = [for (var n in numeros) if (n case > 0) n];
  print(positivos); // > [4, 6, 1]
}