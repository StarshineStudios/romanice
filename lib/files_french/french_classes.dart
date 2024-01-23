import 'package:colorguesser/auxiliary_tenses.dart';
import 'package:colorguesser/core/lengtheners.dart';
import 'package:colorguesser/files_french/french_constants.dart';
import 'package:colorguesser/files_french/french_getters.dart';
import 'package:colorguesser/temp/romance_classes.dart';
import '../core/enums.dart';
import 'word_data/french_verbs.dart';

class FrenchAdjective implements RomanceAdjective {
  final Map<Number, Map<Gender, String>> declension;
  final bool before;
  const FrenchAdjective({required this.declension, this.before = false});

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

    for (Number number in frenchNumbers) {
      Map<String, String> entries = {};
      for (Gender gender in frenchGenders) {
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

class FrenchNoun implements RomanceNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const FrenchNoun({required this.gender, required this.declension});

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

class FrenchVerb implements RomanceVerb {
  String infinitive;
  FrenchAuxiliaryVerb auxiliaryVerb;
  Map<Tense, FrenchAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;
  Map<Mood, Map<Tense, Map<Number, List<Person>>>> conjugationStructure;

  FrenchVerb({
    required this.infinitive,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
    this.conjugationStructure = frenchConjugationStructure,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //If it is a simple tense and the conjugation contains it.
    if (frenchSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    //if it is a complex tense
    if (frenchCompoundTenses.contains(t)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      if (auxiliaryTense == null) {
        return null;
      }
      String? aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);

      //If the aux verb is etre, then it is number and gender dependant
      Number participleNumber = auxiliaryVerb == etre2 ? n : Number.s; //singular with avoir
      Gender participleGender = auxiliaryVerb == etre2 ? g : Gender.m; //masculine with avoir

      String? part = participles[Tense.perfectRomance]!.declineAdjective(participleNumber, participleGender);

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
              String key = getFrenchSubjectPronoun(person, number, Gender.m)!;

              if (conjugatedVerb.startsWithVowelSound() && key == 'Je') {
                key = "J'";
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

//The behave just like normal verbs but do not have aux verbs of their own to prevent paradoxes.
class FrenchAuxiliaryVerb implements RomanceAuxiliaryVerb {
  String infinitive;
  Map<Tense, FrenchAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  FrenchAuxiliaryVerb({
    required this.infinitive,
    required this.participles,
    required this.conjugation,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {g = Gender.m}) {
    return conjugation[m]?[t]?[n]?[p];
  }

  @override
  String? getLemma() {
    return infinitive;
  }
}

String? getFrenchSubjectPronoun(Person person, Number number, Gender gender) {
  String subject = '';
  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'Je';
    } else if (person == Person.second) {
      subject = 'Tu';
    } else if (person == Person.third) {
      if (gender == Gender.m) {
        subject = 'Il';
      } else {
        subject = 'Elle';
      }
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Nous';
    } else if (person == Person.second) {
      subject = 'Vous';
    } else if (person == Person.third) {
      subject = gender == Gender.m ? 'Ils' : 'Elles';
    }
  }
  return subject;
}
