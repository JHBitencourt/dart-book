import React from "react";
import { useTheme } from "styled-components";
import * as S from "./styles";
import * as G from "../layout/styles";

const TableOfContentsFull = () => {
  const theme = useTheme();

  return (
    <G.Section>
      <G.Boundary>
        <G.Link href="/" rel="noreferrer" textColor={theme.textColor}>
          Voltar para home
        </G.Link>
        <br />
        <br />
        <br />

        <S.BoxTimeline>
          <S.Container>
            <S.ContainerTOC>
              <ol>
                <li>
                  <b><span><b>Hello, Dart!</b></span></b>
                  <ol type="i">
                    <li>Uma breve história</li>
                    <li>Mas por que Dart?</li>
                    <ol type="a">
                      <li>Ecossistema</li>
                      <li>Facilidade de aprendizado</li>
                    </ol>
                    <li>Executando o código</li>
                    <ol type="a">
                      <li>Dartpad</li>
                      <li>Utilizando IDE</li>
                    </ol>
                    <li>Primeiro programa</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>O básico</b></span></b>
                  <ol type="i">
                    <li>Operadores</li>
                    <ol type="a">
                      <li>Operadores aritméticos</li>
                      <li>Operadores relacionais e de equalidade</li>
                      <li>Operadores lógicos</li>
                      <li>Operadores de manipulação de bits</li>
                      <li>Operadores de atribuição</li>
                      <li>Operadores de incremento e decremento</li>
                      <li>Operadores de validação e tipos</li>
                      <li>Operadores gerais</li>
                      <li>Operadores de nulidade</li>
                      <li>Precedência de operadores</li>
                    </ol>
                    <li>Estruturas de controle</li>
                    <ol type="a">
                      <li>if / else</li>
                      <li>switch / case</li>
                      <li>while</li>
                      <li>do while</li>
                      <li>for</li>
                      <li>for in</li>
                      <li>assert</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Benditos tipos</b></span></b>
                  <ol type="i">
                    <li>Afinal, que raios é um tipo?</li>
                    <li>Sistemas de tipagem</li>
                    <ol type="a">
                      <li>Coercion</li>
                      <li>weak e strong</li>
                    </ol>
                    <li>E onde entra Dart?</li>
                    <ol type="a">
                      <li>Inferência</li>
                      <li>Static ou dynamic? O melhor de dois mundos</li>
                    </ol>
                    <li>Quais os tipos existentes em Dart?</li>
                    <ol type="a">
                      <li>Os números</li>
                      <li>Booleanos</li>
                      <li>Symbols</li>
                    </ol>
                    <li>Bem-vinda, null safety!</li>
                    <ol type="a">
                      <li>Nullable types</li>
                      <li>Type promotion</li>
                      <li>O operador bang!</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>Strings</li>
                    <ol type="a">
                      <li>Interpolação de Strings</li>
                      <li>Otimização</li>
                      <li>Sob demanda</li>
                      <li>Muito mais</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>Na prática - Palíndromo</li>
                    <ol type="a">
                      <li>É com você</li>
                    </ol>
                    <li>Variando um pouco</li>
                    <ol type="a">
                      <li>E o tal do static?</li>
                      <li>final x const</li>
                      <li>late</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="i">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Explorando mais as funções e a Web</b></span></b>
                  <ol type="i">
                    <li>Funções! Métodos! Closures?</li>
                    <ol type="a">
                      <li>Funções como objetos</li>
                      <li>Retorno de funções e o void</li>
                      <li>O novato: Never</li>
                      <li>Escopo, ao infinito e além</li>
                      <li>Aproveitando o tear-off</li>
                    </ol>
                    <li>Na prática - Dart web</li>
                    <ol type="a">
                      <li>Criando o projeto</li>
                      <li>Dart e a web</li>
                      <li>Iniciando o jogo e métodos</li>
                    </ol>
                    <li>Parâmetros</li>
                    <ol type="a">
                      <li>Posicional e obrigatório</li>
                      <li>Posicional e opcional</li>
                      <li>Nomeado e opcional</li>
                      <li>Nomeado e obrigatório</li>
                      <li>Declarando as regras do jogo</li>
                      <li>Manipulando o DOM do jogo</li>
                    </ol>
                    <li>Enums</li>
                    <ol type="a">
                      <li>Definindo o vencedor da partida</li>
                    </ol>
                    <li>Typedef</li>
                    <li>Adicionando interação ao jogo</li>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Cuidando dos erros</b></span></b>
                  <ol type="i">
                    <li>Error versus Exception</li>
                    <li>Lançando exceções</li>
                    <ol type="a">
                      <li>Suas próprias exceptions</li>
                    </ol>
                    <li>Seus próprios errors? Lance um existente ou use um assert!</li>
                    <ol type="a">
                      <li>Utilizando assert</li>
                    </ol>
                    <li>Capturando exceções</li>
                    <ol type="a">
                      <li>Especifiando o tipo com on</li>
                      <li>Garantindo execução com finally</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Entendendo as libraries</b></span></b>
                  <ol type="i">
                    <li>Criando uma library</li>
                    <li>Utilizando outras libraries</li>
                    <ol type="a">
                      <li>Criando um alias</li>
                      <li>Personalizando os recursos importados</li>
                    </ol>
                    <li>Privacidade em libraries</li>
                    <li>Separando libraries em arquivos</li>
                    <ol type="a">
                      <li>Devo separar todas as libraries em arquivos?</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Na prática - Packages</b></span></b>
                  <ol type="i">
                    <li>Os packages</li>
                    <li>Criando o package de logger</li>
                    <ol type="a">
                      <li>Modificando o pubspec.yaml</li>
                      <li>Organizando os arquivos existentes</li>
                    </ol>
                    <li>Exportando libraries</li>
                    <ol type="a">
                      <li>Testando o package</li>
                    </ol>
                    <li>Adicionando linter para o código</li>
                    <ol type="a">
                      <li>Utilizando regras de packages</li>
                    </ol>
                    <li>Import dinâmico de libraries</li>
                    <ol type="a">
                      <li>Testando o package na web</li>
                    </ol>
                    <li>Documentando libraries</li>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Oriente seus objetos</b></span></b>
                  <ol type="i">
                    <li>Classes e objetos</li>
                    <li>Sobrescrita de operadores</li>
                    <li>Construtores</li>
                    <ol type="a">
                      <li>Construtores padrão</li>
                      <li>Construtores nomeados</li>
                      <li>Construtores constantes</li>
                      <li>Construtores factory</li>
                    </ol>
                    <li>Relacionamento entre objetos</li>
                    <ol type="a">
                      <li>Herança</li>
                      <li>Polimorfismo</li>
                      <li>Classes abstratas</li>
                      <li>Interfaces</li>
                      <li>Mixins</li>
                      <li>Mixins a fundo</li>
                      <li>Afinal, devo usar herança, interface ou mixin?</li>
                    </ol>
                    <li>As incríveis Extensions</li>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Generics&lt;T&gt; e as estruturas de dados</b></span></b>
                  <ol type="i">
                    <li>O que é esse tal de generics?</li>
                    <ol type="a">
                      <li>Restringindo um tipo</li>
                      <li>Métodos genéricos</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>Estruturas de dados</li>
                    <ol type="a">
                      <li>List</li>
                    </ol>
                    <li>A interface Iterable</li>
                    <ol type="a">
                      <li>Set</li>
                    </ol>
                    <li>A interface Comparable</li>
                    <ol type="a">
                      <li>Queue</li>
                      <li>Map</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Concorrência</b></span></b>
                  <ol type="i">
                    <li>Isolates</li>
                    <li>Event Loop</li>
                    <li>Síncrono versus assíncrono</li>
                    <li>Futures</li>
                    <ol type="a">
                      <li>Future encadeado</li>
                      <li>Erros em uma cadeia assíncrona</li>
                      <li>Future.sync</li>
                      <li>Future.microtask</li>
                      <li>Future.value</li>
                      <li>Future.error</li>
                      <li>Future.wait</li>
                      <li>Future/any</li>
                    </ol>
                    <li>Async e await</li>
                    <ol type="a">
                      <li>Um jeito síncrono de trabalhar com assíncrono?</li>
                      <li>Tratando erros com async await</li>
                    </ol>
                    <li>Completer</li>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Na prática - Dart CLI</b></span></b>
                  <ol type="i">
                    <li>API da Climatempo</li>
                    <ol type="a">
                      <li>Criando o projeto</li>
                    </ol>
                    <li>Requisições com o package http</li>
                    <li>Package convert e JSON</li>
                    <li>Consumindo a API do Climatempo</li>
                    <li>Tratando os argumentos de CLI</li>
                    <li>Rodando um app CLI de qualquer lugar</li>
                    <ol type="a">
                      <li>Compilando AOT</li>
                      <li>Binários independentes</li>
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Stream é tão funcional...</b></span></b>
                  <ol type="i">
                    <li>O que é uma Stream?</li>
                    <li>Inscrição única versus broadcast</li>
                    <li>StreamController</li>
                    <ol type="i">
                      <li>Interface Sink</li>
                      <li>StreamController versus StreamSink</li>
                      <li>Estados do StreamController</li>
                    </ol>
                    <li>Stream e o await</li>
                    <li>Operações em Streams</li>
                    <ol type="i">
                      <li>Propriedades</li>
                      <li>Métodos de busca</li>
                      <li>Métodos de validação</li>
                      <li>Métodos de validação</li>
                      <li>Métodos utilitários</li>
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Um pouco mais sobre Streams</b></span></b>
                  <ol type="i">
                    <li>Transformando uma Stream</li>
                    <ol type="a">
                      <li>Implementando a interface StreamTransformer</li>
                      <li>Construtor padrão do StreamTransformer</li>
                      <li>Estendendo StreamTransformerBase</li>
                      <li>Construtor nomeado fromHandlers</li>
                      <li>Construtor nomeado fromBind</li>
                    </ol>
                    <li>Inscrição única versus broadcast, um pouco além</li>
                    <ol type="i">
                      <li>Ciclo de vida</li>
                      <li>Facilidade de uso</li>
                      <li>Perda de eventos</li>
                    </ol>
                    <li>Geradores</li>
                    <ol type="i">
                      <li>Geradores síncronos</li>
                      <li>Geradores assíncronos</li>
                    </ol>
                    <li>Na prática - Server HTTP</li>
                    <ol type="i">
                      <li>Server em Dart</li>
                      <li>Funcionalidade de alertas</li>
                      <li>Criando o Client</li>
                    </ol>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Um pouco mais sobre Isolares e Zones</b></span></b>
                  <ol type="i">
                    <li>Criando uam nova Isolate</li>
                    <li>Comunicação unidirecional</li>
                    <li>Comunicação bidirecional</li>
                    <li>Controlando uma Isolate</li>
                    <ol type="a">
                      <li>Cadastrando listeners</li>
                    </ol>
                    <li>Isolate através de uma URI</li>
                    <li>Zones</li>
                    <ol type="a">
                      <li>Hierarquia de zones</li>
                      <li>Por que criar uma zone?</li>
                    </ol>
                    <li>Uma zone livre de erros</li>
                    <ol type="a">
                      <li>Propagação de erros entre zones</li>
                    </ol>
                    <li>Valores locais</li>
                    <li>Sobrescrevendo funcionalidades com ZoneSpecification</li>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                    <ol type="a">
                      <li>Até aqui</li>
                    </ol>
                  </ol>
                </li>
                <li>
                  <b><span><b>Na prática - Gerando arquivos</b></span></b>
                  <ol type="i">
                    <li>Manipulando arquivos em Dart</li>
                    <ol type="a">
                      <li>Criando um diretório</li>
                      <li>Criando e escrevendo em um arquivo</li>
                      <li>Escrevendo em um arquivo sob demanda</li>
                      <li>Lendo um arquivo</li>
                      <li>Lendo um arquivo sob demanda</li>
                    </ol>
                    <li>Climatempo - Salvando consultas</li>
                    <ol type="a">
                      <li>Criando o arquivo de cidades</li>
                      <li>Criando o arquivo de clima</li>
                    </ol>
                    <li>Arquivo em isolates separadas</li>
                    <li>Log de erros com zones</li>
                    <li>Se liga aí</li>
                    <li>É com você</li>
                  </ol>
                </li>
                <li>
                  <b><span><b>Até mais, e obrigado pelos peixes!</b></span></b>
                  <ol type="i">
                    <li>Metadata</li>
                    <li>Geração de código</li>
                    <li>Testes unitários</li>
                    <li>DevTools</li>
                    <li>Interface para funções externas - FFI</li>
                    <li>Shelf</li>
                    <li>Explore o Flutter!</li>
                    <li>Contribua para projetos Open Source</li>
                    <li>Aprenda uma outra linguagem de programação</li>
                  </ol>
                </li>
              </ol>
            </S.ContainerTOC>
          </S.Container>
        </S.BoxTimeline>
      </G.Boundary>
    </G.Section>
  );
};

export default TableOfContentsFull;
