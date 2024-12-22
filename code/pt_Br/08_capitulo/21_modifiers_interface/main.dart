import 'arquivo.dart';

// Modificador interface desabilita a herança:
class B extends A {} // Erro

class C implements A {}
final a = A();