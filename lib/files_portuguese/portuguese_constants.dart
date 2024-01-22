import 'package:colorguesser/core/constants.dart';
import 'package:colorguesser/core/enums.dart';

List<Number> portugueseNumbers = [Number.s, Number.p];
List<Gender> portugueseGenders = [
  Gender.m,
  Gender.f,
];
List<Mood> portugueseMoods = [Mood.ind, Mood.sub, Mood.imp];
List<Tense> portugueseTenses = [
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,
  Tense.pluperfectRomance,
  Tense.conditionalRomance, //cond is tense in portuguese

  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
  Tense.conditionalPerfectRomanceCompound,
];

List<Tense> portugueseSimpleTenses = [
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,
  Tense.pluperfectRomance,
  Tense.conditionalRomance, //cond is tense in portuguese
];
List<Tense> portugueseCompoundTenses = [
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
  Tense.conditionalPerfectRomanceCompound,
];

List<Person> portuguesePersons = [Person.first, Person.second, Person.third];

class PortugueseCoordinate {
  final Mood mood;
  final Tense tense;
  final Number number;
  final Person person;

  PortugueseCoordinate(this.mood, this.tense, this.number, this.person);
}

typedef PortugueseConjugationStructure = Map<Mood, Map<Tense, Map<Number, List<Person>>>>;

extension ConjugationStructureExtensions on PortugueseConjugationStructure {
  PortugueseCoordinate getRandomCoordinate() {
    List<PortugueseCoordinate> coordinates = [];

    forEach((mood, tenses) {
      tenses.forEach((tense, numbers) {
        numbers.forEach((number, persons) {
          for (var person in persons) {
            coordinates.add(PortugueseCoordinate(mood, tense, number, person));
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

const Map<Mood, Map<Tense, Map<Number, List<Person>>>> portugueseConjugationStructure = {
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
    Tense.futureRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.conditionalRomance: {
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
    Tense.futurePerfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.anteriorRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.conditionalPerfectRomanceCompound: {
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
    Tense.futureRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.perfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.pluperfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.futurePerfectRomanceCompound: {
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
