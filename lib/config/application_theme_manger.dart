import 'package:flutter/material.dart';

class ApplicationThemeMangre {
  static const Color primaryColor = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "ElMessiri")),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 29, 25, 20),
          selectedLabelStyle: TextStyle(
              fontFamily: "ElMessiri",
              fontSize: 18,
              fontWeight: FontWeight.bold),
          selectedIconTheme:
              IconThemeData(color: Color.fromARGB(255, 29, 25, 20)),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(
              fontFamily: "ElMessiri",
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.normal),
          unselectedIconTheme: IconThemeData(color: Colors.white)));
}
