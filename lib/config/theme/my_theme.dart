import 'package:flutter/material.dart';
import 'package:quran_app/core/Utils/colors_manager.dart';
import 'package:quran_app/core/Utils/fonts_manager.dart';

class MyTheme {
  static bool isDarkEnabled = true;
  static final ThemeData lightTheme = ThemeData(
      primaryColor: ColorsManager.goldColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
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
              color: ColorsManager.goldColor),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
          displayMedium: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)),
      cardTheme: CardTheme(
        margin: EdgeInsets.all(9),
        elevation: 13,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      iconTheme: IconThemeData(color: ColorsManager.goldColor, size: 30));

  static final ThemeData darkTheme = ThemeData(
      primaryColor: ColorsManager.darkblue,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: FontsManager.elmesiri)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: ColorsManager.YellowColor,
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
          backgroundColor: ColorsManager.darkblue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      dividerColor: ColorsManager.YellowColor,
      textTheme: TextTheme(
          bodySmall: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          titleSmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          labelSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorsManager.YellowColor),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorsManager.YellowColor),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: ColorsManager.YellowColor),
          displayMedium: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white)),
      cardTheme: CardTheme(
        color: ColorsManager.darkblue,
        margin: EdgeInsets.all(9),
        elevation: 13,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      iconTheme: IconThemeData(color: ColorsManager.goldColor, size: 30));
}
