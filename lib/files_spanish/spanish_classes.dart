import 'package:colorguesser/core/enums.dart';

import 'word_data/spanish_verbs.dart';

class SpanishAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const SpanishAdjective(
      {
      //default value for tests and such\
      required this.declension});

  String declineAdjective(Number n, Gender g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class SpanishNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const SpanishNoun({required this.gender, required this.declension});

  String declineNoun(Number n) {
    return declension[n] ?? 'DNE';
  }
}

class SpanishVerb {
  String infinitive;
  String gerund;
  Map<Tense, SpanishAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  SpanishVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    // print('hi'); //pres ind and pres cond are both simple, also all imp are simple
    if (t == Tense.presentRomance || t == Tense.imperfectRomance || t == Tense.perfectRomance || t == Tense.futureRomance || t == Tense.conditionalRomance) {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';

      //else if the verb is not simple and is compound
    } else {
      Tense auxiliaryTense;

      if (t == Tense.perfectRomanceCompound) {
        auxiliaryTense = Tense.presentRomance;
      } else if (t == Tense.pluperfectRomanceCompound) {
        auxiliaryTense = Tense.imperfectRomance;
      } else if (t == Tense.anteriorRomanceCompound) {
        auxiliaryTense = Tense.perfectRomanceCompound;
      } else if (t == Tense.futurePerfectRomanceCompound) {
        auxiliaryTense = Tense.futureRomance;
      } else {
        //if (t == Tense.conditionalPerfectRomanceCompound) {
        auxiliaryTense = Tense.presentRomance;
      }

      String aux = haber.conjugateVerb(m, auxiliaryTense, n, p);
      String part = participles[Tense.perfectRomance]!.declineAdjective(Number.s, Gender.m);

      if (aux == 'DNE' || part == 'DNE') {
        return 'DNE';
      }
      return '$aux $part';
    }
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

  String conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
