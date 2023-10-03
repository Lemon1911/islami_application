import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/moduls/splash_screen/splash_screen.dart';

import 'core/theme/application_theme.dart';
import 'moduls/hadeth_screen/hadeth_details_view.dart';
import 'moduls/quran_screen/quran_details_view.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: ApplicationTheme.isDark ? ThemeMode.dark : ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),
    );
  }
}
