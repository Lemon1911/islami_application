import 'package:flutter/material.dart';

import 'hadeth_view.dart';

class HadethDetailsView extends StatefulWidget {
  static const routeName = "HadethDetailsView";

  const HadethDetailsView({super.key});

  @override
  State<HadethDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<HadethDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var arg = ModalRoute.of(context)?.settings.arguments as HadethContent;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/image/background.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "اسلامى",
          ),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 30,
            bottom: 120,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          child: Column(children: [
            Text(
              arg.title,
              style: theme.textTheme.bodyMedium,
            ),
            Divider(
              color: theme.primaryColor,
              thickness: 2,
              endIndent: 30,
              indent: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(
                  arg.content,
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                itemCount: 1,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
