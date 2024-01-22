import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/core/constants.dart';

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

class FrenchCoordinate {
  final Mood mood;
  final Tense tense;
  final Number number;
  final Person person;

  FrenchCoordinate(this.mood, this.tense, this.number, this.person);
}

typedef FrenchConjugationStructure = Map<Mood, Map<Tense, Map<Number, List<Person>>>>;

extension ConjugationStructureExtensions on FrenchConjugationStructure {
  FrenchCoordinate getRandomCoordinate() {
    List<FrenchCoordinate> coordinates = [];

    forEach((mood, tenses) {
      tenses.forEach((tense, numbers) {
        numbers.forEach((number, persons) {
          for (var person in persons) {
            coordinates.add(FrenchCoordinate(mood, tense, number, person));
          }
        });
      });
    });

    if (coordinates.isEmpty) {
      throw StateError("No coordinates available to select a random one.");
    }

    return coordinates.getRandom();
  }
}

//The default conjugation for french verbs.
const Map<Mood, Map<Tense, Map<Number, List<Person>>>> frenchConjugationStructure = {
  Mood.ind: {
    //SIMPLE
    Tense.presentRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.imperfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.futureRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.perfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },

    //COMPOUND
    Tense.perfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.pluperfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.futurePerfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.anteriorRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
  },
  Mood.con: {
    Tense.presentRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.perfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
  },
  Mood.sub: {
    Tense.presentRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.imperfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.perfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.pluperfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
  },
  Mood.imp: {
    Tense.presentRomance: {
      Number.s: [Person.second],
      Number.p: [Person.first, Person.second],
    },
  },
};
