import 'package:colorguesser/core/constants.dart';
import 'package:colorguesser/core/enums.dart';

List<Number> italianNumbers = [Number.s, Number.p];
//i is used to represent neuter like words that change gender
//I do not currently use this.
// List<Gender> italianFullGenders = [Gender.m, Gender.f, Gender.i];
List<Gender> italianGenders = [Gender.m, Gender.f];

List<Mood> italianMoods = [Mood.ind, Mood.sub, Mood.con, Mood.imp];
List<Person> italianPersons = [Person.first, Person.second, Person.third];
List<Tense> italianTenses = [
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

List<Tense> italianSimpleTenses = [
  //non-compound forms
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,
];

List<Tense> italianCompoundTenses = [
  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
];

class ItalianCoordinate {
  final Mood mood;
  final Tense tense;
  final Number number;
  final Person person;

  ItalianCoordinate(this.mood, this.tense, this.number, this.person);
}

typedef ConjugationStructure = Map<Mood, Map<Tense, Map<Number, List<Person>>>>;

extension ConjugationStructureExtensions on ConjugationStructure {
  ItalianCoordinate getRandomCoordinate() {
    List<ItalianCoordinate> coordinates = [];

    forEach((mood, tenses) {
      tenses.forEach((tense, numbers) {
        numbers.forEach((number, persons) {
          for (var person in persons) {
            coordinates.add(ItalianCoordinate(mood, tense, number, person));
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

//The default conjugation for italian verbs.
const Map<Mood, Map<Tense, Map<Number, List<Person>>>> italianConjugationStructure = {
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
      Number.s: [Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
  },
};
