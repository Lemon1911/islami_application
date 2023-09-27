import 'package:flutter/material.dart';
import 'package:islami_app/moduls/setting_screen/settings_item_widget.dart';

import 'onpressed_language.dart';
import 'onpressed_theme.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<String> lang = ["English", "Arabic"];

  List<String> theme = ["Light", "Dark"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ItemWidgetSetting(
            title: "Language",
            titleType: lang[0],
            toDo: onPressedLanguage,
          ),
          const SizedBox(
            height: 20,
          ),
          ItemWidgetSetting(
            title: "Theme",
            titleType: theme[0],
            toDo: onPressedTheme,
          ),
        ],
      ),
    );
  }

  onPressedLanguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ShowLanguageBottomSheet(),
    );
  }

  onPressedTheme() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ShowThemeBottomSheet(),
    );
  }
}
