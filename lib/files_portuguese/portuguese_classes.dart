import 'package:colorguesser/auxiliary_tenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/core/lengtheners.dart';
import 'package:colorguesser/files_portuguese/portuguese_constants.dart';
import 'package:colorguesser/temp/romance_classes.dart';

import 'word_data/portuguese_verbs.dart';

class PortugueseAdjective implements RomanceAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const PortugueseAdjective({required this.declension});

  String? declineAdjective(Number n, Gender g) {
    return declension[n]?[g];
  }

  @override
  String? getLemma() {
    return declension[Number.s]?[Gender.m];
  }

  @override
  List<Section> getDisplayInflection() {
    List<Section> sections = [];

    for (Number number in portugueseNumbers) {
      Map<String, String> entries = {};
      for (Gender gender in portugueseGenders) {
        String genderString = lengthenGender[gender]!;
        String declensionString = declineAdjective(number, gender) ?? '-';

        entries[genderString] = declensionString;
      }

      if (entries.isNotEmpty) {
        Subsection tempSubsection = Subsection(entries: entries, subsectionName: "");
        String sectionName = lengthenNumber[number]!;
        Section numberSection = Section(subsections: [tempSubsection], sectionName: sectionName);
        sections.add(numberSection);
      }
    }

    return sections;
  }
}

class PortugueseNoun implements RomanceNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const PortugueseNoun({required this.gender, required this.declension});

  String? declineNoun(Number n) {
    return declension[n];
  }

  @override
  String? getLemma() {
    return declension[Number.s] ?? declension[Number.p];
  }

  @override
  List<Section> getDisplayInflection() {
    // Create the entries for the subsection using the declension map
    Map<String, String> entries = {};
    for (Number number in declension.keys) {
      String key = lengthenNumber[number]!; // Convert Number enum to string (singular/plural)
      entries[key] = declineNoun(number) ?? "-"; // Get the declension for each number
    }

    // Create the subsection
    Subsection tempSubsection = Subsection(entries: entries, subsectionName: "");

    // Create the section with the gender name and add the subsection to it
    String sectionName = lengthenGender[gender]!; // Convert Gender enum to string
    Section genderSection = Section(subsections: [tempSubsection], sectionName: sectionName);

    return [genderSection];
  }
}

class PortugueseVerb implements RomanceVerb {
  String infinitive;
  String gerund;

  Map<Tense, PortugueseAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;
  Map<Mood, Map<Tense, Map<Number, List<Person>>>> conjugationStructure;

  PortugueseVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
    this.conjugationStructure = portugueseConjugationStructure,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //If it is a simple tense and the conjugation contains it.
    if (portugueseSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    //if it is a complex tense
    if (portugueseCompoundTenses.contains(t)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      if (auxiliaryTense == null) {
        return null;
      }
      String? aux = ter2.conjugateVerb(m, auxiliaryTense, n, p);

      String? part = participles[Tense.perfectRomance]!.declineAdjective(Number.s, Gender.m);

      if (aux == null || part == null) {
        return null;
      }
      return '$aux $part';
    }

    //it is not anything
    return null;
  }

  @override
  String? getLemma() {
    return infinitive;
  }

  @override
  List<Section> getDisplayInflection() {
    List<Section> sections = [];

    for (Mood mood in conjugationStructure.keys) {
      List<Subsection> subsections = [];

      for (Tense tense in conjugationStructure[mood]!.keys) {
        Map<String, String> entries = {};

        for (Number number in conjugationStructure[mood]![tense]!.keys) {
          for (Person person in conjugationStructure[mood]![tense]![number]!) {
            // Use masculine as default gender for conjugation
            String? conjugatedVerb = conjugateVerb(mood, tense, number, person, g: Gender.m);

            if (conjugatedVerb != null) {
              List<String> keys = [];

              String key;
              if (person == Person.third) {
                for (Gender gender in portugueseGenders) {
                  keys.add(getPortugueseSubjectPronoun(person, number, gender)!);
                }
                key = keys.join('/');
              } else {
                key = getPortugueseSubjectPronoun(person, number, Gender.m)!;
              }
              entries[key] = conjugatedVerb;
            }
          }
        }

        Subsection subsection = Subsection(entries: entries, subsectionName: lengthenTense[tense]!);
        subsections.add(subsection);
      }

      Section section = Section(subsections: subsections, sectionName: lengthenMood[mood]!);
      sections.add(section);
    }

    return sections;
  }
}

class PortugueseAuxiliaryVerb implements RomanceAuxiliaryVerb {
  String infinitive;
  String gerund;
  Map<Tense, PortugueseAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  PortugueseAuxiliaryVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    return conjugation[m]?[t]?[n]?[p];
  }

  @override
  String? getLemma() {
    return infinitive;
  }
}

String? getPortugueseSubjectPronoun(Person person, Number number, Gender gender) {
  String subject = '';
  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'Eu';
    } else if (person == Person.second) {
      subject = 'Tu';
    } else if (person == Person.third) {
      if (gender == Gender.m) {
        subject = 'Ele';
      } else {
        subject = 'Ela';
      }
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Nós';
    } else if (person == Person.second) {
      subject = 'Vós';
    } else if (person == Person.third) {
      subject = gender == Gender.m ? 'Eles' : 'Elas';
    }
  }
  return subject;
}
