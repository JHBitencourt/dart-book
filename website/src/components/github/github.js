import React from "react";
import { useTheme } from "styled-components";
import * as S from "./styles";
import * as G from "../layout/styles";

const Github = () => {
  const theme = useTheme();

  return (
    <G.Section primary>
      <G.Boundary>
        <G.AlignTitle>
          <S.ButtonArea>
            <G.LinkButton
              target="_blank"
              el="noreferrer noopener"
              href="https://github.com/JHBitencourt/dart-book"
            >
              <G.Button
                color={theme.dark === "true" ? "#FFF" : "#37475A"}
                hoverColor={theme.dark === "true" ? "#F4F4F4" : "#212B36"}
                textColor={theme.dark === "true" ? "#37475A" : "#FFF"}
              >
                Acesse o Github do livro
              </G.Button>
            </G.LinkButton>
          </S.ButtonArea>
        </G.AlignTitle>
      </G.Boundary>
    </G.Section>
  );
};

export default Github;
