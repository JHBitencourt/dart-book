import styled, { css } from "styled-components";

export const Header = styled.header`
  ${({ theme }) => css`
    background-color: ${theme.primaryBg};
  `};
`;

export const Toggle = styled.div`
  ${({ theme }) => css`
    max-width: 80%;
    margin: auto;
    padding-top: 20px;
    padding-bottom: 10px;

    .toggle {
      margin-left: auto;
    }

    .toggle > div {
      /* box-shadow: ${theme.dark ? "0 0 35px 1px #e0e0e0a8" : "none"}; */
      box-shadow: none;
    }
  `};
`;
