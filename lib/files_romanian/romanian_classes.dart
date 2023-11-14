import 'word_data/romanian_verbs.dart';

class RomanianAdjective {
  final Map<String, Map<String, Map<String, String>>> declension;
  const RomanianAdjective({
    //default value for tests and such
    required this.declension, // = defaultAdjectiveDeclension,
  });

  String declineAdjective(String c, String n, String g) {
    return declension[c]?[n]?[g] ?? 'DNE';
  }
}

class RomanianNoun {
  final Map<String, Map<String, String>> declension;
  final String gender;
  const RomanianNoun(
      {required this.gender,
      //default value for tests and such
      required this.declension //=defaultNounDeclension,
      });

  String declineNoun(String c, String n) {
    return declension[c]?[n] ?? 'DNE';
  }
}

class RomanianVerb {
  String infinitive;
  String gerund;
  Map<String, RomanianAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  RomanianVerb({
    required this.infinitive, //= defaultVerbInfinitives,
    required this.gerund,
    required this.participles, //= defaultVerbParticiples,
    required this.conjugation, //= defaultVerbConjugation,
  });

  //handle compound cases.
  String conjugateVerb(String m, String t, String n, String p) {
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
