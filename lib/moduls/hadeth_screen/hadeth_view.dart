import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth_screen/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) loadFile();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/image/ahadeth_image.png",
        ),
        Divider(color: theme.primaryColor),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(color: theme.primaryColor),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetailsView.routeName,
                    arguments: HadethContent(
                        title: allHadethContent[index].title,
                        content: allHadethContent[index].content));
              },
              child: Text(
                allHadethContent[index].title,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            separatorBuilder: (context, index) =>
                Divider(color: theme.primaryColor, indent: 50, endIndent: 50),
            itemCount: allHadethContent.length,
          ),
        )
      ],
    );
  }

  loadFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = text.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethContent hadethContent =
          HadethContent(title: title, content: content);
      allHadethContent.add(hadethContent);
      setState(() {});
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});
}
