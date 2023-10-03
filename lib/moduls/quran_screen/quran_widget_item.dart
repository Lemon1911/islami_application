import 'package:flutter/material.dart';

class SuraItem extends StatelessWidget {
  const SuraItem({super.key, required this.suraName, required this.suraNumber});

  final String suraName;
  final String suraNumber;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Container(
          width: 3,
          height: 50,
          color: theme.colorScheme.onSecondary,
        ),
        Expanded(
          child: Text(
            suraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
