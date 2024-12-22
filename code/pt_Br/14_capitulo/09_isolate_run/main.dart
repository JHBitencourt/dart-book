import 'dart:convert';
import 'dart:isolate';

void main() async {
  final (int id, String cliente) = await Isolate.run(() async {
    final json = await Future.delayed(Duration(seconds: 2), () {
      return '{"id": 42,"cliente": "Elon Musk"}';
    });
    
    final dados = jsonDecode(json);
    return (dados['id'] as int, dados['cliente'] as String);
  });

  print('Cliente mais rico: [id: $id, nome: $cliente]');
}