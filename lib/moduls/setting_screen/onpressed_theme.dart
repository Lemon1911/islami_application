import 'package:flutter/material.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            selectedItem("Light"),
            const SizedBox(
              height: 20,
            ),
            unSelectedItem("Dark"),
          ],
        ),
      ),
    );
  }

  Widget selectedItem(String mode) {
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
            Text(mode),
            const Icon(
              Icons.check,
            ),
          ],
        ),
      ),
    );
  }

  Widget unSelectedItem(String mode) {
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
            Text(mode),
          ],
        ),
      ),
    );
  }
}
