import styled, { css } from "styled-components";

export const Content = styled.div`
  /* display: flex; */
  flex-direction: column;
  justify-content: center;
  text-align: start;
  align-items: flex-start;
  width: 70%;

  @media (max-width: 900px) {
    align-items: start;
    width: 100%;
  }
`;

export const Book = styled.div`
  ${({ theme }) => css`
    width: 30%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 30px;

    .book::after {
      box-shadow: ${theme.light ? "-10px 0 50px 0px #000" : "none !important"};
      box-shadow: none !important;
      /* box-shadow: ${theme.light
        ? "-10px 0 30px 0px #000"
        : "-10px 0 30px 0px #FFF"}; */
    }

    .book > div {
      /* box-shadow: -10px 0 50px 10px #ff0000 !important; */
      box-shadow: ${theme.light ? "-10px 0 50px 0px #000" : "none !important"};
      /* box-shadow: none !important; */
    }

    @media (max-width: 900px) {
      width: 100%;
      margin-top: 40px;
    }
  `};
`;
