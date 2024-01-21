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

  //romanian ones are so weird they must be dealt with individually.
};
