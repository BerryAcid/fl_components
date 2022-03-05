import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorPrimary = Color.fromARGB(255, 46, 116, 48);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      //Color primario
      primaryColor: Colors.green,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: colorPrimary, elevation: 0),

      // Icon Theme
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 46, 116, 48)),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: colorPrimary)),

      // FloattingActionButtton Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: colorPrimary,
        elevation: 10,
      ),

      // Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: colorPrimary,
          shape: const StadiumBorder(),
          elevation: 5,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: colorPrimary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorPrimary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorPrimary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.green,
      appBarTheme: const AppBarTheme(color: Colors.green, elevation: 0),
      iconTheme: const IconThemeData(color: Colors.green),
      scaffoldBackgroundColor: Colors.black);
}
