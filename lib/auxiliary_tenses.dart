//this should work for everything
import 'package:colorguesser/core/enums.dart';

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

  //Spanish
  Tense.pluperfectSpanishCompoundRa: Tense.imperfectSpanishRa,
  Tense.pluperfectSpanishCompoundSe: Tense.imperfectSpanishSe,

  //romanian ones are so weird they must be dealt with individually.
  //For now they are hard coded. I'll keep it that way until I find any problems with it.
};
