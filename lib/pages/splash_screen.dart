import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_card/pages/about.dart';

import '../constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Pacifico',
    );

    return Scaffold(
      backgroundColor: mainPageColor,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                "I'm",
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
                textAlign: TextAlign.center,
              ),
              ColorizeAnimatedText(
                'Kavindu',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
                textAlign: TextAlign.center,
              ),
              ColorizeAnimatedText(
                'Sandaruwan',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
                textAlign: TextAlign.center,
              ),
            ],
            isRepeatingAnimation: false,
            onFinished: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
