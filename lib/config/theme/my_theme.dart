import 'package:flutter/material.dart';
import 'package:quran_app/core/Utils/colors_manager.dart';
import 'package:quran_app/core/Utils/fonts_manager.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: ColorsManager.goldColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
              fontFamily: FontsManager.elmesiri)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          size: 25,
        ),
        selectedIconTheme: IconThemeData(
          size: 35,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      bottomSheetTheme: BottomSheetThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      dividerColor: ColorsManager.goldColor,
      textTheme: TextTheme(
        bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          displaySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          labelSmall: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorsManager.goldColor)),
      cardTheme: CardTheme(
        margin: EdgeInsets.all(9),
        elevation: 13,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ));
}
