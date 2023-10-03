import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_layout.dart';

import '../../core/theme/application_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "Splash_Screen";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeLayout.routeName);
      },
    );
    return Scaffold(
      body: Image(
        image: AssetImage(
          ApplicationTheme.isDark
              ? "assets/image/Splash_Screen_Dark.png"
              : "assets/image/Splash_Screen.png",
        ),
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
