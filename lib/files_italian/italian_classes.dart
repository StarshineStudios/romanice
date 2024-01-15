import 'package:colorguesser/core/enums.dart';

import 'word_data/italian_verbs.dart';

class ItalianAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const ItalianAdjective({required this.declension});

  String declineAdjective(Number n, Gender g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class ItalianNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const ItalianNoun({required this.gender, required this.declension});

  String declineNoun(Number n) {
    return declension[n] ?? 'DNE';
  }

  Gender getGender(Number n) {
    //check if irregular
    if (gender == Gender.i) {
      //masc in singular, fem in plural
      return n == Number.s ? Gender.m : Gender.f;
    } else {
      return gender;
    }
  }
}

class ItalianVerb {
  String infinitive;
  String gerund;
  ItalianAuxiliaryVerb auxiliaryVerb;
  Map<Tense, ItalianAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  ItalianVerb({
    required this.infinitive,
    required this.gerund,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
  });

  //we need the gender for forms involving participles.
  String conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //first, check if the verb is simple or not.
    if (Tense.presentRomance == t || Tense.imperfectRomance == t || Tense.futureRomance == t || Tense.perfectRomance == t) {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
    }

    //else if the verb is not simple and is compound
    Tense auxiliaryTense;
    if (t == Tense.perfectRomanceCompound) {
      auxiliaryTense = Tense.presentRomance;
    } else if (t == Tense.pluperfectRomanceCompound) {
      auxiliaryTense = Tense.imperfectRomance;
    } else if (t == Tense.anteriorRomanceCompound) {
      auxiliaryTense = Tense.perfectRomance;
    } else {
      //if (t == Tense.futurePerfectRomanceCompound) {
      auxiliaryTense = Tense.futureRomance;
    }

    //if the auxiliary verb is essere, it is gender and number dependant.
    //else, we use the masculine singular form with avere
    Number participleNumber = auxiliaryVerb == essere2 ? n : Number.s;
    Gender participleGender = auxiliaryVerb == essere2 ? g : Gender.m;

    String aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);
    String part = participles['r perf']!.declineAdjective(participleNumber, participleGender);

    if (aux == 'DNE' || part == 'DNE') {
      return 'DNE';
    }
    return '$aux $part';
  }
}

//The behave just like normal verbs but do not have aux verbs of their own to prevent paradoxes.
class ItalianAuxiliaryVerb {
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

  String conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
