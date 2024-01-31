import 'package:colorguesser/auxiliary_tenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/core/lengtheners.dart';
import 'package:colorguesser/files_italian/italian_constants.dart';
import 'package:colorguesser/temp/romance_classes.dart';
import 'word_data/italian_verbs.dart';

class ItalianAdjective implements RomanceAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const ItalianAdjective({required this.declension});

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

    for (Number number in italianNumbers) {
      Map<String, String> entries = {};
      for (Gender gender in italianGenders) {
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

class ItalianNoun implements RomanceNoun {
  final Map<Number, String> declension;
  final Gender _gender;
  const ItalianNoun({
    required this.declension,
    required Gender gender,
  }) : _gender = gender;

  String? declineNoun(Number n) {
    return declension[n];
  }

  Gender getGender(Number n) {
    //check if irregular
    if (_gender == Gender.i) {
      //masc in singular, fem in plural
      return n == Number.s ? Gender.m : Gender.f;
    } else {
      return _gender;
    }
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
    String sectionName = lengthenGender[_gender]!; // Convert Gender enum to string
    Section genderSection = Section(subsections: [tempSubsection], sectionName: sectionName);

    return [genderSection];
  }
}

class ItalianVerb implements RomanceVerb {
  String infinitive;
  String gerund;
  ItalianAuxiliaryVerb auxiliaryVerb;
  Map<Tense, ItalianAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;
  Map<Mood, Map<Tense, Map<Number, List<Person>>>> conjugationStructure;

  ItalianVerb({
    required this.infinitive,
    required this.gerund,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
    this.conjugationStructure = italianConjugationStructure,
  });
  bool isSimple(Mood m, Tense t, Number n, Person p) {
    if (auxiliaryVerb == essere2 && italianCompoundTenses.contains(t)) {
      return false;
    }
    return true;
  }

  //we need the gender for forms involving participles.
  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //If it is a simple tense and the conjugation contains it.
    if (italianSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    //if it is a complex tense
    if (italianCompoundTenses.contains(t)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      if (auxiliaryTense == null) {
        return null;
      }
      String? aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);

      //If the aux verb is etre, then it is number and gender dependant
      Number participleNumber = auxiliaryVerb == essere2 ? n : Number.s; //singular with avere
      Gender participleGender = auxiliaryVerb == essere2 ? g : Gender.m; //masculine with avere

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
            if (isSimple(mood, tense, number, person)) {
              String? conjugatedVerb = conjugateVerb(mood, tense, number, person, g: Gender.m);
              if (conjugatedVerb != null) {
                List<String> keys = [];

                String key;
                if (person == Person.third) {
                  for (Gender gender in italianGenders) {
                    keys.add(getItalianSubjectPronoun(person, number, gender)!);
                  }
                  key = keys.join('/').replaceAll('Loro/Loro', 'Loro');
                } else {
                  key = getItalianSubjectPronoun(person, number, Gender.m)!;
                }

                entries[key] = conjugatedVerb;
              }
            } else {
              for (Gender gender in italianGenders) {
                String? conjugatedVerb = conjugateVerb(mood, tense, number, person, g: gender);
                if (conjugatedVerb != null) {
                  String key = getItalianSubjectPronoun(person, number, gender)!;

                  //if it is not third person, gender needs to be shown
                  if (!(person == Person.third && number == Number.s)) {
                    key = '${shortenGender[gender]} $key';
                  }
                  entries[key] = conjugatedVerb;
                }
              }
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
class ItalianAuxiliaryVerb implements RomanceAuxiliaryVerb {
  String infinitive;
  String gerund;

  Map<Tense, ItalianAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  ItalianAuxiliaryVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    if (italianSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    return null;
  }

  @override
  String? getLemma() {
    return infinitive;
  }
}

String? getItalianSubjectPronoun(Person person, Number number, Gender gender) {
  String subject = '';
  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'Io';
    } else if (person == Person.second) {
      subject = 'Tu';
    } else if (person == Person.third) {
      if (gender == Gender.m) {
        subject = 'Lui';
      } else {
        subject = 'Lei';
      }
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Noi';
    } else if (person == Person.second) {
      subject = 'Voi';
    } else if (person == Person.third) {
      subject = gender == Gender.m ? 'Loro' : 'Loro'; // Italian does not differentiate gender in the third person plural
    }
  }
  return subject;
}
