import 'package:colorguesser/auxiliaryTenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_latin/latin_constants.dart';

import 'word_data/latin_verbs.dart';

class LatinAdjective {
  final Map<Case, Map<Number, Map<Gender, String>>> declension;
  const LatinAdjective({required this.declension});

  String? declineAdjective(Case c, Number n, Gender g) {
    return declension[c]?[n]?[g];
  }
}

class LatinNoun {
  final Map<Case, Map<Number, String>> declension;
  final Gender gender;
  const LatinNoun({required this.gender, required this.declension});

  String? declineNoun(Case c, Number n) {
    return declension[c]?[n];
  }
}

class LatinVerb {
  //Latin has multiple infinitives.
  Map<Tense, Map<Voice, String>> infinitives;
  Map<Tense, Map<Voice, LatinAdjective>> participles;
  Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation;
  Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> conjugationStructure;

  LatinVerb({
    required this.infinitives,
    required this.participles,
    required this.conjugation,
    this.conjugationStructure = latinConjugationStructure,
  });

  String? conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or french that have a perfect active participle + etre/essere
    if (v == Voice.pas && (t == Tense.perfect || t == Tense.pluperfect || t == Tense.futurePerfect)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      String? part = participles[Tense.perfect]?[Voice.pas]?.declineAdjective(Case.nom, n, g); //perfect passive does not exist
      String? formOfSum = esse.conjugateVerb(m, Voice.act, auxiliaryTense!, n, p);

      if (part == null || formOfSum == null) {
        return null;
      }
      return '$part $formOfSum';
    }
    //If they are not complex, just return this
    return conjugation[m]?[v]?[t]?[n]?[p];
  }
}

//I have chosen to keep the voice even though it is just always active
//this prevents issues.
class LatinDeponentVerb extends LatinVerb {
  LatinDeponentVerb(
      {required Map<Tense, Map<Voice, String>> infinitives,
      required Map<Tense, Map<Voice, LatinAdjective>> participles,
      required Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation,
      Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> conjugationStructure = latinActiveOnlyConjugationStructure})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation, conjugationStructure: conjugationStructure);

  @override
  String? conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or french that have a perfect active participle + etre/essere
    if (v == Voice.act && (t == Tense.perfect || t == Tense.pluperfect || t == Tense.futurePerfect)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];
      String? part = participles[Tense.perfect]?[Voice.act]?.declineAdjective(Case.nom, n, g); //perfect passive does not exist
      String? formOfSum = esse.conjugateVerb(m, Voice.act, auxiliaryTense!, n, p);

      if (part == null || formOfSum == null) {
        return null;
      }
      return '$part $formOfSum';
    }
    return conjugation[m]?[v]?[t]?[n]?[p];
  }
}

class LatinAuxiliaryVerb extends LatinVerb {
  LatinAuxiliaryVerb(
      {required Map<Tense, Map<Voice, String>> infinitives,
      required Map<Tense, Map<Voice, LatinAdjective>> participles,
      required Map<Mood, Map<Voice, Map<Tense, Map<Number, Map<Person, String>>>>> conjugation,
      Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> conjugationStructure = latinActiveOnlyConjugationStructure})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation);

  @override
  String? conjugateVerb(Mood m, Voice v, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //Aux verbs do not need to care about participles.
    return conjugation[m]?[v]?[t]?[n]?[p];
  }
}
