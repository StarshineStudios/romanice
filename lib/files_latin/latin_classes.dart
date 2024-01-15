import 'package:colorguesser/core/enums.dart';

import 'word_data/latin_verbs.dart';

class LatinAdjective {
  final Map<Case, Map<Number, Map<Gender, String>>> declension;
  const LatinAdjective({required this.declension});

  String declineAdjective(Case c, Number n, Gender g) {
    return declension[c]?[n]?[g] ?? 'DNE';
  }
}

class LatinNoun {
  final Map<Case, Map<Number, String>> declension;
  final Gender gender;
  const LatinNoun({required this.gender, required this.declension});

  String declineNoun(Case c, Number n) {
    return declension[c]?[n] ?? 'DNE';
  }
}

class LatinVerb {
  Map<Tense, Map<Voice, String>> infinitives;
  Map<Tense, Map<Voice, LatinAdjective>> participles;
  Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation;

  LatinVerb({required this.infinitives, required this.participles, required this.conjugation});

  String conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or french that have a perfect active participle + etre/essere
    if (v == Voice.pas && (t == Tense.perfect || t == Tense.pluperfect || t == Tense.futurePerfect)) {
      Tense sumTense;
      if (t == Tense.perfect) {
        sumTense = Tense.present;
      } else if (t == Tense.pluperfect) {
        sumTense = Tense.imperfect;
      } else {
        //else if (t == Tense.futurePerfect) {
        sumTense = Tense.future;
      }

      String part = participles[Tense.perfect]?[Voice.pas]?.declineAdjective(Case.nom, n, g) ?? 'DNE'; //perfect passive does not exist
      String formOfSum = esse.conjugateVerb(m, Voice.act, sumTense, n, p);

      if (part == 'DNE' || formOfSum == 'DNE') {
        return 'DNE';
      }
      return '$part $formOfSum';
    }
    return conjugation[m]?[v]?[t]?[n]?[p] ?? 'DNE';
  }
}

//I have chosen to keep the voice even though it is just always active
//this prevents issues.
class LatinDeponentVerb extends LatinVerb {
  LatinDeponentVerb(
      {required Map<Tense, Map<Voice, String>> infinitives,
      required Map<Tense, Map<Voice, LatinAdjective>> participles,
      required Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation);

  @override
  String conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or french that have a perfect active participle + etre/essere
    if (v == Voice.act && (t == Tense.perfect || t == Tense.pluperfect || t == Tense.futurePerfect)) {
      Tense sumTense;
      if (t == Tense.perfect) {
        sumTense = Tense.present;
      } else if (t == Tense.pluperfect) {
        sumTense = Tense.imperfect;
      } else {
        //if (t == Tense.futurePerfect) {
        sumTense = Tense.future;
      }
      String part = participles[Tense.perfect]?[Voice.act]?.declineAdjective(Case.nom, n, g) ?? 'DNE'; //perfect passive does not exist
      String formOfSum = esse.conjugateVerb(m, Voice.act, sumTense, n, p);

      if (part == 'DNE' || formOfSum == 'DNE') {
        return 'DNE';
      }
      return '$part $formOfSum';
    }
    return conjugation[m]?[v]?[t]?[n]?[p] ?? 'DNE';
  }
}

class LatinAuxiliaryVerb extends LatinVerb {
  LatinAuxiliaryVerb(
      {required Map<Tense, Map<Voice, String>> infinitives,
      required Map<Tense, Map<Voice, LatinAdjective>> participles,
      required Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation);

  @override
  String conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //Aux verbs do not need to care about participles.
    return conjugation[m]?[v]?[t]?[n]?[p] ?? 'DNE';
  }
}
