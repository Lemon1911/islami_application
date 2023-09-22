import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth_screen/hadeth_view.dart';
import 'package:islami_app/moduls/quran_screen/quran_view.dart';
import 'package:islami_app/moduls/radio_screen/radio_view.dart';
import 'package:islami_app/moduls/tasbeh_screen/tasbeh_view.dart';

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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/image/background.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "اسلامى",
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
          items: const [
            BottomNavigationBarItem(
              label: "Quran",
              icon: ImageIcon(
                AssetImage(
                  "assets/image/quran.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Hadeth",
              icon: ImageIcon(
                AssetImage(
                  "assets/image/quran-logo.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Tasbeh",
              icon: ImageIcon(
                AssetImage(
                  "assets/image/sebha_icon.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Radio",
              icon: ImageIcon(
                AssetImage(
                  "assets/image/radio_icon.png",
                ),
              ),
            ),
            BottomNavigationBarItem(
                label: "Setting",
                icon: Icon(
                  Icons.settings_outlined,
                  size: 26,
                )),
          ],
        ),
      ),
    );
  }
}
