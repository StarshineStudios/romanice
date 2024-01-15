import 'package:colorguesser/core/enums.dart';

import 'word_data/romanian_verbs.dart';

class RomanianAdjective {
  final Map<Case, Map<Number, Map<Gender, String>>> declension;
  const RomanianAdjective({
    //default value for tests and such
    required this.declension, // = defaultAdjectiveDeclension,
  });

  String declineAdjective(Case c, Number n, Gender g) {
    return declension[c]?[n]?[g] ?? 'DNE';
  }
}

class RomanianNoun {
  final Map<Case, Map<Number, String>> declension;
  final Gender gender;
  const RomanianNoun(
      {required this.gender,
      //default value for tests and such
      required this.declension //=defaultNounDeclension,
      });

  String declineNoun(Case c, Number n) {
    return declension[c]?[n] ?? 'DNE';
  }
}

class RomanianVerb {
  String infinitive;
  String gerund;
  Map<Tense, RomanianAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  RomanianVerb({
    required this.infinitive, //= defaultVerbInfinitives,
    required this.gerund,
    required this.participles, //= defaultVerbParticiples,
    required this.conjugation, //= defaultVerbConjugation,
  });

  String conjugateVerb(Mood m, Tense t, Number n, Person p) {
    //handle compound cases.

    if (m == Mood.ind) {
      if (t == Tense.perfectRomanceCompound) {
        //we use the aux form
        String first = avea2.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = participles[Tense.perfectRomance]!.declineAdjective(Case.nomacc, Number.s, Gender.m);
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r fut c vrea') {
        //we use the aux from of vrea
        String first = vrea2.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);

        String second = infinitive.replaceAll('a ', '');

        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r fut c o') {
        String first = 'o'; //a form of avea
        String second = conjugateVerb(Mood.sub, Tense.presentRomance, n, p);
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r fut c avea') {
        //we use the normal form of avea, not the aux form

        String first = avea.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = conjugateVerb(Mood.sub, Tense.presentRomance, n, p);
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r futpast c') {
        //we use the normal form of avea, not the aux form

        String first = avea.conjugateVerb(Mood.ind, Tense.imperfect, n, p);
        String second = conjugateVerb(Mood.sub, Tense.presentRomance, n, p);
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'r futp c') {
        String first = vrea2.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = 'fi';
        String third = participles['past']?.declineAdjective(Case.nomacc, Number.s, Gender.m) ?? 'DNE';
        if (first == 'DNE' || second == 'DNE' || third == 'DNE') {
          return 'DNE';
        }
        return '$first $second $third';
      }
    } else if (m == 'subj') {
      if (t == 'r perf c') {
        //we use the aux form\

        String first = 'să fi';
        String second = participles['past']?.declineAdjective(Case.nomacc, Number.s, Gender.m) ?? 'DNE';
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      }
    } else if (m == 'optcon') {
      if (t == 'r perf c') {
        String first = avea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = participles['past']?.declineAdjective(Case.nomacc, Number.s, Gender.m) ?? 'DNE';
        //we use the aux form with aș	ai ar	am	ați	ar
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == Tense.presentRomance) {
        String first = avea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);

        String second = 'fi';
        String third = participles['past']?.declineAdjective(Case.nomacc, Number.s, Gender.m) ?? 'DNE';
        if (first == 'DNE' || second == 'DNE' || third == 'DNE') {
          return 'DNE';
        }
        return '$first $second $third';
      }
    } else if (m == 'pre') {
      if (t == 'r perf c') {
        //we use the aux form of vrea with oi	oi	o	om	oți	or
        String first = vrea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = participles['past']?.declineAdjective(Case.nomacc, Number.s, Gender.m) ?? 'DNE';
        if (first == 'DNE' || second == 'DNE') {
          return 'DNE';
        }
        return '$first $second';
      } else if (t == 'pres') {
        String first = vrea3.conjugateVerb(Mood.ind, Tense.presentRomance, n, p);
        String second = 'fi';
        String third = participles['past']?.declineAdjective(Case.nomacc, Number.s, Gender.m) ?? 'DNE';
        if (first == 'DNE' || second == 'DNE' || third == 'DNE') {
          return 'DNE';
        }
        return '$first $second $third';
      }
    }
    //it is otherwise simple.
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}

class RomanianAuxiliaryVerb {
  String infinitive;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  RomanianAuxiliaryVerb({
    required this.infinitive, //= defaultVerbInfinitives,
    required this.conjugation, //= defaultVerbConjugation,
  });

  String conjugateVerb(Mood m, Tense t, Number n, Person p) {
    return conjugation[m]?[t]?[n]?[p] ?? 'DNE';
  }
}
