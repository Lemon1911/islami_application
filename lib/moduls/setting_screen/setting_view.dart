import 'package:flutter/material.dart';
import 'package:islami_app/moduls/setting_screen/settings_item_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

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
            tap: () {},
            titleList: "English",
          ),
          const SizedBox(
            height: 20,
          ),
          ItemWidgetSetting(
            title: "Theme",
            tap: () {},
            titleList: "Light",
          ),
        ],
      ),
    );
  }
}
