void main() {
  var mod = #modificador;
  print(#modificador); // > Symbol("modificador")
  print(mod); // > Symbol("modificador")
  print('mod: ${mod.runtimeType}'); // > mod: Symbol
}