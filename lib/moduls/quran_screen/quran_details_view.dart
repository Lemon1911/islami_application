import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  static const routeName = "QuranDetailsView";

  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "سورة البقرة",
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.play_circle_filled_rounded,
                  color: Colors.black,
                  size: 32,
                ),
              ],
            ),
            Divider(
              color: theme.primaryColor,
              thickness: 2,
              endIndent: 30,
              indent: 30,
            ),
            Text(
              "datadatadatadatadatadatadatadatadatadata",
              style: theme.textTheme.bodySmall,
            ),
          ]),
        ),
      ),
    );
  }
}
