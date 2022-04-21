import { keyframes } from "styled-components";
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

const coverAnimation = keyframes`
  0% {
    transform: rotateY(0deg);
  }
  100% {
    transform: rotateY(-29deg);
  }  
`;

export const BookCover = styled.div`
  ${({ theme }) => css`
    display: flex;
    align-items: center;
    justify-content: center;
    perspective: 617px;    
  `};
`;

export const Book = styled.div`
  ${({ theme }) => css`
    width: 200px;
    height: 285px;
    position: relative;
    transform-style: preserve-3d;
    transform: rotateY(-29deg);
    transition: transform 1s ease;
    animation: 1s ease 0s 1 ${coverAnimation};

    :hover {
      transform: rotateY(0deg);
    }

    > :first-child {
      position: absolute;
      top: 0;
      left: 0;
      width: 200px;
      height: 285px;
      transform: translateZ(22.5px);
      border-radius: 0 2px 2px 0;
      box-shadow: 5px 5px 20px #aaaaaa;
      background-color: #01060f;
    }

    ::before {
      position: absolute;
      content: ' ';
      left: 0;
      top: 3px;
      width: 43px;
      height: 279px;
      transform: translateX(174.5px) rotateY(90deg);
      background: linear-gradient(90deg, 
        #fff 0%,
        #f9f9f9 5%,
        #fff 10%,
        #f9f9f9 15%,
        #fff 20%,
        #f9f9f9 25%,
        #fff 30%,
        #f9f9f9 35%,
        #fff 40%,
        #f9f9f9 45%,
        #fff 50%,
        #f9f9f9 55%,
        #fff 60%,
        #f9f9f9 65%,
        #fff 70%,
        #f9f9f9 75%,
        #fff 80%,
        #f9f9f9 85%,
        #fff 90%,
        #f9f9f9 95%,
        #fff 100%
        );
    }

    ::after {
      position: absolute;
      top: 0;
      left: 0;
      content: ' ';
      width: 200px;
      height: 285px;
      transform: translateZ(-22.5px);
      background-color: #6e1c76;
      border-radius: 0 2px 2px 0;
      box-shadow: -10px 0 50px 10px #aaaaaa;
    }
  `};
`;
