import 'package:colorguesser/auxiliaryTenses.dart';
import 'package:colorguesser/files_french/french_constants.dart';
import '../core/enums.dart';
import 'word_data/french_verbs.dart';

class FrenchAdjective {
  final Map<Number, Map<Gender, String>> declension;
  final bool before;
  const FrenchAdjective({required this.declension, this.before = false});

  String? declineAdjective(Number n, Gender g) {
    return declension[n]?[g];
  }
}

class FrenchNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const FrenchNoun({required this.gender, required this.declension});

  String? declineNoun(Number n) {
    return declension[n];
  }
}

class FrenchVerb {
  String infinitive;
  FrenchAuxiliaryVerb auxiliaryVerb;
  Map<Tense, FrenchAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;
  Map<Mood, Map<Tense, Map<Number, List<Person>>>> conjugationStructure;

  FrenchVerb({
    required this.infinitive,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
    this.conjugationStructure = frenchConjugationStructure,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //If it is a simple tense and the conjugation contains it.
    if (frenchSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    //if it is a complex tense
    if (frenchCompoundTenses.contains(t)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      if (auxiliaryTense == null) {
        return null;
      }
      String? aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);

      //If the aux verb is etre, then it is number and gender dependant
      Number participleNumber = auxiliaryVerb == etre2 ? n : Number.s; //singular with avoir
      Gender participleGender = auxiliaryVerb == etre2 ? g : Gender.m; //masculine with avoir

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
class FrenchAuxiliaryVerb {
  String infinitive;
  Map<Tense, FrenchAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  FrenchAuxiliaryVerb({
    required this.infinitive,
    required this.participles,
    required this.conjugation,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {g = Gender.m}) {
    return conjugation[m]?[t]?[n]?[p];
  }
}
