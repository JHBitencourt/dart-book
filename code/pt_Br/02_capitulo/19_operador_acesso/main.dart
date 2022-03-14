void main() {
  final map = {
    'vogais': 'a,e,i,o,u',
    'consoantes': 'b,c,d,...',
  };
  final vogais = ['a', 'e', 'i', 'o', 'u'];
  print(vogais[0]); // > a
  print(vogais[4]); // > u
  print(map['vogais']); // > a,e,i,o,u
}