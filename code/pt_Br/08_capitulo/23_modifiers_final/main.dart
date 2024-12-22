import 'arquivo.dart';

//Modificador final desabilita subclasses e subtipos:
class B extends A {} // Erro
class C implements A {} // Erro

final a = A();