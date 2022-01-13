import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: scaffoldColor,
    fontFamily: 'TitilliumWeb',
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: Colors.black),
    bodyText2: TextStyle(color: Colors.black),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
  );
}