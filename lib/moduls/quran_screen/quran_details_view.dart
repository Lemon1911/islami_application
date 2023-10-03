import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/moduls/quran_screen/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const routeName = "QuranDetailsView";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var arg = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) readFile(arg.suraNumber);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            provider.backgroundImage(),
          ),
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
            color: theme.colorScheme.onPrimary.withOpacity(0.8),
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "  سورة ${arg.suraName}",
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.play_circle_filled_rounded,
                  color: theme.colorScheme.onSecondary,
                  size: 32,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              endIndent: 30,
              indent: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(
                  "(${index + 1})  ${allVerses[index]} ",
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                itemCount: allVerses.length,
              ),
            )
          ]),
        ),
      ),
    );
  }

  readFile(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;
    setState(() {
      allVerses = content.split("\n");
    });
  }
}
