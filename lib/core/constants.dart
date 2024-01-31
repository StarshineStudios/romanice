import 'package:tinycolor2/tinycolor2.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<Map<String, Object>> typewritersList = [
  {'name': 'redTypewriter', 'back': 'assets/typeBackRed.png', 'front': 'assets/typeFrontRed.png', 'cost': 10},
  {'name': 'orangeTypewriter', 'back': 'assets/typeBackOrange.png', 'front': 'assets/typeFrontOrange.png', 'cost': 10},
  {'name': 'yellowTypewriter', 'back': 'assets/typeBackYellow.png', 'front': 'assets/typeFrontYellow.png', 'cost': 40},
  {'name': 'defaultTypewriter', 'back': 'assets/typeBack.png', 'front': 'assets/typeFront.png', 'cost': 0},
  {'name': 'blueTypewriter', 'back': 'assets/typeBackBlue.png', 'front': 'assets/typeFrontBlue.png', 'cost': 40},
  {'name': 'purpleTypewriter', 'back': 'assets/typeBackPurple.png', 'front': 'assets/typeFrontPurple.png', 'cost': 10},
  {'name': 'magentaTypewriter', 'back': 'assets/typeBackMagenta.png', 'front': 'assets/typeFrontMagenta.png', 'cost': 40},
];

Map<String, Object> getTypewriter(String name) {
  for (Map<String, Object> map in typewritersList) {
    if (map['name'] == name) {
      Map<String, Object> a = {};
      a['front'] = map['front'] ?? 'assets/typeFront.png';
      a['back'] = map['back'] ?? 'assets/typeBack.png';

      return a;
    }
  }
  Map<String, Object> a = {};
  a['front'] = 'assets/typeFront.png';
  a['back'] = 'assets/typeBack.png';

  return a;
}

//GRAPHIC ELEMENTS
const Color darkColor = Color.fromRGBO(119, 107, 93, 1);
const Color darkColorTrans = Color.fromRGBO(119, 107, 93, 0.5);
const Color mediumColor = Color.fromRGBO(176, 166, 149, 1);
const Color fadedColor = Color.fromRGBO(170, 167, 162, 1);
const Color lightColor = Color.fromRGBO(235, 227, 213, 1);
const Color almostWhiteColor = Color.fromRGBO(243, 238, 234, 1);

const Color pastelRed = Color.fromRGBO(255, 179, 186, 1);
const Color pastelOrange = Color.fromRGBO(255, 223, 186, 1);
const Color pastelYellow = Color.fromRGBO(255, 255, 186, 1);
const Color pastelGreen = Color.fromRGBO(186, 255, 201, 1);
const Color pastelBlue = Color.fromRGBO(186, 225, 255, 1);
const Color pastelPurple = Color.fromRGBO(207, 186, 255, 1);

class NiceButton extends StatefulWidget {
  final Color color;
  final Color inactiveColor;
  final double borderRadius;
  final double height;
  final Widget child;
  final VoidCallback onPressed;
  final bool active;
  const NiceButton({
    super.key,
    this.color = almostWhiteColor,
    this.inactiveColor = fadedColor,
    this.borderRadius = 8.0,
    this.height = 6,
    this.active = true,
    required this.child,
    required this.onPressed,
  });

  @override
  State<NiceButton> createState() => _NiceButtonState();
}

class _NiceButtonState extends State<NiceButton> {
  double _paddingTop = 0;
  late double _paddingBottom = widget.height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() {
        _paddingTop = widget.height;
        _paddingBottom = 0;
      }),
      onTapUp: (_) => setState(() {
        _paddingTop = 0;
        _paddingBottom = widget.height;

        if (widget.active) {
          widget.onPressed();
        }
      }),
      child: AnimatedContainer(
        padding: EdgeInsets.only(top: _paddingTop),
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: const Color.fromARGB(0, 0, 0, 0), //transparent
          borderRadius: BorderRadius.circular(10),
        ),
        child: AnimatedContainer(
          padding: EdgeInsets.only(bottom: _paddingBottom),
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: widget.active ? widget.color.darken(30) : widget.inactiveColor.darken(30),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: widget.active ? widget.color : widget.inactiveColor,
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

class NiceButtonToggle extends StatefulWidget {
  final bool down;
  final Color color;
  final Color inactiveColor;
  final double borderRadius;
  final double height;
  final Widget child;
  final VoidCallback onPressed;
  final bool active;
  const NiceButtonToggle({
    super.key,
    this.color = almostWhiteColor,
    this.inactiveColor = fadedColor,
    this.borderRadius = 8.0,
    this.height = 6,
    this.active = true,
    required this.child,
    required this.onPressed,
    required this.down,
  });

  @override
  State<NiceButtonToggle> createState() => _NiceButtonToggleState();
}

class _NiceButtonToggleState extends State<NiceButtonToggle> {
  double _paddingTop = 0;
  late double _paddingBottom = widget.height;

  @override
  Widget build(BuildContext context) {
    if (widget.down) {
      _paddingTop = widget.height;
      _paddingBottom = 0;
    } else {
      _paddingTop = 0;
      _paddingBottom = widget.height;
    }

    return GestureDetector(
      onTapDown: (_) => setState(() {
        // _paddingTop = widget.height;
        // _paddingBottom = 0;
      }),
      onTapUp: (_) => setState(() {
        // _paddingTop = 0;
        // _paddingBottom = widget.height;

        if (widget.active) {
          widget.onPressed();
        }
      }),
      child: AnimatedContainer(
        padding: EdgeInsets.only(top: _paddingTop),
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: const Color.fromARGB(0, 0, 0, 0), //transparent
          borderRadius: BorderRadius.circular(10),
        ),
        child: AnimatedContainer(
          padding: EdgeInsets.only(bottom: _paddingBottom),
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: widget.active ? widget.color.darken(30) : widget.inactiveColor.darken(30),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: widget.active ? widget.color : widget.inactiveColor,
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

//BOX FOR SAVING USER DATA
const generalBoxName = 'generalBoxString';

//LOCALES
List<Locale> supportedLocales = const [
  Locale('en'),
  Locale('fi'), //this is actually latin, I just cant use la for some dumb reason
  Locale('es'),
  Locale('it'),
  Locale('fr'),
  Locale('pt'),
  Locale('ro'),
];

Locale ifSupported(Locale locale) {
  if (supportedLocales.contains(locale)) {
    return locale;
  }
  return const Locale('en');
}

//QUESTION LOGIC
class Question {
  String lemma;
  // String definition; //This can be added later, if I want to go in that direction
  List<String> demands;
  String prompt;
  String answer;
  Question({this.lemma = '', this.demands = const [''], this.prompt = '', this.answer = ''});
  @override
  String toString() {
    return 'lemma: $lemma, demands: $demands, prompt: $prompt, answer: $answer';
  }
}

//HELPER FUNCTIONS

extension ListExtensions<E> on List<E> {
  E getRandom() {
    final random = Random();
    if (isEmpty) {
      throw StateError("The list is empty, cannot get a random element.");
    }
    final randomIndex = random.nextInt(length);
    return this[randomIndex];
  }
}
