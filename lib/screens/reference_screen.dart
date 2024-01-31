import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/core/lengtheners.dart';
import 'package:colorguesser/files_french/word_data/french_adjectives.dart';
import 'package:colorguesser/files_french/word_data/french_nouns.dart';
import 'package:colorguesser/files_french/word_data/french_verbs.dart';
import 'package:colorguesser/files_italian/word_data/italian_adjectives.dart';
import 'package:colorguesser/files_italian/word_data/italian_nouns.dart';
import 'package:colorguesser/files_italian/word_data/italian_verbs.dart';
import 'package:colorguesser/files_latin/word_data/latin_adjectives.dart';
import 'package:colorguesser/files_latin/word_data/latin_nouns.dart';
import 'package:colorguesser/files_latin/word_data/latin_verbs.dart';
import 'package:colorguesser/files_portuguese/word_data/portuguese_adjectives.dart';
import 'package:colorguesser/files_portuguese/word_data/portuguese_nouns.dart';
import 'package:colorguesser/files_portuguese/word_data/portuguese_verbs.dart';
import 'package:colorguesser/files_romanian/word_data/romanian_adjectives.dart';
import 'package:colorguesser/files_romanian/word_data/romanian_nouns.dart';
import 'package:colorguesser/files_romanian/word_data/romanian_verbs.dart';
import 'package:colorguesser/files_spanish/word_data/spanish_adjectives.dart';
import 'package:colorguesser/files_spanish/word_data/spanish_nouns.dart';
import 'package:colorguesser/files_spanish/word_data/spanish_verbs.dart';
import 'package:colorguesser/screens/practice_screen.dart';
import 'package:colorguesser/temp/romance_classes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tinycolor2/tinycolor2.dart';

// import 'package:flutter/material.dart';
import '../core/constants.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';

//The page for modifying the settings

String selectedLanguage = 'Latin'; // Default language

class ReferenceScreen extends StatefulWidget {
  const ReferenceScreen({Key? key}) : super(key: key);

  @override
  State<ReferenceScreen> createState() => _ReferenceScreenState();
}

class _ReferenceScreenState extends State<ReferenceScreen> {
  // final Box<dynamic> _generalBox = Hive.box('generalBoxString');
  // Define a list of supported languages and their flag image paths.
  final List<Map<String, String>> languages = [
    {'name': 'Latin', 'flag': 'assets/FlagRome.png'},
    {'name': 'Italian', 'flag': 'assets/FlagItaly.png'},
    {'name': 'French', 'flag': 'assets/FlagFrance.png'},
    {'name': 'Spanish', 'flag': 'assets/FlagSpain.png'},
    {'name': 'Portuguese', 'flag': 'assets/FlagPortugal.png'},
    {'name': 'Romanian', 'flag': 'assets/FlagRomania.png'},
    // {'name': 'Catalan', 'flag': 'assets/FlagCatalonia.png'},
  ];

  // Map<String, List<String>> languageWords = {
  //   'Latin': ['Word1', 'Word2', 'Word3', 'Word4'],
  //   'Italian': ['Parola1', 'Parola2', 'Parola3', 'Parola4'],
  //   'French': ['Mot1', 'Mot2', 'Mot3', 'Mot4'],
  //   'Spanish': ['Palabra1', 'Palabra2', 'Palabra3', 'Palabra4'],
  //   'Portuguese': ['Palavra1', 'Palavra2', 'Palavra3', 'Palavra4'],
  //   'Romanian': ['Cuvant1', 'Cuvant2', 'Cuvant3', 'Cuvant4'],
  //   // 'Catalan': ['Paraula1', 'Paraula2', 'Paraula3', 'Paraula4'],
  // };

  Map<String, List<RomanceAdjective>> languageAdjectives = {
    'Latin': latinAdjectives,
    'Italian': italianAdjectives,
    'French': frenchAdjectives,
    'Spanish': spanishAdjectives,
    'Portuguese': portugueseAdjectives,
    'Romanian': romanianAdjectives,
    // 'Catalan': ,
  };
  Map<String, List<RomanceNoun>> languageNouns = {
    'Latin': latinNouns,
    'Italian': italianNouns,
    'French': frenchNouns,
    'Spanish': spanishNouns,
    'Portuguese': portugueseNouns,
    'Romanian': romanianNouns,
    // 'Catalan': ,
  };
  Map<String, List<RomanceVerb>> languageVerbs = {
    'Latin': latinVerbs,
    'Italian': italianVerbs,
    'French': frenchVerbs,
    'Spanish': spanishVerbs,
    'Portuguese': portugueseVerbs,
    'Romanian': romanianVerbs,
    // 'Catalan': ,
  };
  // Map<String, String> selectedWords = {};

  Map<String, RomanceAdjective> selectedAdjectives = {};
  Map<String, RomanceNoun> selectedNouns = {};
  Map<String, RomanceVerb> selectedVerbs = {};
  List<bool> downs = [true, false, false];

  WordTypePlural selectedWordTypePlural = WordTypePlural.adjectives;

  @override
  void initState() {
    // for (var language in languageWords.keys) {
    //   selectedWords[language] = languageWords[language]!.first;
    // }
    for (var language in languageAdjectives.keys) {
      selectedAdjectives[language] = languageAdjectives[language]!.first;
    }
    for (var language in languageNouns.keys) {
      selectedNouns[language] = languageNouns[language]!.first;
    }
    for (var language in languageVerbs.keys) {
      selectedVerbs[language] = languageVerbs[language]!.first;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: lightColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Library'.tr(),
                    style: const TextStyle(fontSize: 60, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),

          //THE MENU
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            //the menu
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: lightColor, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  SizedBox(
                    height: 125,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: languages.length,
                      itemBuilder: (context, index) {
                        final language = languages[index];
                        final languageName = language['name']!;
                        final flagImagePath = language['flag']!;
                        final isSelected = selectedLanguage == languageName;

                        return GestureDetector(
                          onTap: () {
                            // Update the selected language when a flag is tapped.
                            setState(() {
                              selectedLanguage = languageName;
                            });
                          },
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: isSelected ? mediumColor : Colors.transparent,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(flagImagePath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  //THE BUTTONS
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: NiceButtonToggle(
                            down: downs[0],
                            borderRadius: 16.0,
                            color: pastelRed,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                lengthenWordTypePlural[WordTypePlural.adjectives]!.tr(),
                                style: TextStyle(fontSize: 25, color: pastelRed.darken(30), fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                downs = [true, false, false];
                                selectedWordTypePlural = WordTypePlural.adjectives;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: NiceButtonToggle(
                            down: downs[1],
                            borderRadius: 16.0,
                            color: pastelGreen,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                lengthenWordTypePlural[WordTypePlural.nouns]!.tr(),
                                style: TextStyle(fontSize: 25, color: pastelGreen.darken(30), fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                downs = [false, true, false];

                                selectedWordTypePlural = WordTypePlural.nouns;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: NiceButtonToggle(
                            down: downs[2],
                            borderRadius: 16.0,
                            color: pastelBlue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                lengthenWordTypePlural[WordTypePlural.verbs]!.tr(),
                                style: TextStyle(fontSize: 25, color: pastelBlue.darken(30), fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                downs = [false, false, true];

                                selectedWordTypePlural = WordTypePlural.verbs;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                  //THE DROPDOWN
                  // DROPDOWN
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: lightColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: almostWhiteColor,
                        value: selectedWordTypePlural == WordTypePlural.adjectives
                            ? (selectedAdjectives[selectedLanguage] as Word).getLemma()
                            : selectedWordTypePlural == WordTypePlural.nouns
                                ? (selectedNouns[selectedLanguage] as Word).getLemma()
                                : (selectedVerbs[selectedLanguage] as Word).getLemma(),
                        items: (selectedWordTypePlural == WordTypePlural.adjectives
                                ? languageAdjectives[selectedLanguage]!
                                : selectedWordTypePlural == WordTypePlural.nouns
                                    ? languageNouns[selectedLanguage]!
                                    : languageVerbs[selectedLanguage]!)
                            .map<DropdownMenuItem<String>>((word) {
                          Word castedWord = word; // Cast to Word
                          return DropdownMenuItem<String>(
                            value: castedWord.getLemma(),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                castedWord.getLemma()!,
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: darkColor,
                                  fontFamily: 'Fraunces',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            if (selectedWordTypePlural == WordTypePlural.adjectives) {
                              selectedAdjectives[selectedLanguage] = languageAdjectives[selectedLanguage]!.firstWhere((item) => (item).getLemma() == newValue);
                            } else if (selectedWordTypePlural == WordTypePlural.nouns) {
                              selectedNouns[selectedLanguage] = languageNouns[selectedLanguage]!.firstWhere((item) => (item).getLemma() == newValue);
                            } else {
                              selectedVerbs[selectedLanguage] = languageVerbs[selectedLanguage]!.firstWhere((item) => (item).getLemma() == newValue);
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              // padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: lightColor, borderRadius: BorderRadius.circular(12)),
              child: SectionWidget(
                sections: selectedWordTypePlural == WordTypePlural.adjectives
                    ? (selectedAdjectives[selectedLanguage])!.getDisplayInflection()
                    : selectedWordTypePlural == WordTypePlural.nouns
                        ? (selectedNouns[selectedLanguage])!.getDisplayInflection()
                        : (selectedVerbs[selectedLanguage])!.getDisplayInflection(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  final List<Section> sections;

  const SectionWidget({Key? key, required this.sections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: sections.map((section) => _buildSection(section)).toList(),
        ),
        const SizedBox(
          height: 8.0,
        )
      ],
    );
  }

  Widget _buildSection(Section section) {
    Color sectionColor = generatePastelColor('${section.sectionName}qqq');

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Container(
        decoration: BoxDecoration(color: sectionColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: Text(
                  section.sectionName.tr(),
                  style: TextStyle(fontSize: 30, color: sectionColor.darken(30), fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ...section.subsections.map((subsection) => _buildSubsection(subsection, sectionColor)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSubsection(Subsection subsection, Color sectionColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: subsection.subsectionName != ''
                ? FittedBox(
                    child: Text(
                      subsection.subsectionName.tr(),
                      // textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: sectionColor.darken(30), fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                    ),
                  )
                : null,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spread the columns
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end, // Aligns text to the right
                  children: subsection.entries.entries.map((entry) => _buildEntry1(entry, sectionColor)).toList(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
                  children: subsection.entries.entries.map((entry) => _buildEntry2(entry, sectionColor)).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEntry1(MapEntry<String, String> entry, Color sectionColor) {
    return Text(
      entry.key.tr(),
      textAlign: TextAlign.right,
      style: TextStyle(fontSize: 18, color: sectionColor.darken(30), fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
    );
  }

  Widget _buildEntry2(MapEntry<String, String> entry, Color sectionColor) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Text(
        entry.value,
        style: const TextStyle(fontSize: 18, color: almostWhiteColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
      ),
    );
  }
  // Widget _buildEntry(MapEntry<String, String> entry, Color sectionColor) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Text(
  //         entry.key,
  //         style: TextStyle(fontSize: 20, color: sectionColor.darken(30), fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
  //       ),
  //       SizedBox(width: 8),
  //       Text(
  //         entry.value,
  //         style: TextStyle(fontSize: 20, color: almostWhiteColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
  //       ),
  //     ],
  //   );
  // }
}
