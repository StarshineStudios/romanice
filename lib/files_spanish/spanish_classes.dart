import 'word_data/spanish_verbs.dart';

class SpanishAdjective {
  final Map<String, Map<String, String>> declension;
  const SpanishAdjective(
      {
      //default value for tests and such\
      required this.declension});

  String declineAdjective(String n, String g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class SpanishNoun {
  final Map<String, String> declension;
  final String gender;
  const SpanishNoun({required this.gender, required this.declension});

  String declineNoun(String n) {
    return declension[n] ?? 'DNE';
  }
}

class SpanishVerb {
  String infinitive;
  String gerund;
  SpanishAuxiliaryVerb auxiliaryVerb;
  Map<String, SpanishAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  SpanishVerb({
    required this.infinitive,
    required this.gerund,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
  });

  String conjugateVerb(String m, String t, String n, String p, {String g = 'm'}) {
    print('hi'); //pres ind and pres cond are both simple, also all imp are simple
    if (m == 'imp' || t == 'pres' || t == 'imp' || t == 'fut' || t == 'perf') {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';

      //else if the verb is not simple and is compound
    } else {
      String auxiliaryTense = '';

      if (t == 'perfc') {
        auxiliaryTense = 'pres';
      } else if (t == 'plup') {
        auxiliaryTense = 'imp';
      } else if (t == 'ant') {
        auxiliaryTense = 'perf';
      } else if (t == 'futp') {
        auxiliaryTense = 'fut';
      } else if (m == 'con' && t == 'perfc') {
        auxiliaryTense = 'pres';
      }

      //if it is essere it is gender dependant

      //mood is same,

      String aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);
      String part = participles['past']!.declineAdjective('s', 'm');

      if (aux == 'DNE' || part == 'DNE') {
        return 'DNE';
      }
      return '$aux $part';
    }
  }
}

class SpanishAuxiliaryVerb {
  String infinitive;
  String gerund;
  Map<String, SpanishAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  SpanishAuxiliaryVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String conjugateVerb(String m, String t, String n, String p, {String g = 'm'}) {
    print('hi'); //pres ind and pres cond are both simple, also all imp are simple
    if (m == 'imp' || t == 'pres' || t == 'imp' || t == 'fut' || t == 'perf') {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
    }
    return 'DNE';
  }
}
