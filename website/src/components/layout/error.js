import React from "react";
import { useTheme } from "styled-components";
import * as G from "../layout/styles";

const ErrorContent = () => {
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

        <G.Paragraph>Esta página não existe :/ </G.Paragraph>
      </G.Boundary>
    </G.Section>
  );
};

export default ErrorContent;
