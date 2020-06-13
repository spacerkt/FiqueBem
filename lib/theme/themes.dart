import 'package:flutter/material.dart';

var themeData = ThemeData(
  primaryColor: Color(0xFF009A93),
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  accentColor: Color(0xFF009A93),
  canvasColor: Color(0xFF767A7A),
  appBarTheme: AppBarTheme(elevation: 0),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      color: Color(0xFF767A7A),
    ), //header
    bodyText2: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Color(0xFF767A7A),
    ), //date
  ),
);

