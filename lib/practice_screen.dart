import 'dart:math';

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

import 'constants.dart';
import 'package:tinycolor2/tinycolor2.dart';

import 'files_latin/latin_getters.dart';
// Import the necessary package

class PracticeScreen extends StatefulWidget {
  final Function() getFunction;
  const PracticeScreen({super.key, required this.getFunction});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  bool answerRevealed = false;
  Question question = Question();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    void refreshQuestion() {
      setState(() {
        count++;
        question = widget.getFunction();
        answerRevealed = false;
      });
    }

    void onTap() {
      setState(() {
        if (!answerRevealed) {
          answerRevealed = true;
        } else {
          refreshQuestion();
        }
      });
    }

    if (count == 0) {
      refreshQuestion();
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightColor,
        foregroundColor: darkColor,
        title: Text(
          '${'completed'.tr()}: ${count.toString()}',
          style: const TextStyle(color: darkColor, fontFamily: 'Fraunces'),
        ),
      ),
      backgroundColor: mediumColor,
      body: Column(
        children: [
          Container(
            // Adjusted the height calculation
            decoration: const BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.38,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  question.lemma,
                  style: const TextStyle(
                    height: 0.9,
                    fontSize: 60,
                    color: darkColor,
                    fontFamily: 'Fraunces',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: question.demands.map((String item) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: generatePastelColor(item),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          item.tr(),
                          style: TextStyle(
                            fontSize: 25,
                            color: generatePastelColor(item).darken(30),
                            fontFamily: 'Fraunces',
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 4.0,
                ),
              ],
            ),
          ),
          // Text(
          //   count < 3 && !answerRevealed ? 'tap to reveal'.tr() : '',
          //   style: TextStyle(
          //     fontSize: 25,
          //     color: darkColor,
          //     fontFamily: 'Fraunces',
          //   ),
          // ),\
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: TypeWriter(text: answerRevealed ? question.answer : question.prompt),
            ),
          )
        ],
      ),
    );
  }
}

Color generatePastelColor(String seed) {
  int seedHashCode = seed.hashCode;
  Random random = Random(seedHashCode * 1);

  // Generate random values for the base color
  int baseRed = random.nextInt(256);
  int baseGreen = random.nextInt(256);
  int baseBlue = random.nextInt(256);

  // Create the base color
  Color baseColor = Color.fromARGB(255, baseRed, baseGreen, baseBlue);

  // Convert the base color to TinyColor
  TinyColor tinyBaseColor = TinyColor.fromColor(baseColor);

  // Saturate the color by 10%
  TinyColor saturatedColor = tinyBaseColor.saturate(10);

  // Mix with white to create a pastel color
  TinyColor pastelColor = saturatedColor.mix(Colors.white, 50);

  // Convert the pastel color back to Dart's Color class
  return pastelColor.color;
}

void main() {
  runApp(const MaterialApp(
    home: PracticeScreen(getFunction: getLatinVerbQuestion),
  ));
}

class TypeWriter extends StatelessWidget {
  final String text;

  const TypeWriter({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 1000,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Image(
            image: AssetImage('assets/typeBack.png'),
          ),
          AspectRatio(
            aspectRatio: 1.0,
            child: FractionallySizedBox(
              widthFactor: 0.7,
              heightFactor: 0.9,
              child: Container(
                color: lightColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        text,
                        style: const TextStyle(fontSize: 40, color: darkColor, fontFamily: 'Fraunces'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Image(
            image: AssetImage('assets/typeFront.png'),
          ),
        ],
      ),
    );
  }
}
