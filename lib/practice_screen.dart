import 'defaults.dart';

import 'package:flutter/material.dart';

import 'verbs_latin.dart';
import 'constants.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  //final List<LanguageBox> elements;

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Column(children: []),
          ),
        ],
      ),
    );
  }
}
