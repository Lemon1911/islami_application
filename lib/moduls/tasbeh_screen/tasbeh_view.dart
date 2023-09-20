import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          RotationTransition(
            turns: _animationController,
            child: InkWell(
              onTap: () {
                print("$counter");
                counter++;
                if (counter <= 99) {
                  _animationController.value += 1 / 99;
                }
              },
              child: Container(
                height: 400,
                width: mediaQuery.width,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Positioned(
                      right: 140,
                      child: Image.asset("assets/image/head_of_seb7a.png"),
                    ),
                    Positioned(
                      bottom: 85,
                      child: Image.asset("assets/image/body_of_seb7a.png"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            "عدد التسبيحات",
            style: theme.textTheme.bodyMedium,
          ),
          Container(
            width: 75,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffC8B396),
            ),
            child: Text(
              textAlign: TextAlign.center,
              "$counter",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0XFFB7935F),
            ),
            child: Text(
              "سبحان الله",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
