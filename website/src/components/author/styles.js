import styled, { css } from "styled-components";

export const Avatar = styled.figure`
  ${({ theme }) => css`
    min-width: 120px;
    width: 120px;
    height: 120px;
    border: 3px solid ${theme.textColor};
    border-radius: 50%;
    overflow: hidden;

    @media (max-width: 900px) {
      margin: 0px 0px 20px 0px;
    }
  `};
`;

export const AuthorContainer = styled.div`
  ${({ theme, widthExpanded, textAlign, alignItems }) => css`
    display: flex;
    flex-direction: column;
    text-align: ${textAlign};
    align-items: ${alignItems};
    width: ${widthExpanded};

    @media (max-width: 900px) {
      width: 100%;
      margin-bottom: 30px;
    }
  `};
`;

export const Icon = styled.div`
  ${({ theme }) => css`
    width: 30px;
    height: 30px;
    cursor: pointer;
    color: ${theme.textColor};

    &:not(:last-child) {
      margin-right: 10px;
    }

    a {
      all: unset;
    }
  `};
`;
