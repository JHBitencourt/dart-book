String e = 'Douglas Adams';

void main() {
  print('Vazio: ${e.isEmpty}'); // > Vazio: false
  print("Adicionando à esquerda '>': ${e.padLeft(15, '>')}");
  // > Adicionando à esquerda '>': >>Douglas Adams
  print("Adicionando à direita '<': ${e.padRight(16, '<')}");
  // > Adicionando à direita '<': Douglas Adams<<<
  print("Mudar todos 'a' para 'e': ${e.replaceAll('a', 'e')}");
  // > Mudar todos 'a' para 'e': Dougles Adems
  print("Mudar primeiro 'a' para 'e': ${e.replaceFirst('a', 'e')}");
  // > Mudar primeiro 'a' para 'e': Dougles Adams
  print("Dividindo: ${e.split(" ")[0]}"); // > Dividindo: Douglas
  print("Dividindo: ${e.split(" ")[1]}"); // > Dividindo: Adams
  print('''Matching:
    Contém 'gl': ${e.contains("gl")}
    Termina com 'Adams': ${e.endsWith("Adams")}
    Começa com 'D': ${e.startsWith("d".toUpperCase())}''');
}
