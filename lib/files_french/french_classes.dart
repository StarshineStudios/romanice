import '../core/enums.dart';
import 'word_data/french_verbs.dart';
import '../../core/constants.dart';

class FrenchAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const FrenchAdjective({required this.declension});

  String declineAdjective(Number n, Gender g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class FrenchNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const FrenchNoun({required this.gender, required this.declension});

  String declineNoun(Number n) {
    return declension[n] ?? 'DNE';
  }
}

class FrenchVerb {
  String infinitive;
  FrenchAuxiliaryVerb auxiliaryVerb;
  Map<Tense, FrenchAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  FrenchVerb({
    required this.infinitive,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
  });

  //we need the gender for forms involving participles. If no gender is put in, we assume masculine

  String conjugateVerb(Mood m, Tense t, Number n, Person p, {g = Gender.m}) {
    //first, check if the verb is simple or not.
    if (Tense.presentRomance == t || Tense.imperfectRomance == t || Tense.futureRomance == t || Tense.perfectRomance == t) {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
    }

    //else if the verb is not simple and is compound
    var auxiliaryTense;
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

    //if the auxiliary verb is etre, it is gender and number dependant.
    //else, we use the masculine singular form with avoir
    Number participleNumber = auxiliaryVerb == etre2 ? n : Number.s; //singular with avoir
    Gender participleGender = auxiliaryVerb == etre2 ? g : Gender.m; //masculine with avoir

    String aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);
    String part = participles[Tense.perfectRomance]!.declineAdjective(participleNumber, participleGender);

    if (aux == 'DNE' || part == 'DNE') {
      return 'DNE';
    }
    return '$aux $part';
  }
}

//The behave just like normal verbs but do not have aux verbs of their own to prevent paradoxes.
class FrenchAuxiliaryVerb {
  String infinitive;
  Map<Tense, FrenchAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  FrenchAuxiliaryVerb({
    required this.infinitive,
    required this.participles,
    required this.conjugation,
  });

  String conjugateVerb(Mood m, Tense t, Number n, Person p, {g = Gender.m}) {
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
