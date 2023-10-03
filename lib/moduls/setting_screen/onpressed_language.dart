import 'package:flutter/material.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.5),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage(const Locale("en"));
                Navigator.pop(context);
              },
              child: provider.isEnglish()
                  ? selectedItem("English")
                  : unSelectedItem("English"),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                provider.changeLanguage(const Locale("ar"));
                Navigator.pop(context);
              },
              child: provider.isEnglish()
                  ? unSelectedItem("عربى")
                  : selectedItem("عربى"),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedItem(String lang) {
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
          Text(lang),
          const Icon(
            Icons.check,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget unSelectedItem(String lang) {
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
          Text(lang),
        ],
      ),
    );
  }
}
