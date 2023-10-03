import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:provider/provider.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: provider.isDark()
                  ? selectedItem(local.dark)
                  : unSelectedItem(local.dark),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: provider.isDark()
                  ? unSelectedItem(local.light)
                  : selectedItem(local.light),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedItem(String mode) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.2,
          color: Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(mode),
          const Icon(
            Icons.check,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget unSelectedItem(String mode) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.2,
          color: Colors.white,
        ),
      ),
      child: Row(
        children: [
          Text(mode),
        ],
      ),
    );
  }
}
