import 'package:flutter/material.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            selectedItem("English"),
            unSelectedItem("عربى"),
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
