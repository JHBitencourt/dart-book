void main() {
  print('Dart' + ' é ' + 'incrível!'); // > Dart é incrível!
  print('Dart' ' é ' 'incrível!'); // > Dart é incrível!
  var buffer = StringBuffer();
  buffer.write('Dart é');
  buffer.write(' incrível!');
  buffer.writeAll(['E esse', ' livro ', 'também!']);
  print(buffer); // > Dart é incrível!E esse livro também!
}
