import 'word_data/portuguese_verbs.dart';

class PortugueseAdjective {
  final Map<String, Map<String, String>> declension;
  const PortugueseAdjective(
      {
      //default value for tests and such\
      required this.declension});

  String declineAdjective(String n, String g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class PortugueseNoun {
  final Map<String, String> declension;
  final String gender;
  const PortugueseNoun({required this.gender, required this.declension});

  String declineNoun(String n) {
    return declension[n] ?? 'DNE';
  }
}

class PortugueseVerb {
  String infinitive;
  String gerund;
  Map<String, PortugueseAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  PortugueseVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String conjugateVerb(String m, String t, String n, String p, {String g = 'm'}) {
    print('hi'); //pres ind and pres cond are both simple, also all imp are simple
    if (m == 'r pres' || t == 'r imp' || t == 'r perf' || t == 'r plup' || t == 'r fut' || t == 'r cond') {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';

      //else if the verb is not simple and is compound
    } else {
      String auxiliaryTense = '';

      if (t == 'r perf c') {
        auxiliaryTense = 'r pres';
      } else if (t == 'r plup c') {
        auxiliaryTense = 'r imp';
      } else if (t == 'r ante c') {
        auxiliaryTense = 'r perf c';
      } else if (t == 'r futp c') {
        auxiliaryTense = 'r fut';
      } else if (t == 'r condp c') {
        auxiliaryTense = 'pres';
      }

      String aux = ter.conjugateVerb(m, auxiliaryTense, n, p);
      String part = participles['past']!.declineAdjective('s', 'm');

      if (aux == 'DNE' || part == 'DNE') {
        return 'DNE';
      }
      return '$aux $part';
    }
  }
}

class PortugueseAuxiliaryVerb {
  String infinitive;
  String gerund;
  Map<String, PortugueseAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  PortugueseAuxiliaryVerb({
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
