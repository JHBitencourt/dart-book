import styled, { css } from "styled-components";

export const Footer = styled.footer`
  ${({ theme, bgColor }) => css`
    background-color: ${bgColor};
    text-align: center;
    padding: 20px;
    color: ${theme.textColor};
  `};
`;

export const Svg = styled.svg`
  width: 30px;
  height: 30px;
  vertical-align: middle;
`;
