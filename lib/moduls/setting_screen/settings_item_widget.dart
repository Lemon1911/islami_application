import 'package:flutter/material.dart';

class ItemWidgetSetting extends StatelessWidget {
  const ItemWidgetSetting({
    super.key,
    required this.title,
    required this.tap,
    required this.titleList,
  });

  final String title;
  final String titleList;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge,
        ),
        InkWell(
          onTap: () {
            tap();
          },
          child: Container(
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            width: mediaQuery.width,
            height: 50,
            child: Text(titleList),
          ),
        ),
      ],
    );
  }
}
