//These can apply to a lot of languages
import 'dart:math';

import '../core/constants.dart';
import 'word_data/portuguese_adjectives.dart';
import 'portuguese_classes.dart';
import 'word_data/portuguese_nouns.dart';
import 'word_data/portuguese_verbs.dart';
import '../core/lengtheners.dart';

List<String> portugueseShortNumbers = ['s', 'p'];
//i is used to represent neuter like words that change gender
List<String> portugueseShortGenders = [
  'm',
  'f',
];
List<String> portugueseShortMoods = ['ind', 'sub', 'imp'];
List<String> portugueseShortTenses = [
  'r pres',
  'r imp',
  'r fut',
  'r perf',
  'r plup',
  'r cond', //cond is tense in portuguese

  //compound forms
  'r perf c',
  'r plup c',
  'r futp c',
  'r ante c',
  'r condp c',
];
List<String> portugueseShortPersons = ['1', '2', '3'];

// List<String> portugueseNumbers = ['singular', 'plural'];
// List<String> portugueseGenders = ['neuter', 'masculine', 'feminine'];
// List<String> portugueseCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative'];
// List<String> portugueseFullCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative', 'locative'];
// List<String> portugueseMoods = ['indicative', 'subjunctive'];

Question getPortugueseVerbQuestion() {
  final random = Random();

  //
  PortugueseVerb randomVerb = portugueseVerbs[random.nextInt(portugueseVerbs.length)];
  String randomMood = portugueseShortMoods[random.nextInt(portugueseShortMoods.length)];
  String randomTense = portugueseShortTenses[random.nextInt(portugueseShortTenses.length)];
  String randomNumber = portugueseShortNumbers[random.nextInt(portugueseShortNumbers.length)];
  String randomPerson = portugueseShortPersons[random.nextInt(portugueseShortPersons.length)];
  String randomGender = portugueseShortGenders[random.nextInt(portugueseShortGenders.length)];

  void initConjugation() {
    randomMood = portugueseShortMoods[random.nextInt(portugueseShortMoods.length)];
    randomTense = portugueseShortTenses[random.nextInt(portugueseShortTenses.length)];
    randomNumber = portugueseShortNumbers[random.nextInt(portugueseShortNumbers.length)];
    randomPerson = portugueseShortPersons[random.nextInt(portugueseShortPersons.length)];
    randomGender = portugueseShortGenders[random.nextInt(portugueseShortGenders.length)];
  }

  while (randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE') {
    initConjugation();
    print('$randomMood, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }

  String lemma = randomVerb.infinitive;

  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    if (randomMood == 'imp') lengthenPerson[randomPerson] ?? 'DNE',
  ];
  String prompt = getPortugueseSubject(randomMood, randomNumber, randomPerson, randomGender);

  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
  // return Question(lemma: 'lemma', demands: ['demands'], prompt: 'prompt', answer: 'answer');
}

Question getPortugueseNounQuestion() {
  final random = Random();
  PortugueseNoun randomNoun = portugueseNouns[random.nextInt(portugueseNouns.length)];

  String randomNumber = portugueseShortNumbers[random.nextInt(portugueseShortNumbers.length)];

  void initDeclension() {
    randomNumber = portugueseShortNumbers[random.nextInt(portugueseShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    print('$randomNumber, DNE');
  }

  String lemma = randomNumber == 's' ? randomNoun.declineNoun('p') : randomNoun.declineNoun('s');

  List<String> demands = [
    lengthenNumber[randomNumber] ?? 'DNE',
  ];
  String prompt = '_____';

  String blank = randomNoun.declineNoun(randomNumber);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

//match adjective to noun
Question getPortugueseAdjectiveNounQuestion() {
  final random = Random();
  PortugueseNoun randomNoun = portugueseNouns[random.nextInt(portugueseNouns.length)];
  String randomNumber = portugueseShortNumbers[random.nextInt(portugueseShortNumbers.length)];

  void initDeclension() {
    randomNumber = portugueseShortNumbers[random.nextInt(portugueseShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    print('$randomNumber, DNE');
  }

  PortugueseAdjective randomAdjective = portugueseAdjectives[random.nextInt(portugueseAdjectives.length)];

  String lemma = randomAdjective.declineAdjective('s', 'm');

  List<String> demands = [
    lengthenNumber[randomNumber] ?? 'DNE',
    lengthenGender[randomNoun.gender] ?? 'DNE', //disable in hard mode? maybe
  ];

  String declinedNoun = randomNoun.declineNoun(randomNumber);
  String prompt = '$declinedNoun _____';

  String blank = randomAdjective.declineAdjective(randomNumber, randomNoun.gender);
  String answer = prompt.replaceAll('_____', blank);

  if (answer == 'DNE') {
    return getPortugueseAdjectiveNounQuestion();
  }

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getPortugueseDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0.5;

  return isOutcomeA ? getPortugueseNounQuestion() : getPortugueseAdjectiveNounQuestion();
}

String getPortugueseSubject(String mood, String number, String person, String gender) {
  final random = Random();

  //In order to get them
  String getThirdPersonSubject(String number, String gender) {
    Map<String, Map<String, List<String>>> subjects = {
      's': {
        'm': ['TEMP Marco', 'TEMP Antonio', 'TEMP Is'],
        'f': ['TEMP Helena', 'TEMP Livia', 'TEMP Ea'],
      },
      'p': {
        'm': ['TEMP Senatores', 'TEMP Multi', 'TEMP Marco e Antonio', 'TEMP Helena e Marcus'],
        'f': ['TEMP Femine', 'TEMP Puelle', 'TEMP Helena e Livia'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  String subject = '';

  if (number == 's') {
    if (person == '1') {
      subject = 'TEMP Egō';
    } else if (person == '2') {
      subject = 'TEMP Tū';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == 'p') {
    if (person == '1') {
      subject = 'TEMP Nōs';
    } else if (person == '2') {
      subject = 'TEMP Vōs';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
