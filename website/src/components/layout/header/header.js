import React, { useState, useEffect } from "react";
import DayNightToggle from "react-day-and-night-toggle";
import * as S from "./styles";

const Header = ({ changeTheme, isDarkTheme }) => {
  const [isDarkMode, setIsDarkMode] = useState(isDarkTheme);
  useEffect(() => {
    setIsDarkMode(isDarkTheme);
  }, [isDarkTheme]);

  return (
    <S.Header>
      <S.Toggle>
        <DayNightToggle
          onChange={(e) => {
            changeTheme();
            setIsDarkMode(e);
          }}
          checked={isDarkMode}
          shadows={true}
          size={28}
          className="toggle"
        />
      </S.Toggle>
    </S.Header>
  );
};

export default Header;
