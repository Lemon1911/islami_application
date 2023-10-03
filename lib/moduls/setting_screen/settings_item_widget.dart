import 'package:flutter/material.dart';

typedef SettingOptionClicked = void Function();

class ItemWidgetSetting extends StatelessWidget {
  const ItemWidgetSetting({
    Key? key,
    required this.title,
    required this.titleType,
    required this.toDo,
  }) : super(key: key);

  final String title;
  final String titleType;
  final SettingOptionClicked toDo;

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
            toDo();
          },
          child: Container(
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: theme.colorScheme.onSecondary,
                width: 1.2,
              ),
            ),
            width: mediaQuery.width,
            height: 50,
            child: Text(titleType),
          ),
        ),
      ],
    );
  }
}
