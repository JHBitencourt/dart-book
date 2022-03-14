import 'dart:math';

void main() {
  // calcularCircunferencia(-2);
  calcularCircunferenciaError(-2);

  Motorista('', 14);
  MotoristaError('', 14);
}

double calcularCircunferencia(double raio) {
  assert(raio >= 0, 'O raio deve ser positivo.');
  return 2 * pi * raio;
}

double calcularCircunferenciaError(double raio) {
  if (raio < 0) throw AssertionError('O raio deve ser positivo.');
  return 2 * pi * raio;
}

class Motorista {
  final String nome;
  final int idade;

  const Motorista(this.nome, this.idade)
      : assert(nome != '', 'O nome não pode ser vazio'),
        assert(idade >= 18, 'O motorista deve ser maior de idade');
}

class MotoristaError {
  final String nome;
  final int idade;

  MotoristaError(this.nome, this.idade) {
    if (nome.isEmpty) throw AssertionError('O nome não pode ser vazio');
    if (idade < 18) throw AssertionError('O motorista deve ser maior de idade');
  }
}
