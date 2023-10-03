import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/moduls/hadeth_screen/hadeth_view.dart';
import 'package:islami_app/moduls/quran_screen/quran_view.dart';
import 'package:islami_app/moduls/radio_screen/radio_view.dart';
import 'package:islami_app/moduls/tasbeh_screen/tasbeh_view.dart';
import 'package:provider/provider.dart';

import '../moduls/setting_screen/setting_view.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static String routeName = "HomeLayout_Screen";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    var appLocal = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            provider.backgroundImage(),
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            appLocal.islami,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: appLocal.quran,
              icon: const ImageIcon(
                AssetImage(
                  "assets/image/quran.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: appLocal.hadeth,
              icon: const ImageIcon(
                AssetImage(
                  "assets/image/quran-logo.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: appLocal.tasbeh,
              icon: const ImageIcon(
                AssetImage(
                  "assets/image/sebha_icon.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: appLocal.radio,
              icon: const ImageIcon(
                AssetImage(
                  "assets/image/radio_icon.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
                label: appLocal.settings,
                icon: const Icon(
                  Icons.settings_outlined,
                  size: 26,
                )),
          ],
        ),
      ),
    );
  }
}
