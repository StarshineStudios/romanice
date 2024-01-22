import 'package:colorguesser/auxiliaryTenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_italian/italian_constants.dart';
import 'word_data/italian_verbs.dart';

class ItalianAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const ItalianAdjective({required this.declension});

  String? declineAdjective(Number n, Gender g) {
    return declension[n]?[g];
  }
}

class ItalianNoun {
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
}

class ItalianVerb {
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

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    if (italianSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    return null;
  }
}
