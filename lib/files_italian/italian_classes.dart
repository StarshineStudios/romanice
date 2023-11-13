import 'word_data/italian_verbs.dart';

class ItalianAdjective {
  final Map<String, Map<String, String>> declension;
  const ItalianAdjective(
      {
      //default value for tests and such\
      required this.declension});

  String declineAdjective(String n, String g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class ItalianNoun {
  final Map<String, String> declension;
  final String gender;
  const ItalianNoun({required this.gender, required this.declension});

  String declineNoun(String n) {
    return declension[n] ?? 'DNE';
  }

  //TODO: inelegant solution but it works
  String getGender({String n = 'DEFAULT'}) {
    if (n == 'DEFAULT') {
      return gender;
    }

    if (gender == 'i') {
      return n == 's' ? 'm' : 'f';
    } else {
      return gender;
    }
  }
}

class ItalianVerb {
  String infinitive;
  String gerund;
  ItalianAuxiliaryVerb auxiliaryVerb;
  Map<String, ItalianAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  ItalianVerb({
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
      String participleGender = auxiliaryVerb == essere2 ? g : 'm';

      String aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);
      String part = participles['past']!.declineAdjective(n, participleGender);

      if (aux == 'DNE' || part == 'DNE') {
        return 'DNE';
      }
      return '$aux $part';
    }
  }
}

class ItalianAuxiliaryVerb {
  String infinitive;
  String gerund;
  Map<String, ItalianAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  ItalianAuxiliaryVerb({
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
