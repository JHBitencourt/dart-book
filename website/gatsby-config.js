module.exports = {
  siteMetadata: {
    title: `O guia de Dart`,
    siteUrl: `https://www.dartguide.dev`,
    description: `A história, os fundamentos, os conceitos avançados e tudo mais.`,
    image: `/green_guy.png`
  },
  plugins: [
    {
      resolve: "gatsby-plugin-google-tagmanager",
      options: {
        id: "GTM-MLR7B9C",
        includeInDevelopment: false,
        routeChangeEventName: "gatsby-route-change",
        enableWebVitalsTracking: true
      },
    },
    "gatsby-plugin-styled-components",
    `gatsby-plugin-image`,
    `gatsby-plugin-sharp`,
    `gatsby-transformer-sharp`,
    {
      resolve: `gatsby-plugin-manifest`,
      options: {
        name: `Dart Guide Book`,
        short_name: `DartGuide`,
        display: `standalone`,
        icon: `src/images/green_guy.png`
      },
    },
    {
      resolve: "gatsby-plugin-react-svg",
      options: {
        rule: {
          include: /svgs/,
        },
      },
    },
  ],
};
