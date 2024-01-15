import 'package:colorguesser/core/enums.dart';

import 'word_data/portuguese_verbs.dart';

class PortugueseAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const PortugueseAdjective(
      {
      //default value for tests and such\
      required this.declension});

  String declineAdjective(Number n, Gender g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class PortugueseNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const PortugueseNoun({required this.gender, required this.declension});

  String declineNoun(Number n) {
    return declension[n] ?? 'DNE';
  }
}

class PortugueseVerb {
  String infinitive;
  String gerund;
  Map<Tense, PortugueseAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  PortugueseVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    // print('hi'); //pres ind and pres cond are both simple, also all imp are simple
    if (t == Tense.presentRomance ||
        t == Tense.imperfectRomance ||
        t == Tense.perfectRomance ||
        t == Tense.pluperfectRomance ||
        t == Tense.futureRomance ||
        t == Tense.conditionalRomance) {
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
        auxiliaryTense = Tense.present; //will be conditional
      }

      String aux = ter.conjugateVerb(m, auxiliaryTense, n, p);
      String part = participles[Tense.perfectRomance]!.declineAdjective(Number.s, Gender.m);

      if (aux == 'DNE' || part == 'DNE') {
        return 'DNE';
      }
      return '$aux $part';
    }
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

  String conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    if (t == Tense.presentRomance ||
        t == Tense.imperfectRomance ||
        t == Tense.perfectRomance ||
        t == Tense.pluperfectRomance ||
        t == Tense.futureRomance ||
        t == Tense.conditionalRomance) {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
    }
    return 'DNE';
  }
}
