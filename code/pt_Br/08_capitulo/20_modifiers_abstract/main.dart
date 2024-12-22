abstract class A {}
class B extends A {}
class C implements A {}

// Modificador abstract desabilita o instanciamento
final a = A(); // Erro