import 'package:flutter/material.dart';
import 'package:quran_app/core/Utils/assets_manager.dart';
import 'package:quran_app/core/Utils/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
      },
    );
    return Scaffold(
        body: Image.asset(
      AssetsManager.lightSplashScreen,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ));
  }
}
