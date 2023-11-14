import 'word_data/latin_verbs.dart';

class LatinAdjective {
  final Map<String, Map<String, Map<String, String>>> declension;
  const LatinAdjective({required this.declension});

  String declineAdjective(String c, String n, String g) {
    return declension[c]?[n]?[g] ?? 'DNE';
  }
}

class LatinNoun {
  final Map<String, Map<String, String>> declension;
  final String gender;
  const LatinNoun({required this.gender, required this.declension});

  String declineNoun(String c, String n) {
    return declension[c]?[n] ?? 'DNE';
  }
}

class LatinVerb {
  Map<String, String> infinitives;
  Map<String, LatinAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, Map<String, String>>>>> conjugation;

  LatinVerb({required this.infinitives, required this.participles, required this.conjugation});

  String conjugateVerb(String m, String v, String t, String n, String p, {String g = 'm'}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or french that have a perfect active participle + etre/essere
    if (v == 'pas' && (t == 'perf' || t == 'plup' || t == 'futp')) {
      String sumTense = '';
      if (t == 'perf') {
        sumTense = 'pres';
      } else if (t == 'plup') {
        sumTense = 'imp';
      } else if (t == 'futp') {
        sumTense = 'fut';
      }
      String part = participles['perfectPassive']?.declineAdjective('nom', n, g) ?? 'DNE'; //perfect passive does not exist
      String formOfSum = esse.conjugateVerb(m, 'act', sumTense, n, p);

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
      {required Map<String, String> infinitives,
      required Map<String, LatinAdjective> participles,
      required Map<String, Map<String, Map<String, Map<String, Map<String, String>>>>> conjugation})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation);

  @override
  String conjugateVerb(String m, String v, String t, String n, String p, {String g = 'm'}) {
    //passive perfect, pluperfect, and future perfect are based on the past participle
    //thus they depend on gener and number. (not case, as it goes with sum, always nominative)
    //this is akin to compound tenses in italian or french that have a perfect active participle + etre/essere
    if (v == 'act' && (t == 'perf' || t == 'plup' || t == 'futp')) {
      String sumTense = '';
      if (t == 'perf') {
        sumTense = 'pres';
      } else if (t == 'plup') {
        sumTense = 'imp';
      } else if (t == 'futp') {
        sumTense = 'fut';
      }
      String part = participles['perfectActive']?.declineAdjective('nom', n, g) ?? 'DNE'; //perfect passive does not exist
      String formOfSum = esse.conjugateVerb(m, 'act', sumTense, n, p);

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
      {required Map<String, String> infinitives,
      required Map<String, LatinAdjective> participles,
      required Map<String, Map<String, Map<String, Map<String, Map<String, String>>>>> conjugation})
      : super(infinitives: infinitives, participles: participles, conjugation: conjugation);

  @override
  String conjugateVerb(String m, String v, String t, String n, String p, {String g = 'm'}) {
    //Aux verbs do not need to care about participles.
    return conjugation[m]?[v]?[t]?[n]?[p] ?? 'DNE';
  }
}
