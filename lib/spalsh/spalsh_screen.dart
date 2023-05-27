/*

  Author : karthikeyan maruthachalam
  Date : May 1, 2023 2.46 Pm

*/

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dice_sharvesh/dice_home_page/dice_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      // Colors.purple,
      // Colors.blue,
      Colors.orange,
      Colors.red,
    ];

    // const colorizeTextStyle = TextStyle(
    //   fontSize: 50.0,
    //   fontFamily:,
    // );

    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            // repeatForever: true,
            totalRepeatCount: 1,
            animatedTexts: [
              ColorizeAnimatedText(
                'Sharvesh',
                textStyle: theme.textTheme.displaySmall!,
                colors: colorizeColors,
                textAlign: TextAlign.center,
              ),
              ColorizeAnimatedText(
                'Dice Roller',
                textStyle: theme.textTheme.displaySmall!,
                colors: colorizeColors,
                textAlign: TextAlign.center,
              ),
            ],
            isRepeatingAnimation: true,
            onTap: () {},
            onFinished: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MyHomePage(
                      title: "Dice Roller",
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
