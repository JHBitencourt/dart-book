import React from "react";
import { useTheme } from "styled-components";
import * as S from "./styles";
import * as G from "../layout/styles";

const TableOfContentsFull = () => {
  const theme = useTheme();

  return (
    <G.Section>
      <G.Boundary>
        <G.Link href="/" rel="noreferrer" textColor={theme.textColor}>
          Voltar para home
        </G.Link>
        <br />
        <br />
        <br />

        <S.BoxTimeline>
          <S.Container>
            <G.Paragraph textAlign="start">
              <ol>
                <li>
                  <b>Hello Dart</b>
                  <ol type="i">
                    <li>Uma breve história</li>
                    <li>Mas por que Dart?</li>
                    <li>Ecossistema</li>
                    <li>Facilidade de aprendizado</li>
                    <li>Executando o código</li>
                    <li>Dartpad</li>
                    <li>Utilizando IDE</li>
                    <li>Primeiro programa</li>
                    <li>Até aqui</li>
                  </ol>
                </li>
                <li>
                  <b>Hello Dart</b>
                  <ol type="i">
                    <li>Uma breve história</li>
                    <li>Mas por que Dart?</li>
                    <li>Ecossistema</li>
                    <li>Facilidade de aprendizado</li>
                    <li>Executando o código</li>
                    <li>Dartpad</li>
                    <li>Utilizando IDE</li>
                    <li>Primeiro programa</li>
                    <li>Até aqui</li>
                  </ol>
                </li>
                <li>
                  <b>Hello Dart</b>
                  <ol type="i">
                    <li>Uma breve história</li>
                    <li>Mas por que Dart?</li>
                    <li>Ecossistema</li>
                    <li>Facilidade de aprendizado</li>
                    <li>Executando o código</li>
                    <li>Dartpad</li>
                    <li>Utilizando IDE</li>
                    <li>Primeiro programa</li>
                    <li>Até aqui</li>
                  </ol>
                </li>
              </ol>
            </G.Paragraph>
          </S.Container>
        </S.BoxTimeline>
      </G.Boundary>
    </G.Section>
  );
};

export default TableOfContentsFull;
