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
