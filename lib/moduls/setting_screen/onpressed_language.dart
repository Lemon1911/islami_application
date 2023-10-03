import 'package:flutter/material.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.5),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            selectedItem("English"),
            const SizedBox(
              height: 20,
            ),
            unSelectedItem("عربى"),
          ],
        ),
      ),
    );
  }

  Widget selectedItem(String Lang) {
    return InkWell(
      onTap: () {},
      child: Container(
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
            Text(Lang),
            const Icon(
              Icons.check,
            ),
          ],
        ),
      ),
    );
  }

  Widget unSelectedItem(String Lang) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.2,
            color: Colors.white,
          ),
        ),
        child: Row(
          children: [
            Text(Lang),
          ],
        ),
      ),
    );
  }
}
