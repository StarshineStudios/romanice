//These can apply to a lot of languages
import 'dart:math';

import '../constants.dart';
import 'word_data/spanish_adjectives.dart';
import 'spanish_classes.dart';
import 'word_data/spanish_nouns.dart';
import 'word_data/spanish_verbs.dart';
import '../lengtheners.dart';

List<String> spanishShortNumbers = ['s', 'p'];
//i is used to represent neuter like words that change gender
List<String> spanishShortGenders = [
  'm',
  'f',
];
List<String> spanishShortMoods = ['ind', 'sub', 'imp'];
List<String> spanishShortTenses = [
  'rpres',
  'rimp',
  'rfut',
  'rperf',
  'rcond', //cond is tense in spanish

  //compound forms
  'rperfc',
  'rplup',
  'rfutp',
  'rant',
  'rcondp',
];
List<String> spanishShortPersons = ['1', '2', '3'];

// List<String> spanishNumbers = ['singular', 'plural'];
// List<String> spanishGenders = ['neuter', 'masculine', 'feminine'];
// List<String> spanishCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative'];
// List<String> spanishFullCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative', 'locative'];
// List<String> spanishMoods = ['indicative', 'subjunctive'];

Question getSpanishVerbQuestion() {
  final random = Random();

  //
  SpanishVerb randomVerb = spanishVerbs[random.nextInt(spanishVerbs.length)];
  String randomMood = spanishShortMoods[random.nextInt(spanishShortMoods.length)];
  String randomTense = spanishShortTenses[random.nextInt(spanishShortTenses.length)];
  String randomNumber = spanishShortNumbers[random.nextInt(spanishShortNumbers.length)];
  String randomPerson = spanishShortPersons[random.nextInt(spanishShortPersons.length)];
  String randomGender = spanishShortGenders[random.nextInt(spanishShortGenders.length)];

  void initConjugation() {
    randomMood = spanishShortMoods[random.nextInt(spanishShortMoods.length)];
    randomTense = spanishShortTenses[random.nextInt(spanishShortTenses.length)];
    randomNumber = spanishShortNumbers[random.nextInt(spanishShortNumbers.length)];
    randomPerson = spanishShortPersons[random.nextInt(spanishShortPersons.length)];
    randomGender = spanishShortGenders[random.nextInt(spanishShortGenders.length)];
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
  String prompt = getSpanishSubject(randomMood, randomNumber, randomPerson, randomGender);

  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
  // return Question(lemma: 'lemma', demands: ['demands'], prompt: 'prompt', answer: 'answer');
}

Question getSpanishNounQuestion() {
  final random = Random();
  SpanishNoun randomNoun = spanishNouns[random.nextInt(spanishNouns.length)];

  String randomNumber = spanishShortNumbers[random.nextInt(spanishShortNumbers.length)];

  void initDeclension() {
    randomNumber = spanishShortNumbers[random.nextInt(spanishShortNumbers.length)];
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
Question getSpanishAdjectiveNounQuestion() {
  final random = Random();
  SpanishNoun randomNoun = spanishNouns[random.nextInt(spanishNouns.length)];
  String randomNumber = spanishShortNumbers[random.nextInt(spanishShortNumbers.length)];

  void initDeclension() {
    randomNumber = spanishShortNumbers[random.nextInt(spanishShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    print('$randomNumber, DNE');
  }

  SpanishAdjective randomAdjective = spanishAdjectives[random.nextInt(spanishAdjectives.length)];

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
    return getSpanishAdjectiveNounQuestion();
  }

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getSpanishDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0.5;

  return isOutcomeA ? getSpanishNounQuestion() : getSpanishAdjectiveNounQuestion();
}

String getSpanishSubject(String mood, String number, String person, String gender) {
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
