import React from "react";
import { StaticImage } from "gatsby-plugin-image";
import * as G from "../layout/styles";

const Audience = () => {
  return (
    <G.Section>
      <G.Boundary>
        <G.AlignTitle>
          <G.SectionTitle>Pra quem é o livro?&nbsp;</G.SectionTitle>
          <StaticImage
            src="../../images/marvin.png"
            alt="Robô marvin"
            height={35}
          />
        </G.AlignTitle>
        <br/>
        <G.Paragraph>
          <b><span><b>Este livro</b></span></b> é indicado para todos aqueles e aquelas que desejam
          expandir um pouco o seu conhecimento sobre Dart, ou até mesmo para
          quem não conhece nada da linguagem e quer se aventurar nesse novo
          mundo, tendo uma nova carta na manga em seu currículo para começar a
          desenvolver algo server side, para web, desktop, mobile, IOT... várias
          possibilidades.
        </G.Paragraph>
        <G.Paragraph>
          O objetivo é que o livro sirva como um guia estruturado para introdução e aprofundamento na 
          linguagem. Nele, abordarei desde os conceitos mais básicos envolvendo a sintaxe (como tipos, 
          operadores, estruturas de repetição etc.) até <i>features</i> mais avançadas da linguagem (como 
          programação assíncrona, generics etc.), sempre focando na parte teórica seguida de prática com exemplos
        </G.Paragraph>
        <G.Paragraph>
          <b><span><b>Este livro não</b></span></b> é uma abordagem de Dart focada para algum SDK
          específico, como a utilização do AngularDart para desenvolvimento web
          ou até mesmo o Flutter para criação de aplicações móveis. Porém, como
          eles trabalham em cima do core do Dart, todos os fundamentos e
          conceitos aprendidos aqui serão essenciais e com certeza úteis para
          utilização de qualquer outro framework criado a partir da linguagem.
        </G.Paragraph>
      </G.Boundary>
    </G.Section>
  );
};

export default Audience;
