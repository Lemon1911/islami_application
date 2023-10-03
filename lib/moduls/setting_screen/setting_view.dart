import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/moduls/setting_screen/settings_item_widget.dart';
import 'package:provider/provider.dart';

import 'onpressed_language.dart';
import 'onpressed_theme.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ItemWidgetSetting(
            title: local.language,
            titleType: provider.isEnglish() ? "English" : "عربى",
            toDo: onPressedLanguage,
          ),
          const SizedBox(
            height: 20,
          ),
          ItemWidgetSetting(
            title: local.theme,
            titleType: provider.isDark() ? local.dark : local.light,
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
