import React from "react";
import { useTheme } from "styled-components";
import * as S from "./styles";
import * as G from "../styles";
import HitchhikersDark from "../../../images/svgs/hitchhikers_guide_dark.svg";
import HitchhikersLight from "../../../images/svgs/hitchhikers_guide_light.svg";

const Footer = (props) => {
  const theme = useTheme();

  let svg = theme.dark === "true" ? <HitchhikersLight /> : <HitchhikersDark />;

  return (
    <S.Footer bgColor={props.bgColor}>
      <G.DefaultText>
        Até mais, e obrigado pelos peixes! <S.Svg>{svg}</S.Svg>
      </G.DefaultText>
      <G.DefaultText>
        Autoria de&nbsp;
        <G.Link href="https://juliobitencourt.com/" target="_blank" rel="noreferrer" textColor="#35DF91">
          Julio Bitencourt
        </G.Link>
        &nbsp;&nbsp;|&nbsp;&nbsp;Arte da capa por&nbsp;
        <G.Link href="https://antunesketch.artstation.com/" target="_blank" rel="noreferrer" textColor="#35DF91">
          @antunesketchreal
        </G.Link>
      </G.DefaultText>
      &nbsp;
    </S.Footer>
  );
};

export default Footer;
