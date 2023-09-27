import 'package:flutter/material.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            selectedItem("Light"),
            unSelectedItem("Dark"),
          ],
        ),
      ),
    );
  }

  Widget selectedItem(String mode) {
    return Row(
      children: [
        Text(mode),
        const Icon(
          Icons.check,
        ),
      ],
    );
  }

  Widget unSelectedItem(String mode) {
    return Text(mode);
  }
}
