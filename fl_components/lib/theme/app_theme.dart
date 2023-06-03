import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light(). copyWith(
        primaryColor: Colors.green,

        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),

  //TeextBotton Theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom( foregroundColor: Colors.green)
  )
  );

  static ThemeData get darkTheme => ThemeData.dark(). copyWith(
        primaryColor: Colors.green,

        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),

   floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primary,
    elevation: 0
    ),

    //ElevatedButton

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      shape: const StadiumBorder(),
      elevation: 0
    )

    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    )

  );
   
}