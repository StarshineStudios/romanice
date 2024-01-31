import 'package:colorguesser/auxiliary_tenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/core/lengtheners.dart';
import 'package:colorguesser/files_latin/latin_constants.dart';
import 'package:colorguesser/temp/romance_classes.dart';

import 'word_data/latin_verbs.dart';

class LatinAdjective implements RomanceAdjective {
  final Map<Case, Map<Number, Map<Gender, String>>> declension;
  const LatinAdjective({required this.declension});

  String? declineAdjective(Case c, Number n, Gender g) {
    return declension[c]?[n]?[g];
  }

  @override
  String? getLemma() {
    return declension[Case.nom]?[Number.s]?[Gender.n] ?? declension[Case.nom]?[Number.p]?[Gender.n];
  }

  @override
  List<Section> getDisplayInflection() {
    List<Section> sections = [];

    // Loop through numbers first to create sections based on number
    for (Number number in latinNumbers) {
      List<Subsection> subsections = [];

      // Then loop through cases to create subsections
      for (Case caseType in latinCases) {
        Map<String, String> entries = {};

        // Finally, loop through genders to create entries
        for (Gender gender in latinGenders) {
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

class LatinNoun implements RomanceNoun {
  final Map<Case, Map<Number, String>> declension;
  final Gender gender;
  const LatinNoun({required this.gender, required this.declension});

  String? declineNoun(Case c, Number n) {
    return declension[c]?[n];
  }

  @override
  String? getLemma() {
    return declension[Case.nom]?[Number.s] ?? declension[Case.nom]?[Number.p];
  }

  @override
  List<Section> getDisplayInflection() {
    List<Section> sections = [];
    sections.add(Section(subsections: [], sectionName: lengthenGender[gender]!));

    // Outer loop: Iterate through numbers to create sections for each number
    for (Number number in latinNumbers) {
      List<Subsection> subsections = [];

      // Inner loop: Iterate through cases to create subsections
      for (Case caseType in declension.keys.toList()) {
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

class LatinVerb implements RomanceVerb {
  //Latin has multiple infinitives.
  Map<Tense, Map<Voice, String>> infinitives;
  Map<Tense, Map<Voice, LatinAdjective>> participles;
  Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation;
  Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> conjugationStructure;

  LatinVerb({
    required this.infinitives,
    required this.participles,
    required this.conjugation,
    this.conjugationStructure = latinConjugationStructure,
  });
  bool isSimple(Mood m, Voice v, Tense t, Number n, Person p) {
    if (v == Voice.pas && (t == Tense.perfect || t == Tense.pluperfect || t == Tense.futurePerfect)) {
      return false;
    }
    return true;
  }

  String? conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or latin that have a perfect active participle + etre/essere
    if (v == Voice.pas && (t == Tense.perfect || t == Tense.pluperfect || t == Tense.futurePerfect)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      String? part = participles[Tense.perfect]?[Voice.pas]?.declineAdjective(Case.nom, n, g); //perfect passive does not exist
      String? formOfSum = esse.conjugateVerb(m, Voice.act, auxiliaryTense!, n, p);

      if (part == null || formOfSum == null) {
        return null;
      }
      return '$part $formOfSum';
    }
    //If they are not complex, just return this
    return conjugation[m]?[v]?[t]?[n]?[p];
  }

  @override
  String? getLemma() {
    return infinitives[Tense.present]?[Voice.act];
  }

  @override
  List<Section> getDisplayInflection() {
    List<Section> sections = [];

    for (Mood mood in conjugationStructure.keys) {
      for (Voice voice in conjugationStructure[mood]!.keys) {
        List<Subsection> subsections = [];

        for (Tense tense in conjugationStructure[mood]![voice]!.keys) {
          Map<String, String> entries = {};

          for (Number number in conjugationStructure[mood]![voice]![tense]!.keys) {
            for (Person person in conjugationStructure[mood]![voice]![tense]![number]!) {
              // Use masculine as default gender for conjugation
              if (isSimple(mood, voice, tense, number, person)) {
                String? conjugatedVerb = conjugateVerb(mood, voice, tense, number, person, g: Gender.m);
                if (conjugatedVerb != null) {
                  List<String> keys = [];

                  String key;
                  if (person == Person.third) {
                    for (Gender gender in latinGenders) {
                      keys.add(getLatinSubjectPronoun(person, number, gender)!);
                    }
                    key = keys.join('/').replaceAll('(n) ', '');
                  } else {
                    key = getLatinSubjectPronoun(person, number, Gender.m)!;
                  }

                  entries[key] = conjugatedVerb;
                }
              } else {
                for (Gender gender in latinGenders) {
                  String? conjugatedVerb = conjugateVerb(mood, voice, tense, number, person, g: gender);
                  if (conjugatedVerb != null) {
                    String key = getLatinSubjectPronoun(person, number, gender)!;

                    //if it is not third person, gender needs to be shown
                    if (person != Person.third) {
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

        String sectionName = "${lengthenMood[mood]!} (${lengthenVoice[voice]!})";
        Section section = Section(subsections: subsections, sectionName: sectionName);
        sections.add(section);
      }
    }

    return sections;
  }
}

//I have chosen to keep the voice even though it is just always active
//this prevents issues.
class LatinDeponentVerb extends LatinVerb {
  LatinDeponentVerb(
      {required Map<Tense, Map<Voice, String>> infinitives,
      required Map<Tense, Map<Voice, LatinAdjective>> participles,
      required Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation,
      Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> conjugationStructure = latinActiveOnlyConjugationStructure})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation, conjugationStructure: conjugationStructure);

  @override
  String? conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or latin that have a perfect active participle + etre/essere
    if (v == Voice.act && (t == Tense.perfect || t == Tense.pluperfect || t == Tense.futurePerfect)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];
      String? part = participles[Tense.perfect]?[Voice.act]?.declineAdjective(Case.nom, n, g); //perfect passive does not exist
      String? formOfSum = esse.conjugateVerb(m, Voice.act, auxiliaryTense!, n, p);

      if (part == null || formOfSum == null) {
        return null;
      }
      return '$part $formOfSum';
    }
    return conjugation[m]?[v]?[t]?[n]?[p];
  }
}

class LatinAuxiliaryVerb extends LatinVerb {
  LatinAuxiliaryVerb(
      {required Map<Tense, Map<Voice, String>> infinitives,
      required Map<Tense, Map<Voice, LatinAdjective>> participles,
      required Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation,
      Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> conjugationStructure = latinActiveOnlyConjugationStructure})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation);

  @override
  String? conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //Aux verbs do not need to care about participles.
    return conjugation[m]?[v]?[t]?[n]?[p];
  }

  @override
  String? getLemma() {
    return infinitives[Tense.present]?[Voice.act];
  }
}

String? getLatinSubjectPronoun(Person person, Number number, Gender gender) {
  String subject = '';
  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'Egō';
    } else if (person == Person.second) {
      subject = 'Tū';
    } else if (person == Person.third) {
      if (gender == Gender.m) {
        subject = 'Is';
      } else if (gender == Gender.f) {
        subject = 'Ea';
      } else {
        subject = 'Id';
      }
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Nōs';
    } else if (person == Person.second) {
      subject = 'Vōs';
    } else if (person == Person.third) {
      if (gender == Gender.m) {
        subject = 'Eī';
      } else if (gender == Gender.f) {
        subject = 'Eae';
      } else {
        subject = '(n) Ea';
      }
    }
  }
  return subject;
}
