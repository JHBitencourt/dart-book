import { createGlobalStyle } from "styled-components";

export default createGlobalStyle`
    @font-face {
      font-family: "Source Code Pro";
      src: url("/fonts/SourceCodePro.ttf") format("ttf");
    }

    body {
      line-height: 0.9;
    }

    * {
      font-family: 'Source Code Pro', monospace;
      letter-spacing: 0.04rem;
      box-sizing: border-box;
    }
`;
