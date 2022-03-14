var ola = (String nome) {
  print('Olá $nome');
};
Function hello = (String nome) => print('Olá $nome');

void main() {
  ola('Julio'); // > Olá Julio
  ola('${ola.runtimeType}'); // > Olá (String) => Null

  hello('Julio'); // > Olá Julio
  hello('${hello.runtimeType}'); // > Olá (String) => void
}
