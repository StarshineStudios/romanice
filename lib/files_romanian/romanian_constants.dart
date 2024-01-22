import 'package:colorguesser/core/constants.dart';
import 'package:colorguesser/core/enums.dart';

List<Number> romanianNumbers = [Number.s, Number.p];
//neuter is similar to It irregular, but it is not said to change, simply be neuter.
List<Gender> romanianGenders = [Gender.m, Gender.f, Gender.n];
List<Case> romanianCases = [Case.nomacc, Case.gendat, Case.voc];
List<Mood> romanianMoods = [Mood.ind, Mood.sub, Mood.optcon, Mood.pre, Mood.imp];
List<Person> romanianPersons = [Person.first, Person.second, Person.third];

List<Tense> romanianTenses = [
  //simple tenses
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.perfectRomance,
  Tense.pluperfectRomance,

  //compound tenses
  Tense.perfectRomanceCompound, //perfect compus
  Tense.futureRomanianCompoundVrea,
  Tense.futurePerfectRomanceCompound, // Tense.futp c vrea: , //I can just use future perfect c foTense.this

  Tense.futureRomanianCompoundO, //o is a form of avea
  Tense.futureRomanianCompoundAvea, //rare, but I will include it, it is basis of futpast
  Tense.futurePastRomanianCompound,
];

class RomanianCoordinate {
  final Mood mood;
  final Tense tense;
  final Number number;
  final Person person;

  RomanianCoordinate(this.mood, this.tense, this.number, this.person);
}

typedef RomanianConjugationStructure = Map<Mood, Map<Tense, Map<Number, List<Person>>>>;

extension ConjugationStructureExtensions on RomanianConjugationStructure {
  RomanianCoordinate getRandomCoordinate() {
    List<RomanianCoordinate> coordinates = [];

    forEach((mood, tenses) {
      tenses.forEach((tense, numbers) {
        numbers.forEach((number, persons) {
          for (var person in persons) {
            coordinates.add(RomanianCoordinate(mood, tense, number, person));
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

const Map<Mood, Map<Tense, Map<Number, List<Person>>>> romanianConjugationStructure = {
  Mood.ind: {
    Tense.presentRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.imperfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.perfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.pluperfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
  },
  Mood.sub: {
    Tense.presentRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
  },
  Mood.imp: {
    Tense.presentRomance: {
      Number.s: [
        Person.second,
      ],
      Number.p: [
        Person.second,
      ],
    },
  },
};
