import styled, { css } from "styled-components";

export const Section = styled.section`
  ${({ theme, primary }) => css`
    background: ${primary ? theme.primaryBg : theme.secondaryBg};
    text-align: center;
    padding: 22px;
  `}
`;

export const Boundary = styled.div`
  margin: 0 auto;
  max-width: 80%;
`;

export const SplitColumnFlex = styled.div`
  display: flex;
  align-items: center;
  /* justify-content: center; */

  @media (max-width: 900px) {
    justify-content: center;
    flex-direction: column;
  }
`;

export const SplitColumn = styled.div`
  display: flex;
`;

export const Link = styled.a`
  ${({ theme, textColor }) => css`
    color: ${textColor};
    font-size: ${theme.font.size.default};
  `};
`;

export const LinkButton = styled.a`
  ${({ theme }) => css`
    font-size: ${theme.font.size.default};
  `};
`;

export const Title = styled.h1`
  ${({ theme }) => css`
    font-size: ${theme.font.size.biggest};
    color: ${theme.textColor};
    margin: 0px;
    font-weight: 700;

    &:not(:last-child) {
      margin-bottom: 20px;
    }
  `}
`;

export const Subtitle = styled.h2`
  ${({ theme }) => css`
    font-size: ${theme.font.size.big};
    color: ${theme.textColor};
    margin: 0px;
    font-weight: 600;

    &:not(:last-child) {
      margin-bottom: 20px;
    }
  `}
`;

export const SectionTitle = styled.h3`
  ${({ theme }) => css`
    font-size: ${theme.font.size.medium};
    color: ${theme.textColor};
    margin: 0px;
    font-weight: 600;
  `}
`;

export const AlignTitle = styled.div`
  ${({ theme }) => css`
    display: flex;
    align-items: center;
    justify-content: center;
  `}
`;

export const Paragraph = styled.p`
  ${({ theme, textAlign }) => css`
    font-size: ${theme.font.size.medium};
    color: ${theme.textColor};
    line-height: 1.4;
    margin: 0px;
    font-weight: 300;
    text-align: ${textAlign ? textAlign : 'justify'};

    &:not(:last-child) {
      margin-bottom: 20px;
    }
  `}
`;

export const DefaultText = styled.h4`
  ${({ theme }) => css`
    font-size: ${theme.font.size.default};
    color: ${theme.textColor};
    margin: 0px;
    font-weight: 400;

    &:not(:last-child) {
      margin-bottom: 20px;
    }
  `}
`;

export const Button = styled.button`
  ${({ theme, color, hoverColor, textColor }) => css`
    font-size: ${theme.font.size.medium};
    font-weight: 500;
    color: ${textColor};
    background-color: ${color};
    padding: 10px 16px;
    border-radius: 6px;
    border: none;
    cursor: pointer;
    margin-right: 26px;

    :hover {
      background-color: ${hoverColor};
    }
  `}
`;
