module.exports = {
  siteMetadata: {
    title: `O guia do programador de Dart`,
    siteUrl: `https://www.mydartbook.com.br`,
    description: `Pegue sua toalha e embarque nessa viagem.`,
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
      resolve: "gatsby-plugin-react-svg",
      options: {
        rule: {
          include: /svgs/,
        },
      },
    },
  ],
};
