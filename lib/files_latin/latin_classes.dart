


import 'word_data/latin_verbs.dart';

class LatinAdjective {
  final Map<String, Map<String, Map<String, String>>> declension;
  const LatinAdjective({
    //default value for tests and such
    required this.declension, // = defaultAdjectiveDeclension,
  });

  String declineAdjective(String c, String n, String g) {
    return declension[c]?[n]?[g] ?? 'DNE';
  }
}

class LatinNoun {
  final Map<String, Map<String, String>> declension;
  final String gender;
  const LatinNoun(
      {required this.gender,
      //default value for tests and such
      required this.declension //=defaultNounDeclension,
      });

  String declineNoun(String c, String n) {
    return declension[c]?[n] ?? 'DNE';
  }
}

class LatinVerb {
  Map<String, String> infinitives;
  Map<String, LatinAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, Map<String, String>>>>> conjugation;

  LatinVerb({
    required this.infinitives, //= defaultVerbInfinitives,
    required this.participles, //= defaultVerbParticiples,
    required this.conjugation, //= defaultVerbConjugation,
  });

  String conjugateVerb(String m, String v, String t, String n, String p, {String g = 'm'}) {
    if (v == 'pas' && (t == 'perf' || t == 'plup' || t == 'futp')) {
      //then it is gender dependant

      String participle = participles['perfectPassive']?.declineAdjective('com', n, g) ?? 'DNE'; //perfect passive does not exist
      String formOfSum = latinVerbs[0].conjugateVerb(m, 'act', t, n, p);

      if (participle == 'DNE' || formOfSum == 'DNE') {
        return 'DNE';
      }
      return '$participle $formOfSum';
    }
    return conjugation[m]?[v]?[t]?[n]?[p] ?? 'DNE';
  }
}
