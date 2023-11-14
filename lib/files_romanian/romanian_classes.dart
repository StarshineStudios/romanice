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

  String conjugateVerb(String m, String t, String n, String p) {
    //handle compound cases.

    if (m == 'ind') {
      if (t == 'r perf c') {
        //we use the aux form
        String first = avea2.conjugateVerb('ind', 'r pres', n, p);
        String second = participles['past']!.declineAdjective('nomacc', 's', 'm') ?? 'DNE';
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r fut c vrea') {
        //we use the aux from of vrea
        String first = vrea2.conjugateVerb('ind', 'r pres', n, p);

        String second = infinitive.replaceAll('a ', '');

        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r fut c o') {
        String first = 'o'; //a form of avea
        String second = conjugateVerb('sub', 'r pres', n, p);
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r fut c avea') {
        //we use the normal form of avea, not the aux form

        String first = avea.conjugateVerb('ind', 'r pres', n, p);
        String second = conjugateVerb('sub', 'r pres', n, p);
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r futpast c') {
        //we use the normal form of avea, not the aux form

        String first = avea.conjugateVerb('ind', 'r imp', n, p);
        String second = conjugateVerb('sub', 'r pres', n, p);
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r futp c') {
        String first = vrea2.conjugateVerb('ind', 'r pres', n, p);
        String second = 'fi';
        String third = participles['past']?.declineAdjective('nomacc', 's', 'm') ?? 'DNE';
        if (first == 'DNE' || second == 'DNE' || third == 'DNE') {
          return 'DNE';
        }
        return '$first $second $third';
      }
    } else if (m == 'subj') {
      if (t == 'r perf c') {
        //we use the aux form\

        String first = 'să fi';
        String second = participles['past']?.declineAdjective('nomacc', 's', 'm') ?? 'DNE';
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      }
    } else if (m == 'optcon') {
      if (t == 'r perf c') {
        String first = avea3.conjugateVerb('ind', 'r pres', n, p);
        String second = participles['past']?.declineAdjective('nomacc', 's', 'm') ?? 'DNE';
        //we use the aux form with aș	ai ar	am	ați	ar
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      }
    } else if (m == 'optcon') {
      if (t == 'r perf c') {
        //we use the aux form of vrea with oi	oi	o	om	oți	or
        String first = vrea3.conjugateVerb('ind', 'r pres', n, p);
        String second = participles['past']?.declineAdjective('nomacc', 's', 'm') ?? 'DNE';
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      }
    }
    //it is otherwise simple.

    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}

class RomanianAuxiliaryVerb {
  String infinitive;
  Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  RomanianAuxiliaryVerb({
    required this.infinitive, //= defaultVerbInfinitives,
    required this.conjugation, //= defaultVerbConjugation,
  });

  String conjugateVerb(String m, String t, String n, String p) {
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
