import styled, { css } from "styled-components";

export const BoxTimeline = styled.div`
  box-sizing: border-box;
`;

export const Timeline = styled.div`
  ${({ theme }) => css`
    position: relative;
    max-width: 800px;
    margin: 0 auto;

    ::after {
      content: "";
      position: absolute;
      width: 2px;
      background-color: ${theme.textColor};
      top: 0;
      bottom: 0;
      left: 50%;
      margin-left: -1px;
    }

    @media (max-width: 900px) {
      ::after {
        left: 10px;
      }
    }
  `};
`;

export const ContainerLeftTimeline = styled.div`
  ${({ theme }) => css`
    padding: 10px 40px;
    position: relative;
    background-color: inherit;
    width: 50%;

    /* The circles on the timeline */
    ::after {
      content: "";
      position: absolute;
      top: 10px;
      z-index: 1;
      width: 0;
      height: 0;
      border-top: 12px solid transparent;
      border-bottom: 12px solid transparent;
      border-right: 12px solid ${theme.textColor};
      right: 0px;
    }

    @media (max-width: 900px) {
      width: 100%;

      ::after {
        content: "";
        left: 10px;
        border-top: 12px solid transparent;
        border-bottom: 12px solid transparent;
        border-left: 12px solid ${theme.textColor};
        border-right: none;
      }
    }
  `};
`;

export const ContainerRightTimeline = styled.div`
  ${({ theme }) => css`
    padding: 10px 40px;
    position: relative;
    background-color: inherit;
    width: 50%;
    left: 50%;

    /* The circles on the timeline */
    ::after {
      content: "";
      position: absolute;
      top: 10px;
      z-index: 1;
      left: 0px;
      width: 0;
      height: 0;
      border-top: 12px solid transparent;
      border-bottom: 12px solid transparent;
      border-left: 12px solid ${theme.textColor};
    }
  `};

  @media (max-width: 900px) {
    width: 100%;
    left: 0%;

    ::after {
      left: 10px;
    }
  }
`;

export const ContentTimeline = styled.div`
  ${({ theme }) => css`
    padding: 10px;
    color: ${theme.textColor};
    background-color: ${theme.containerColor};
    position: relative;
    border-radius: 6px;
  `};
`;

export const Container = styled.div`
  ${({ theme }) => css`
    padding: 10px;
    color: ${theme.textColor};
    background-color: ${theme.containerColor};
    border-radius: 6px;
  `};
`;
