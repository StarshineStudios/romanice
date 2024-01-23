import 'package:colorguesser/core/constants.dart';
import 'package:colorguesser/files_portuguese/portuguese_getters.dart';
import 'package:colorguesser/screens/practice_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../files_french/french_getters.dart';
import '../files_italian/italian_getters.dart';
import '../files_latin/latin_getters.dart';
import '../files_romanian/romanian_getters.dart';
import '../files_spanish/spanish_getters.dart';

class LanguageBox2 extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final int index;
  final VoidCallback onPressed;
  final VoidCallback onNounButtonPressed;
  final VoidCallback onVerbButtonPressed;

  final bool isExpanded;
  const LanguageBox2({
    super.key,
    required this.imagePath,
    required this.name,
    required this.index,
    required this.onPressed,
    required this.description,
    required this.isExpanded,
    required this.onNounButtonPressed,
    required this.onVerbButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    //paddding around each box
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: lightColor,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            //the elements inside
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80, // Adjust the size as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.scaleDown,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                              ),
                              if (description != '')
                                Text(
                                  description,
                                  style: const TextStyle(fontSize: 25, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.w100),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: isExpanded ? 100.0 : 0.0,
                  // color: Colors.blue,/for testing
                  child: AnimatedOpacity(
                    opacity: isExpanded ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 400),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 60,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text(
                              'textPractice'.tr(),
                              style: const TextStyle(fontSize: 25, color: darkColor, fontFamily: 'Fraunces'),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NiceButton(
                                onPressed: onNounButtonPressed,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'textDecline'.tr(),
                                    style: const TextStyle(fontSize: 25, color: darkColor, fontFamily: 'Fraunces'),
                                  ),
                                ),
                              ),
                              NiceButton(
                                onPressed: onVerbButtonPressed,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'textConjugate'.tr(),
                                    style: const TextStyle(fontSize: 25, color: darkColor, fontFamily: 'Fraunces'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageBoxHolder extends StatefulWidget {
  const LanguageBoxHolder({super.key});

  //final List<LanguageBox> elements;

  @override
  State<LanguageBoxHolder> createState() => _LanguageBoxHolderState();
}

class _LanguageBoxHolderState extends State<LanguageBoxHolder> {
  bool isExpanded = false;

  int expandedIndex = -1; //nothing is expanded by default

  void changeExpandedIndex(int newIndex) {
    setState(() {
      if (expandedIndex == newIndex) {
        expandedIndex = -1;
      } else {
        expandedIndex = newIndex;
      }
    });
  }

  void launchGame(Function() getFunction) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PracticeScreen(
          getFunction: getFunction,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> periodicElements = [
      // NiceButton(
      //     child: Text('PRES'),
      //     onPressed: () {
      //       setState(() {
      //         isExpanded = true;
      //       });
      //     }),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: lightColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: const Center(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   width: 70,
                  //   child: Image(
                  //     image: AssetImage('assets/typeBack.png'),
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Text(
                    'Rōmānicē!',
                    style: TextStyle(fontSize: 60, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      LanguageBox2(
        imagePath: 'assets/FlagRome.png',
        name: 'textLatin'.tr(),
        description: '',
        index: 0,
        isExpanded: expandedIndex == 0,
        onPressed: () {
          changeExpandedIndex(0);
        },
        onNounButtonPressed: () {
          launchGame(getLatinDeclineQuestion);
        },
        onVerbButtonPressed: () {
          launchGame(getLatinVerbQuestion);
        },
      ),
      LanguageBox2(
        imagePath: 'assets/FlagItaly.png',
        name: 'textItalian'.tr(),
        description: '',
        index: 1,
        isExpanded: expandedIndex == 1,
        onPressed: () {
          changeExpandedIndex(1);
        },
        onNounButtonPressed: () {
          launchGame(getItalianDeclineQuestion);
        },
        onVerbButtonPressed: () {
          launchGame(getItalianVerbQuestion);
        },
      ),
      LanguageBox2(
        imagePath: 'assets/FlagFrance.png',
        name: 'textFrench'.tr(),
        description: '',
        index: 2,
        isExpanded: expandedIndex == 2,
        onPressed: () {
          changeExpandedIndex(2);
        },
        onNounButtonPressed: () {
          launchGame(getFrenchDeclineQuestion);
        },
        onVerbButtonPressed: () {
          launchGame(getFrenchVerbQuestion);
        },
      ),
      LanguageBox2(
        imagePath: 'assets/FlagSpain.png',
        name: 'textSpanish'.tr(),
        description: '', //'comingSoonText'.tr(),
        index: 3,
        isExpanded: expandedIndex == 3,
        onPressed: () {
          changeExpandedIndex(3);
        },
        onNounButtonPressed: () {
          launchGame(getSpanishDeclineQuestion);
        },
        onVerbButtonPressed: () {
          launchGame(getSpanishVerbQuestion);
        },
      ),

      LanguageBox2(
        imagePath: 'assets/FlagPortugal.png',
        name: 'textPortuguese'.tr(),
        description: '', // 'comingSoonText'.tr(),
        index: 4,
        isExpanded: expandedIndex == 4,
        onPressed: () {
          changeExpandedIndex(4);
        },
        onNounButtonPressed: () {
          launchGame(getPortugueseDeclineQuestion);
        },
        onVerbButtonPressed: () {
          launchGame(getPortugueseVerbQuestion);
        },
      ),
      LanguageBox2(
        imagePath: 'assets/FlagRomania.png',
        name: 'textRomanian'.tr(),
        description: '', //'comingSoonText'.tr(),
        index: 5,
        isExpanded: expandedIndex == 5,
        onPressed: () {
          changeExpandedIndex(5);
        },
        onNounButtonPressed: () {
          launchGame(getRomanianDeclineQuestion);
        },
        onVerbButtonPressed: () {
          launchGame(getRomanianVerbQuestion);
        },
      ),
      LanguageBox2(
        imagePath: 'assets/FlagCatalonia.png',
        name: 'textCatalan'.tr(),
        description: 'comingSoonText'.tr(),
        index: 6,
        isExpanded: expandedIndex == 6,
        onPressed: () {
          // changeExpandedIndex(6);
        },
        onNounButtonPressed: () {
          launchGame(getRomanianDeclineQuestion);
        },
        onVerbButtonPressed: () {
          launchGame(getRomanianVerbQuestion);
        },
      ),
      const SizedBox(
        height: 15,
      )
    ];

    return Scaffold(backgroundColor: mediumColor, body: ListView(children: periodicElements));
  }
}

void main() {
  runApp(const MaterialApp(
    home: LanguageBoxHolder(),
  ));
}
