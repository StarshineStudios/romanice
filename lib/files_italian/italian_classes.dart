import 'word_data/italian_verbs.dart';

class ItalianAdjective {
  final Map<String, Map<String, String>> declension;
  const ItalianAdjective({required this.declension});

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

  String getGender(String n) {
    //check if irregular
    if (gender == 'i') {
      //masc in singular, fem in plural
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
    String participleNumber = auxiliaryVerb == essere2 ? n : 'm';
    String participleGender = auxiliaryVerb == essere2 ? g : 'm';

    String aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);
    String part = participles['r perf']!.declineAdjective(participleNumber, participleGender);

    if (aux == 'DNE' || part == 'DNE') {
      return 'DNE';
    }
    return '$aux $part';
  }
}

//The behave just like normal verbs but do not have aux verbs of their own to prevent paradoxes.
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
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
