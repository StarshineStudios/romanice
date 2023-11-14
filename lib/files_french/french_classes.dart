import 'word_data/french_verbs.dart';

class FrenchAdjective {
  final Map<String, Map<String, String>> declension;
  const FrenchAdjective({required this.declension});

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

  //we need the gender for forms involving participles.
  String conjugateVerb(String m, String t, String n, String p, {String g = 'm'}) {
    //first, check if the verb is simple or not.
    if ('r pres' == t || 'r imp' == t || 'r fut' == t || 'r perf' == t) {
      return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
    }

    //else if the verb is not simple and is compound
    String auxiliaryTense = '';
    if (t == 'r perf c') {
      auxiliaryTense = 'r pres';
    } else if (t == 'r plup c') {
      auxiliaryTense = 'r imp';
    } else if (t == 'r ante c') {
      auxiliaryTense = 'r perf';
    } else if (t == 'r futp c') {
      auxiliaryTense = 'r fut';
    }

    //if the auxiliary verb is etre, it is gender and number dependant.
    //else, we use the masculine singular form with avoir
    String participleNumber = auxiliaryVerb == etre2 ? n : 'm';
    String participleGender = auxiliaryVerb == etre2 ? g : 'm';

    String aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);
    String part = participles['r perf']!.declineAdjective(participleNumber, participleGender);

    if (aux == 'DNE' || part == 'DNE') {
      return 'DNE';
    }
    return '$aux $part';
  }
}

//The behave just like normal verbs but do not have aux verbs of their own to prevent paradoxes.
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
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
