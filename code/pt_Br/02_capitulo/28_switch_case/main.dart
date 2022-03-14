void main() {
  var estacao = 'Verão';
  switch (estacao) {
    case 'Outono':
    case 'Verão':
      print('Tá calor'); // > Tá calor
      break;
    case 'Inverno':
      print('Tá frio');
      break;
    default:
      print('Tá bom..');
  }

  var dia = 'Domingo';
  switch (dia) {
    segunda:
    case 'Segunda':
      print('Aff, já é segunda..');
      break;
    case 'Terça':
      print('Usando um feitiço do tempo..');
      continue sexta;
    case 'Quarta':
    case 'Quinta':
      throw 'Meio da semana';
    sexta:
    case 'Sexta':
      print('Sexxxxtou!');
      break;
    case 'Sábado':
      return;
    case 'Domingo':
      print('Aproveitando enquanto dá..');
      continue segunda;
    default:
      print('Esse dia não existe..');
  }
}