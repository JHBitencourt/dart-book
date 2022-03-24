import React from "react";
import { useTheme } from "styled-components";
import { StaticImage } from "gatsby-plugin-image";
import * as S from "./styles";
import * as G from "../layout/styles";

const TableOfContents = () => {
  const theme = useTheme();

  return (
    <G.Section>
      <G.Boundary>
        <G.AlignTitle>
          <G.SectionTitle>Sobre o conteúdo&nbsp;</G.SectionTitle>
          <StaticImage
            src="../../images/dolphin.png"
            alt="Golfinho"
            height={25}
          />
        </G.AlignTitle>
        <br />

        <S.BoxTimeline>
          <S.Timeline maxWidth="900px">
            <S.ContainerLeftTimeline maxWidth="900px">
              <S.ContentTimeline>
                <G.Paragraph>
                  orem aisnfouah iufaiusd gfua sdoug iausdgu adsfg
                </G.Paragraph>
              </S.ContentTimeline>
            </S.ContainerLeftTimeline>

            <S.ContainerRightTimeline maxWidth="900px">
              <S.ContentTimeline>
                <G.Paragraph>
                  orem aisnfouah iufaiusd gfua sdoug iausdgu adsfg
                </G.Paragraph>
              </S.ContentTimeline>
            </S.ContainerRightTimeline>

            <S.ContainerLeftTimeline maxWidth="900px">
              <S.ContentTimeline>
                <G.Paragraph>
                  orem aisnfouah iufaiusd gfua sdoug iausdgu adsfg
                </G.Paragraph>
              </S.ContentTimeline>
            </S.ContainerLeftTimeline>
          </S.Timeline>
        </S.BoxTimeline>

        <br />

        <G.Link
          href="/table-of-contents"
          rel="noreferrer"
          textColor={theme.textColor}
        >
          Ver o sumário completo
        </G.Link>
      </G.Boundary>
    </G.Section>
  );
};

export default TableOfContents;
