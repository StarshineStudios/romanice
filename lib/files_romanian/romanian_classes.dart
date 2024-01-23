import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/core/lengtheners.dart';
import 'package:colorguesser/files_romanian/romanian_constants.dart';
import 'package:colorguesser/temp/romance_classes.dart';

import 'word_data/romanian_verbs.dart';

class RomanianAdjective implements RomanceAdjective {
  final Map<Case, Map<Number, Map<Gender, String>>> declension;
  const RomanianAdjective({
    //default value for tests and such
    required this.declension, // = defaultAdjectiveDeclension,
  });

  String? declineAdjective(Case c, Number n, Gender g) {
    return declension[c]?[n]?[g];
  }

  @override
  String? getLemma() {
    return declension[Case.nomacc]?[Number.s]?[Gender.n] ?? declension[Case.nomacc]?[Number.p]?[Gender.n];
  }

  @override
  @override
  List<Section> getDisplayInflection() {
    List<Section> sections = [];

    // Loop through numbers first to create sections based on number
    for (Number number in romanianNumbers) {
      List<Subsection> subsections = [];

      // Then loop through cases to create subsections
      for (Case caseType in romanianCases) {
        Map<String, String> entries = {};

        // Finally, loop through genders to create entries
        for (Gender gender in romanianGenders) {
          String key = lengthenGender[gender]!;
          String declensionString = declineAdjective(caseType, number, gender) ?? '-';
          entries[key] = declensionString;
        }

        if (entries.isNotEmpty) {
          Subsection tempSubsection = Subsection(entries: entries, subsectionName: lengthenCase[caseType]!);
          subsections.add(tempSubsection);
        }
      }

      if (subsections.isNotEmpty) {
        sections.add(Section(subsections: subsections, sectionName: lengthenNumber[number]!));
      }
    }

    return sections;
  }
}

class RomanianNoun implements RomanceNoun {
  final Map<Case, Map<Number, String>> declension;
  final Gender gender;
  const RomanianNoun(
      {required this.gender,
      //default value for tests and such
      required this.declension //=defaultNounDeclension,
      });

  String? declineNoun(Case c, Number n) {
    return declension[c]?[n];
  }

  @override
  @override
  String? getLemma() {
    return declension[Case.nomacc]?[Number.s] ?? declension[Case.nomacc]?[Number.p];
  }

  @override
  List<Section> getDisplayInflection() {
    List<Section> sections = [];

    // Outer loop: Iterate through numbers to create sections for each number
    for (Number number in romanianNumbers) {
      List<Subsection> subsections = [];

      // Inner loop: Iterate through cases to create subsections
      for (Case caseType in romanianCases) {
        Map<String, String> entries = {};

        // Create a single entry per case
        String key = lengthenCase[caseType]!; // Convert Case enum to string
        String declensionString = declineNoun(caseType, number) ?? '-';
        entries[key] = declensionString;

        // Create a subsection for this case
        Subsection tempSubsection = Subsection(entries: entries, subsectionName: '');
        subsections.add(tempSubsection);
      }

      // Create a section for this number
      if (subsections.isNotEmpty) {
        String sectionName = lengthenNumber[number]!; // Convert Number enum to string (singular/plural)
        Section numberSection = Section(subsections: subsections, sectionName: sectionName);
        sections.add(numberSection);
      }
    }

    return sections;
  }
}

class RomanianVerb implements RomanceVerb {
  String infinitive;
  String gerund;
  Map<Tense, RomanianAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;
  Map<Mood, Map<Tense, Map<Number, List<Person>>>> conjugationStructure;

  RomanianVerb({
    required this.infinitive, //= defaultVerbInfinitives,
    required this.gerund,
    required this.participles, //= defaultVerbParticiples,
    required this.conjugation, //= defaultVerbConjugation,
    this.conjugationStructure = romanianConjugationStructure,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p) {
    //handle compound cases.

    if (m == Mood.ind) {
      if (t == Tense.perfectRomanceCompound) {
        //we use the aux form
        String? first = avea2.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String? second = participles[Tense.perfectRomance]!.declineAdjective(Case.nomacc, Number.s, Gender.m);
        if (first == null || second == null) {
          return null;
        }
        return '$first $second';
      } else if (t == Tense.futureRomanianCompoundVrea) {
        //we use the aux from of vrea
        String? first = vrea2.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);

        String second = infinitive.replaceAll('a ', '');

        if (first == null) {
          return null;
        }
        return '$first $second';
      } else if (t == Tense.futureRomanianCompoundO) {
        String first = 'o'; //a form of avea
        String? second = conjugateVerb(Mood.sub, Tense.presentRomance, n, p);
        if (second == null) {
          return null;
        }
        return '$first $second';
      } else if (t == Tense.futureRomanianCompoundAvea) {
        //we use the normal form of avea, not the aux form

        String? first = avea.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String? second = conjugateVerb(Mood.sub, Tense.presentRomance, n, p);
        if (first == null || second == null) {
          return null;
        }
        return '$first $second';
      } else if (t == Tense.futurePastRomanianCompound) {
        //we use the normal form of avea, not the aux form

        String? first = avea.conjugateVerb(Mood.ind, Tense.imperfectRomance, n, p);
        String? second = conjugateVerb(Mood.sub, Tense.presentRomance, n, p);
        if (first == null || second == null) {
          return null;
        }
        return '$first $second';
      } else if (t == Tense.futurePerfectRomanceCompound) {
        String? first = vrea2.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = 'fi';
        String? third = participles[Tense.perfectRomance]?.declineAdjective(Case.nomacc, Number.s, Gender.m);
        if (first == null || third == null) {
          return null;
        }
        return '$first $second $third';
      }
    } else if (m == Mood.sub) {
      if (t == Tense.perfectRomanceCompound) {
        //we use the aux form\

        String first = 'să fi';
        String? second = participles[Tense.perfectRomance]?.declineAdjective(Case.nomacc, Number.s, Gender.m);
        if (second == null) {
          return null;
        }
        return '$first $second';
      }
    } else if (m == Mood.optcon) {
      if (t == Tense.perfectRomanceCompound) {
        String? first = avea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String? second = participles[Tense.perfectRomance]?.declineAdjective(Case.nomacc, Number.s, Gender.m);
        //we use the aux form with aș	ai ar	am	ați	ar
        if (first == null || second == null) {
          return null;
        }
        return '$first $second';
      } else if (t == Tense.presentRomance) {
        String? first = avea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);

        String second = 'fi';
        String? third = participles[Tense.perfectRomance]?.declineAdjective(Case.nomacc, Number.s, Gender.m);
        if (first == null || third == null) {
          return null;
        }
        return '$first $second $third';
      }
    } else if (m == Mood.pre) {
      if (t == Tense.perfectRomanceCompound) {
        //we use the aux form of vrea with oi	oi	o	om	oți	or
        String? first = vrea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String? second = participles[Tense.perfectRomance]?.declineAdjective(Case.nomacc, Number.s, Gender.m);
        if (first == null || second == null) {
          return null;
        }
        return '$first $second';
      } else if (t == Tense.presentRomance) {
        String? first = vrea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = 'fi';
        String? third = participles[Tense.perfectRomance]?.declineAdjective(Case.nomacc, Number.s, Gender.m);
        if (first == null || third == null) {
          return null;
        }
        return '$first $second $third';
      }
    }
    //it is otherwise simple.
    return conjugation[m]?[t]?[n]?[p];
  }

  @override
  String? getLemma() {
    return infinitive;
  }

  @override
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
            String? conjugatedVerb = conjugateVerb(mood, tense, number, person);

            if (conjugatedVerb != null) {
              String key = getRomanianSubjectPronoun(person, number, Gender.m)!;
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

class RomanianAuxiliaryVerb implements RomanceAuxiliaryVerb {
  String infinitive;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  RomanianAuxiliaryVerb({
    required this.infinitive, //= defaultVerbInfinitives,
    required this.conjugation, //= defaultVerbConjugation,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p) {
    return conjugation[m]?[t]?[n]?[p];
  }

  @override
  String? getLemma() {
    return infinitive;
  }
}

String? getRomanianSubjectPronoun(Person person, Number number, Gender gender) {
  String subject = '';
  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'Eu';
    } else if (person == Person.second) {
      subject = 'Tu';
    } else if (person == Person.third) {
      if (gender == Gender.m) {
        subject = 'El';
      } else {
        subject = 'Ea';
      }
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Noi';
    } else if (person == Person.second) {
      subject = 'Voi';
    } else if (person == Person.third) {
      subject = gender == Gender.m ? 'Ei' : 'Ele';
    }
  }
  return subject;
}
