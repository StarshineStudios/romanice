//These can apply to a lot of languages
import 'dart:math';

import '../constants.dart';
import 'word_data/italian_adjectives.dart';
import 'italian_classes.dart';
import 'word_data/italian_nouns.dart';
import 'word_data/italian_verbs.dart';
import '../lengtheners.dart';

List<String> italianShortNumbers = ['s', 'p'];
//i is used to represent neuter like words that change gender
List<String> italianShortGenders = ['m', 'f', 'i'];
List<String> italianShortMoods = ['ind', 'sub', 'con', 'imp'];
List<String> italianShortTenses = [
  'rpres',
  'rimp',
  'rfut',
  'rperf',
  // 'rcond', //cond is mood

  //compound forms
  'rperfc',
  'rplup',
  'rfutp',
  'rant',
  // 'rcondp',
];
List<String> italianShortPersons = ['1', '2', '3'];

// List<String> italianNumbers = ['singular', 'plural'];
// List<String> italianGenders = ['neuter', 'masculine', 'feminine'];
// List<String> italianCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative'];
// List<String> italianFullCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative', 'locative'];
// List<String> italianMoods = ['indicative', 'subjunctive'];

Question getItalianVerbQuestion() {
  final random = Random();

  //
  ItalianVerb randomVerb = italianVerbs[random.nextInt(italianVerbs.length)];
  String randomMood = italianShortMoods[random.nextInt(italianShortMoods.length)];
  String randomTense = italianShortTenses[random.nextInt(italianShortTenses.length)];
  String randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  String randomPerson = italianShortPersons[random.nextInt(italianShortPersons.length)];
  String randomGender = italianShortGenders[random.nextInt(italianShortGenders.length)];

  void initConjugation() {
    randomMood = italianShortMoods[random.nextInt(italianShortMoods.length)];
    randomTense = italianShortTenses[random.nextInt(italianShortTenses.length)];
    randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
    randomPerson = italianShortPersons[random.nextInt(italianShortPersons.length)];
    randomGender = italianShortGenders[random.nextInt(italianShortGenders.length)];
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
  String prompt = getItalianSubject(randomMood, randomNumber, randomPerson, randomGender);

  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
  // return Question(lemma: 'lemma', demands: ['demands'], prompt: 'prompt', answer: 'answer');
}

Question getItalianNounQuestion() {
  final random = Random();
  ItalianNoun randomNoun = italianNouns[random.nextInt(italianNouns.length)];

  String randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];

  void initDeclension() {
    randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
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
Question getItalianAdjectiveNounQuestion() {
  final random = Random();
  ItalianNoun randomNoun = italianNouns[random.nextInt(italianNouns.length)];
  String randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];

  void initDeclension() {
    randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    print('$randomNumber, DNE');
  }

  ItalianAdjective randomAdjective = italianAdjectives[random.nextInt(italianAdjectives.length)];

  String lemma = randomAdjective.declineAdjective('s', 'm');

  List<String> demands = [
    lengthenNumber[randomNumber] ?? 'DNE',
    lengthenGender[randomNoun.getGender(n: randomNumber)] ?? 'DNE', //disable in hard mode? maybe
  ];

  String declinedNoun = randomNoun.declineNoun(randomNumber);
  String prompt = '$declinedNoun _____';

  String blank = randomAdjective.declineAdjective(randomNumber, randomNoun.getGender(n: randomNumber));
  String answer = prompt.replaceAll('_____', blank);

  if (answer == 'DNE') {
    return getItalianAdjectiveNounQuestion();
  }

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getItalianDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0.5;

  return isOutcomeA ? getItalianNounQuestion() : getItalianAdjectiveNounQuestion();
}

String getItalianSubject(String mood, String number, String person, String gender) {
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
