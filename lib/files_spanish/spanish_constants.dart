import 'package:colorguesser/core/constants.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:hive/hive.dart';

List<Number> spanishNumbers = [Number.s, Number.p];
List<Gender> spanishGenders = [Gender.m, Gender.f];
List<Mood> spanishMoods = [Mood.ind, Mood.sub, Mood.imp];
List<Tense> spanishTenses = [
  Tense.presentRomance,
  Tense.imperfectRomance,

  Tense.imperfectSpanishSe,
  Tense.imperfectSpanishRa,
  Tense.futureRomance,
  Tense.perfectRomance,
  Tense.conditionalRomance, //cond is tense in spanish

  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
  Tense.conditionalPerfectRomanceCompound,
];
List<Tense> spanishSimpleTenses = [
  Tense.presentRomance,
  Tense.imperfectRomance,

  Tense.imperfectSpanishSe,
  Tense.imperfectSpanishRa,
  Tense.futureRomance,
  Tense.perfectRomance,
  Tense.conditionalRomance, //cond is tense in spanish
];
List<Tense> spanishCompoundTenses = [
  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
  Tense.conditionalPerfectRomanceCompound,
  Tense.pluperfectSpanishCompoundRa,
  Tense.pluperfectSpanishCompoundSe,
];
List<Person> spanishPersons = [Person.first, Person.second, Person.third];

class SpanishCoordinate {
  final Mood mood;
  final Tense tense;
  final Number number;
  final Person person;

  SpanishCoordinate(this.mood, this.tense, this.number, this.person);
}

typedef SpanishConjugationStructure = Map<Mood, Map<Tense, Map<Number, List<Person>>>>;

extension ConjugationStructureExtensions on SpanishConjugationStructure {
  SpanishCoordinate getRandomCoordinate() {
    //check if using vosotros
    final Box<dynamic> _generalBox = Hive.box('generalBoxString');
    bool usingV = _generalBox.get('usingVosotros', defaultValue: true);
    List<SpanishCoordinate> coordinates = [];

    forEach((mood, tenses) {
      tenses.forEach((tense, numbers) {
        numbers.forEach((number, persons) {
          for (var person in persons) {
            if (!usingV && person == Person.second && number == Number.p) {
            } else {
              coordinates.add(SpanishCoordinate(mood, tense, number, person));
            }
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
    Tense.futureRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.perfectRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.conditionalRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    //Compound
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
    Tense.imperfectSpanishRa: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.imperfectSpanishSe: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.futureRomance: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    //Compound
    Tense.perfectRomanceCompound: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.pluperfectSpanishCompoundRa: {
      Number.s: [Person.first, Person.second, Person.third],
      Number.p: [Person.first, Person.second, Person.third],
    },
    Tense.pluperfectSpanishCompoundSe: {
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
