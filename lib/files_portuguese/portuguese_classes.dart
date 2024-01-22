import 'package:colorguesser/auxiliaryTenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_portuguese/portuguese_constants.dart';

import 'word_data/portuguese_verbs.dart';

class PortugueseAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const PortugueseAdjective({required this.declension});

  String? declineAdjective(Number n, Gender g) {
    return declension[n]?[g];
  }
}

class PortugueseNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const PortugueseNoun({required this.gender, required this.declension});

  String? declineNoun(Number n) {
    return declension[n];
  }
}

class PortugueseVerb {
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
}

class PortugueseAuxiliaryVerb {
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
}
