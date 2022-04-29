// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uberr/styles/colors.dart';

const TextStyle basicTextStyle = TextStyle(
  fontFamily: "SFUIDisplay",
  fontWeight: FontWeight.normal,
  fontSize: 16.0,
);

final TextTheme textTheme = TextTheme(
  bodyText2: basicTextStyle,
  bodyText1: basicTextStyle.merge(const TextStyle(fontSize: 14.0)),
  headline6: basicTextStyle.merge(
    const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 30.0,
    ),
  ),
  subtitle2: basicTextStyle.merge(
    const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
    ),
  ),
);

class ThemeScheme {
  static dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: dbackgroundColor,
      primaryColor: dprimaryColor,
      accentColor: dsecondaryColor,
      textTheme: textTheme,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 73, 66, 66),
          ),
        ),
      ),
    );
  }

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: lbackgroundColor,
      primaryColor: lprimaryColor,
      accentColor: lsecondaryColor,
      textTheme: textTheme,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: dbasicDarkColor),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 73, 66, 66)),
        ),
      ),
    );
  }
}
