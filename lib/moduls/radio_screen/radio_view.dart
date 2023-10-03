import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/image/radio_image.png",
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          "اذاعة القران الكريم",
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(
          height: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ImageIcon(
            const AssetImage("assets/image/Icon metro-next-left.png"),
            color: theme.colorScheme.onSecondary,
          ),
          ImageIcon(
            const AssetImage("assets/image/Icon awesome-play.png"),
            color: theme.colorScheme.onSecondary,
          ),
          ImageIcon(
            const AssetImage("assets/image/Icon metro-next.png"),
            color: theme.colorScheme.onSecondary,
          ),
        ]),
      ],
    );
  }
}
