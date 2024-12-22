import 'dart:html';
import 'package:web/web.dart' as web;
import 'package:jogo/src/partida.dart';
import 'package:jogo/src/resultado.dart';

late web.HTMLDivElement divOpcoes;
late web.HTMLDivElement divResultado;

bool jogando = true;
late Resumo resumo;

void main() {
  inicializarReferencias();
  final partida = configurarPartida();

  for (final opcao in opcoes) {
    divOpcoes.append(
      web.HTMLImageElement()
        ..className = 'opcao'
        ..src = 'images/$opcao.png'
        ..height = 120
        ..onClick.listen(
          (web.MouseEvent e) {
            if (jogando) {
              resumo = partida.iniciar(humano: opcao);
              jogando = false;
              mostrarResultado(resumo);
            }
          },
        ),
    );
  }
}

void mostrarResultado(Resumo resumo) {
  divResultado.append(
    web.HTMLSpanElement()
      ..className = resumo.resultado.classeCss
      ..text = resumo.resultado.mensagem,
  );

  adicionarEspaco();
  divResultado.append(web.HTMLSpanElement()..text = resumo.mensagem);
  adicionarEspaco();
  divResultado.append(
    web.HTMLButtonElement()
      ..text = 'Jogar novamente!'
      ..onClick.listen(jogarNovamente),
  );
}

void adicionarEspaco() {
  divResultado.append(web.HTMLBRElement());
  divResultado.append(web.HTMLBRElement());
}

void jogarNovamente(web.MouseEvent e) {
  jogando = true;
  while(divResultado.firstChild != null) {
    divResultado.removeChild(divResultado.firstChild!);
  }
}

void inicializarReferencias() {
  divOpcoes = web.document.querySelector('#opcoes') as web.HTMLDivElement;
  divResultado = web.document.querySelector('#resultado') as web.HTMLDivElement;
}
