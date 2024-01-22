import 'package:colorguesser/auxiliary_tenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_spanish/spanish_constants.dart';

import 'word_data/spanish_verbs.dart';

class SpanishAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const SpanishAdjective({required this.declension});

  String? declineAdjective(Number n, Gender g) {
    return declension[n]?[g];
  }
}

class SpanishNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const SpanishNoun({required this.gender, required this.declension});

  String? declineNoun(Number n) {
    return declension[n];
  }
}

class SpanishVerb {
  String infinitive;
  String gerund;
  Map<Tense, SpanishAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;
  Map<Mood, Map<Tense, Map<Number, List<Person>>>> conjugationStructure;

  SpanishVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
    this.conjugationStructure = portugueseConjugationStructure,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    if (spanishSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    //if it is a complex tense
    if (spanishCompoundTenses.contains(t)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      if (auxiliaryTense == null) {
        return null;
      }
      String? aux = haber.conjugateVerb(m, auxiliaryTense, n, p);

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

class SpanishAuxiliaryVerb {
  String infinitive;
  String gerund;
  Map<Tense, SpanishAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  SpanishAuxiliaryVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    return conjugation[m]?[t]?[n]?[p];
  }
}
