import React from "react";
import { useTheme } from "styled-components";
import { StaticImage } from "gatsby-plugin-image";
import * as S from "./styles";
import * as G from "../layout/styles";
import { BookCover } from "book-cover-3d";

const BookInfo = () => {
  const theme = useTheme();

  return (
    <G.Section primary>
      <G.Boundary>
        <G.SplitColumnFlex>
          <S.Content>
            <G.Title>O guia de Dart</G.Title>
            <G.Subtitle>A história, os fundamentos, os conceitos avançados, e tudo mais.</G.Subtitle>
            <G.Paragraph>
              Disponível impresso ou em seu leitor favorito (.pdf, .epub, .mob).
            </G.Paragraph>
            <G.Paragraph>Garanta a sua cópia:</G.Paragraph>

            <p>
              <G.Button color="#FF9900" hoverColor="#E78B00" textColor="#FFF">
                Casa do Código
              </G.Button>

              <G.Button
                color={theme.dark === "true" ? "#FFF" : "#37475A"}
                hoverColor={theme.dark === "true" ? "#F4F4F4" : "#212B36"}
                textColor={theme.dark === "true" ? "#37475A" : "#FFF"}
              >
                <span>Amazon</span>
              </G.Button>
            </p>
          </S.Content>
          <S.Book>
            <BookCover height={300} width={200} rotate={25} bgColor="#000">
              <StaticImage src="../../images/guia.jpeg" alt="Capa do livro" />
            </BookCover>
          </S.Book>
        </G.SplitColumnFlex>
      </G.Boundary>
    </G.Section>
  );
};

export default BookInfo;
