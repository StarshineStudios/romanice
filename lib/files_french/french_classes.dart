import 'word_data/french_verbs.dart';

class FrenchAdjective {
  final Map<String, Map<String, String>> declension;
  const FrenchAdjective(
      {
      //default value for tests and such\
      required this.declension});

  String declineAdjective(String n, String g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class FrenchNoun {
  final Map<String, String> declension;
  final String gender;
  const FrenchNoun({required this.gender, required this.declension});

  String declineNoun(String n) {
    return declension[n] ?? 'DNE';
  }
}

class FrenchVerb {
  String infinitive;
  FrenchAuxiliaryVerb auxiliaryVerb;
  Map<String, FrenchAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  FrenchVerb({
    required this.infinitive,
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
      String participleGender = auxiliaryVerb == etre2 ? g : 'm';

      String aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);
      String part = participles['past']!.declineAdjective(n, participleGender);

      if (aux == 'DNE' || part == 'DNE') {
        return 'DNE';
      }
      return '$aux $part';
    }
  }
}

class FrenchAuxiliaryVerb {
  String infinitive;
  Map<String, FrenchAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  FrenchAuxiliaryVerb({
    required this.infinitive,
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
