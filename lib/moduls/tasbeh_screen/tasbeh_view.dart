import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({Key? key}) : super(key: key);

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int counter = 0;
  List<String> words = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  int currentWordIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          RotationTransition(
            turns: _animationController,
            child: InkWell(
              onTap: () {
                setState(() {
                  counter++;
                  if (counter % 33 == 0) {
                    currentWordIndex = (currentWordIndex + 1) % words.length;
                    _animationController.reset();
                    _animationController.forward();
                    if (currentWordIndex == 0) {
                      counter = 0;
                    }
                  }
                });
                if (counter <= 99) {
                  _animationController.value += 1 / 33;
                }
              },
              child: SizedBox(
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
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 75,
            alignment: AlignmentDirectional.center,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffC8B396),
            ),
            child: Text(
              "$counter",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 50,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0XFFB7935F),
            ),
            child: Text(
              words[currentWordIndex],
              textAlign: TextAlign.center,
              style: const TextStyle(
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
