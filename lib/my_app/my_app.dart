import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/Utils/routes_manager.dart';
import 'package:quran_app/presentation/Home/splash_screen.dart';
import 'package:quran_app/presentation/Home/tabs/hadith_tab/hadithDetails/hadith_details.dart';
import 'package:quran_app/presentation/Home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:quran_app/provider/settings_provider.dart';

import '../presentation/Home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context, listen: true);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
        locale: Locale(provider.currentLanguage),
        routes: {
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.QuranDetailsRoute: (_) => QuranDetailsScreen(),
        RoutesManager.HadithDetailsRoute: (_) => HadithDetails(),
      },
      initialRoute: RoutesManager.splashRoute,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
        themeMode: provider.currentTheme);
  }
}
