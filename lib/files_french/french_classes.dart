import 'dart:math';

import 'package:colorguesser/core/constants.dart';

import '../core/enums.dart';
import 'word_data/french_verbs.dart';

List<Number> frenchNumbers = [Number.s, Number.p];
List<Gender> frenchGenders = [Gender.m, Gender.f];
List<Mood> frenchMoods = [Mood.ind, Mood.sub, Mood.con, Mood.imp];
List<Person> frenchPersons = [Person.first, Person.second, Person.third];
List<Tense> frenchTenses = [
  //non-compound forms
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,

  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
];

List<Tense> frenchSimpleTenses = [
  //non-compound forms
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,
];

List<Tense> frenchCompoundTenses = [
  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
];

//this should work for everything
Map<Tense, Tense> auxiliaryTenseOf = {
  //Latin
  Tense.perfect: Tense.present,
  Tense.pluperfect: Tense.imperfect,
  Tense.futurePerfect: Tense.future,

  //Paradigm one
  Tense.perfectRomanceCompound: Tense.presentRomance,
  Tense.pluperfectRomanceCompound: Tense.imperfectRomance,
  Tense.futurePerfectRomanceCompound: Tense.futureRomance,
  Tense.anteriorRomanceCompound: Tense.perfectRomance,

  //Paradigm two
  Tense.conditionalPerfectRomanceCompound: Tense.conditionalRomance,

  //romanian ones are so weird they must be dealt with individually.
};

class FrenchAdjective {
  final Map<Number, Map<Gender, String>> declension;
  final bool before;
  const FrenchAdjective({required this.declension, this.before = false});

  String? declineAdjective(Number n, Gender g) {
    return declension[n]![g];
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
  // Map<Mood, List<Tense>> otherConjugation;

  FrenchVerb({
    required this.infinitive,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
    // this.otherConjugation = const {
    //   Mood.ind: [
    //     Tense.perfectRomanceCompound, //perfect + avoir present
    //     Tense.pluperfectRomanceCompound, //perfect + avoir imperfect
    //     Tense.futurePerfectRomanceCompound, //perfect + avoir future
    //     Tense.anteriorRomanceCompound, //perfect + avoir perfect
    //   ],
    //   Mood.sub: [
    //     Tense.perfectRomanceCompound, //perfect + avoir present
    //     Tense.pluperfectRomanceCompound, //perfect + avoir imperfect
    //   ],
    //   Mood.con: [
    //     Tense.perfectRomanceCompound //perfect + avoir present
    //   ],
    //   Mood.imp: [
    //     Tense.perfectRomanceCompound //perfect + avoir present
    //   ]
    // },
  });

  //we need the gender for forms involving participles. If no gender is put in, we assume masculine

  Question randomConjugation() {
    List<Mood> weightedMoods = [
      ...List.filled(4, Mood.ind), // 4/12 chance
      ...List.filled(2, Mood.sub), // 2/12 chance
      ...List.filled(1, Mood.con), // 1/12 chance
      ...List.filled(1, Mood.imp), // 1/12 chance
    ];
    Mood randomMood = weightedMoods.getRandom();

    Tense randomTense = conjugation[randomMood].keys.toList().getRandom();

    Number randomNumber = frenchNumbers.getRandom();
    Person randomPerson = frenchPersons.getRandom();
    Gender randomGender = frenchGenders.getRandom();
  }

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {g = Gender.m}) {
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
