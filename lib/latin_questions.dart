import 'dart:math';

import 'constants.dart';

import 'defaults.dart';

import 'verbs_latin.dart';

class LatinAdjective {
  final Map<String, Map<String, Map<String, String>>> declension;
  const LatinAdjective(
      {
      //default value for tests and such
      this.declension = defaultAdjectiveDeclension});

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
      this.declension = defaultNounDeclension});

  String declineAdjective(String c, String n, String g) {
    return declension[c]?[n] ?? 'DNE';
  }
}

class LatinVerb {
  Map<String, String> infinitives;
  Map<String, LatinAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, Map<String, String>>>>> conjugation;

  LatinVerb({
    this.infinitives = defaultVerbInfinitives,
    this.participles = defaultVerbParticiples,
    this.conjugation = defaultVerbConjugation,
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

List<String> latinNumbers = ['singular', 'plural'];
List<String> latinGenders = ['neuter', 'masculine', 'feminine'];
List<String> latinCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative'];
List<String> latinFullCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative', 'locative'];
List<String> latinMoods = ['indicative', 'subjunctive'];

//These can apply to a lot of languages
Map<String, String> lengthenNumber = {
  's': 'singular',
  'p': 'plural',
};
Map<String, String> lengthenGender = {
  'm': 'masculine',
  'f': 'feminine',
  'n': 'neuter',
};
Map<String, String> lengthenCase = {
  'nom': 'nominative',
  'acc': 'accusative',
  'gen': 'genitive',
  'dat': 'dative',
  'abl': 'ablative',
  'voc': 'vocative',
  'loc': 'locative',
};
Map<String, String> lengthenMood = {
  'ind': 'indicative',
  'sub': 'subjunctive',
  'imp': 'imperative',
};
Map<String, String> lengthenVoice = {
  'act': 'active',
  'pas': 'passive',
};
Map<String, String> lengthenTense = {
  'pres': 'present',
  'imp': 'imperfect',
  'fut': 'future',
  'perf': 'perfect',
  'plup': 'pluperfect',
  'futp': 'future perfect',
};
Map<String, String> lengthenPerson = {
  '1': 'first person',
  '2': 'second person',
  '3': 'third person',
};

List<String> latinShortNumbers = ['s', 'p'];
List<String> latinShortGenders = ['m', 'f', 'n'];
List<String> latinShortCases = ['nom', 'acc', 'gen', 'dat', 'abl', 'voc'];
List<String> latinShortFullCases = ['nom', 'acc', 'gen', 'dat', 'abl', 'voc', 'loc'];
List<String> latinShortMoods = ['ind', 'sub', 'imp'];
List<String> latinShortVoices = ['act', 'pas'];
List<String> latinShortTenses = ['pres', 'imp', 'fut', 'perf', 'plup', 'futp'];
List<String> latinShortPersons = ['1', '2', '3'];

Question getLatinVerbQuestion() {
  final random = Random();

  //
  LatinVerb randomVerb = latinVerbs[random.nextInt(latinVerbs.length)];

  String randomMood = latinShortMoods[random.nextInt(latinShortMoods.length)];
  String randomVoice = latinShortVoices[random.nextInt(latinShortVoices.length)];
  String randomTense = latinShortTenses[random.nextInt(latinShortTenses.length)];
  String randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  String randomPerson = latinShortPersons[random.nextInt(latinShortPersons.length)];
  String randomGender = latinShortGenders[random.nextInt(latinShortGenders.length)];

  void initConjugation() {
    randomMood = latinShortMoods[random.nextInt(latinShortMoods.length)];
    randomVoice = latinShortVoices[random.nextInt(latinShortVoices.length)];
    randomTense = latinShortTenses[random.nextInt(latinShortTenses.length)];
    randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
    randomPerson = latinShortPersons[random.nextInt(latinShortPersons.length)];
    randomGender = latinShortGenders[random.nextInt(latinShortGenders.length)];
  }

  while (randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE') {
    initConjugation();
    print('$randomMood, $randomVoice, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }

  String lemma = randomVerb.infinitives['presentActive'] ?? 'something went terribly wrong';
  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    //if it is imperative, you need to know the person, as the subject/vocative forms are often identical
    randomMood == 'imp' ? '${lengthenMood[randomMood]} (${lengthenPerson[randomPerson]})' : lengthenMood[randomMood] ?? 'DNE',
    lengthenVoice[randomVoice] ?? 'DNE',
  ];
  String prompt = getLatinSubject(randomMood, randomNumber, randomPerson, randomGender);

  String blank = randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

String getLatinSubject(String mood, String number, String person, String gender) {
  final random = Random();

  //In order to get them
  String getThirdPersonSubject(String number, String gender) {
    Map<String, Map<String, List<String>>> subjects = {
      's': {
        'm': ['Marcus', 'Antonius', 'Is'],
        'f': ['Helena', 'Livia', 'Ea'],
        'n': ['Animal', 'Templum'],
      },
      'p': {
        'm': ['Senatores', 'Multi', 'Marcus et Antonius', 'Helena et Marcus'],
        'f': ['Feminae', 'Puellae', 'Helena et Livia'],
        'n': ['Animalia', 'Templa'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  //if imperative second person, we use the VOCATIVE or Tu/Vos
  if (mood == 'imp' && person == '2') {
    Map<String, Map<String, List<String>>> vocativeSubjects = {
      's': {
        'm': ['Marce', 'Antoni', 'Tū'],
        'f': ['Helena', 'Livia', 'Tū'],
        'n': ['Animal', 'Templum'],
      },
      'p': {
        'm': ['Senatores', 'omnes', 'vos omnes'],
        'f': ['Feminae', 'Puellae', 'vos omnes'],
        'n': ['Animalia'],
      },
    };
    List<String> listToChooseFrom = vocativeSubjects[number]?[gender] ?? ['DNE'];

    bool spaceBefore = random.nextBool() ? true : false;

    String vocative = listToChooseFrom[random.nextInt(listToChooseFrom.length)];

    return spaceBefore ? '_____, $vocative' : '$vocative, _____';

    //else the thing is a SUBJECT
  } else {
    String subject = '';

    if (number == 's') {
      if (person == '1') {
        subject = 'Egō';
      } else if (person == '2') {
        subject = 'Tū';
      } else if (person == '3') {
        subject = getThirdPersonSubject(number, gender);
      }
    } else if (number == 'p') {
      if (person == '1') {
        subject = 'Nōs';
      } else if (person == '2') {
        subject = 'Vōs';
      } else if (person == '3') {
        subject = getThirdPersonSubject(number, gender);
      }
    }
    return '$subject _____';
  }
}
