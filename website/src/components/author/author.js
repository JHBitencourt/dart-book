import React from "react";
import { StaticImage } from "gatsby-plugin-image";
import * as S from "./styles";
import * as G from "../layout/styles";
import { Github, Instagram } from "@styled-icons/boxicons-logos";

const Author = () => {
  return (
    <G.Section primary>
      <G.Boundary>
        <G.AlignTitle>
          <StaticImage
            src="../../images/green_guy.png"
            alt="Boneco verde"
            height={20}
          />
          <G.SectionTitle>&nbsp;E o autor?</G.SectionTitle>
        </G.AlignTitle>
        <br />
        <G.SplitColumnFlex>
          <S.AuthorContainer
            widthExpanded={"70%"}
            textAlign={"start"}
            alignItems={"flex-start"}
          >
            <G.Paragraph>
              <b>Julio Henrique Bitencourt</b>
              <br />
            </G.Paragraph>
            <G.Paragraph>
              Bacharel em Ciência da Computação e pós-graduando em
              desenvolvimento mobile pela FIAP. Um eterno estudante, acredito
              que conhecimento nunca será demais e sempre é o momento certo para
              ser um aprendiz em algo.
            </G.Paragraph>
            <G.Paragraph>
              Entusiasta em desenvolvimento mobile, após anos flertando com
              desenvolvimento Android, a partir do final de 2017 venho me
              especializando e trabalhando com Dart na criação de aplicações
              multiplataformas e nativas com o querido Flutter. SDK no qual
              tenho prazer em trabalhar hoje em dia em meu atual emprego como
              Desenvolvedor Mobile.
            </G.Paragraph>
          </S.AuthorContainer>

          <S.AuthorContainer
            widthExpanded={"30%"}
            textAlign={"center"}
            alignItems={"center"}
          >
            <S.Avatar>
              <StaticImage
                src="../../images/JHB.png"
                alt="Capa do livro"
                width={150}
                height={150}
              />
            </S.Avatar>
            <G.SplitColumn>
              <S.Icon>
                <a
                  href="https://github.com/JHBitencourt"
                  target="_blank"
                  rel="noreferrer"
                >
                  <Github />
                </a>
              </S.Icon>
              <S.Icon>
                <a
                  href="https://www.instagram.com/juliobitencourt.dev"
                  target="_blank"
                  rel="noreferrer"
                >
                  <Instagram />
                </a>
              </S.Icon>
            </G.SplitColumn>
          </S.AuthorContainer>
        </G.SplitColumnFlex>
      </G.Boundary>
    </G.Section>
  );
};

export default Author;
