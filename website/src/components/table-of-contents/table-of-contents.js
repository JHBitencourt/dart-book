import React from "react";
import { useTheme } from "styled-components";
import { StaticImage } from "gatsby-plugin-image";
import * as S from "./styles";
import * as G from "../layout/styles";

const TableOfContents = () => {
  const theme = useTheme();

  return (
    <G.Section>
      <G.Boundary>
        <G.AlignTitle>
          <G.SectionTitle>Sobre o conteúdo&nbsp;</G.SectionTitle>
          <StaticImage
            src="../../images/dolphin.png"
            alt="Golfinho"
            height={25}
          />
        </G.AlignTitle>
        <br />

        <S.BoxTimeline>
          <S.Timeline maxWidth="900px">
            <S.ContainerLeftTimeline maxWidth="900px">
              <S.ContentTimeline>
                <G.Paragraph>
                  A primeira parte do livro busca introduzir a história da linguagem e as motivações por trás dela.
                </G.Paragraph>
                <G.Paragraph>
                  Após isso vamos iniciar com o básico da linguagem. Veremos sobre os operadores e estruturas de 
                  controle existentes. Como funciona o sistema de tipagem escolhido e as mudanças originadas 
                  pela <i>null safety</i>.
                </G.Paragraph>
                <G.Paragraph>
                  Além de explorar o mundo das funções, métodos, closures e todas essas diversas nomenclaturas.
                </G.Paragraph>
              </S.ContentTimeline>
            </S.ContainerLeftTimeline>

            <S.ContainerRightTimeline maxWidth="900px">
              <S.ContentTimeline>
                <G.Paragraph>
                  Na segunda parte, avançamos para outros conceitos fundamentais de programação e como Dart os aborda. 
                </G.Paragraph>
                <G.Paragraph>
                  Veremos sobre tratamento de erros e como criar <i>libraries</i> e <i>packages</i>, junto as suas 
                  particularidades.
                </G.Paragraph>
                <G.Paragraph>
                  Em seguida abordaremos os conceitos de Orientação a Objetos, finalizando com <i>generics</i> e as estruturas
                  de dados presentes na linguagem.
                </G.Paragraph>
              </S.ContentTimeline>
            </S.ContainerRightTimeline>

            <S.ContainerLeftTimeline maxWidth="900px">
              <S.ContentTimeline>
                <G.Paragraph>
                  Por fim, entraremos nos conceitos mais avançados e também essenciais para o dia a dia do desenvolvedor.
                </G.Paragraph>
                <G.Paragraph>
                  Veremos sobre concorrência e os conceitos de programação assíncrona, além de entender a importância 
                  do <i>event loop</i> por trás disso tudo.
                </G.Paragraph>
                <G.Paragraph>
                  Em seguida vamos conhecer o mundo das <i>streams</i> e como elas são úteis em várias situações.
                </G.Paragraph>
                <G.Paragraph>
                  Também nos aprofundaremos no funcionamento das <i>isolates</i> e <i>zones</i>. Dois conceitos pouco
                  explorados e conhecidos pelas pessoas que trabalham com a linguagem.
                </G.Paragraph>
                <G.Paragraph>
                  Por fim, com um exemplo prático, aprenderemos a manipular arquivos utilizando todos os conceitos aprendidos.
                </G.Paragraph>
              </S.ContentTimeline>
            </S.ContainerLeftTimeline>
          </S.Timeline>
        </S.BoxTimeline>

        <br />

        <G.Link
          href="/table-of-contents"
          rel="noreferrer"
          textColor={theme.textColor}
        >
          Ver o sumário completo
        </G.Link>
      </G.Boundary>
    </G.Section>
  );
};

export default TableOfContents;
