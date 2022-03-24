import React from "react";
import GlobalCSS from "./global";
import Header from "./header/header";
import Footer from "./footer/footer";
import { ThemeProvider } from "styled-components";
import { lightTheme, darkTheme } from "./theme";

import "./normalize.css";

class Layout extends React.Component {
  constructor(props) {
    super(props);
    this.state = { lightTheme: true };
    this.changeTheme = this.changeTheme.bind(this);
  }

  componentDidMount() {
    const localStorageLayout = localStorage.getItem("lightTheme");
    if (localStorageLayout) {
      this.setState({ lightTheme: JSON.parse(localStorageLayout) });
    }
  }

  changeTheme() {
    console.log("clique");
    this.setState({
      lightTheme: !this.state.lightTheme,
    });
    localStorage.setItem("lightTheme", !this.state.lightTheme);
    console.log("change state");
  }

  render() {
    const { children } = this.props;

    var footerColor;
    if (this.state.lightTheme) {
      footerColor = this.props.primary
        ? lightTheme.primaryBg
        : lightTheme.secondaryBg;
    } else {
      footerColor = this.props.primary
        ? darkTheme.primaryBg
        : darkTheme.secondaryBg;
    }

    return (
      <ThemeProvider theme={this.state.lightTheme ? lightTheme : darkTheme}>
        <GlobalCSS />
        <Header
          changeTheme={this.changeTheme}
          isDarkTheme={this.state.lightTheme ? false : true}
        />

        {children}

        <Footer bgColor={footerColor} />
      </ThemeProvider>
    );
  }
}

export default Layout;
