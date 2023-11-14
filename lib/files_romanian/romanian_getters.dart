//These can apply to a lot of languages
import 'dart:math';

import '../constants.dart';
import 'word_data/romanian_adjectives.dart';
import 'romanian_classes.dart';
import 'word_data/romanian_nouns.dart';
import 'word_data/romanian_verbs.dart';
import '../lengtheners.dart';

List<String> romanianShortNumbers = ['s', 'p'];
//neuter is similar to romanian, but it is not said to change, simply be neuter.
List<String> romanianShortGenders = ['m', 'f', 'n'];
List<String> romanianShortCases = ['nomacc', 'gendat', 'voc'];

List<String> romanianShortMoods = ['ind', 'sub', 'optcon', 'imp'];
List<String> romanianShortTenses = [
  //simple tenses
  'r pres',
  'r imp',
  'r perf',
  'r perf',

  'r fut c vrea',
  // 'r futp c vrea': '', //I can just use future perfect for this
  'r plup c',
  'r fut c o',
  'r fut c avea', //rare, but I will include it
  'r futpast c',
];
List<String> romanianShortPersons = ['1', '2', '3'];

Question getRomanianVerbQuestion() {
  final random = Random();

  //
  RomanianVerb randomVerb = romanianVerbs[random.nextInt(romanianVerbs.length)];
  String randomMood = romanianShortMoods[random.nextInt(romanianShortMoods.length)];
  String randomTense = romanianShortTenses[random.nextInt(romanianShortTenses.length)];
  String randomNumber = romanianShortNumbers[random.nextInt(romanianShortNumbers.length)];
  String randomPerson = romanianShortPersons[random.nextInt(romanianShortPersons.length)];
  String randomGender = romanianShortGenders[random.nextInt(romanianShortGenders.length)];

  void initConjugation() {
    randomMood = romanianShortMoods[random.nextInt(romanianShortMoods.length)];
    randomTense = romanianShortTenses[random.nextInt(romanianShortTenses.length)];
    randomNumber = romanianShortNumbers[random.nextInt(romanianShortNumbers.length)];
    randomPerson = romanianShortPersons[random.nextInt(romanianShortPersons.length)];
    randomGender = romanianShortGenders[random.nextInt(romanianShortGenders.length)];
  }

  while (randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson) == 'DNE') {
    initConjugation();
    print('$randomMood, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }

  String lemma = randomVerb.infinitive;

  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    if (randomMood == 'imp') lengthenPerson[randomPerson] ?? 'DNE',
  ];
  String prompt = getRomanianSubject(randomMood, randomNumber, randomPerson, randomGender);

  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getRomanianNounQuestion() {
  final random = Random();
  RomanianNoun randomNoun = romanianNouns[random.nextInt(romanianNouns.length)];

  String randomCase = romanianShortCases[random.nextInt(romanianShortCases.length)];
  String randomNumber = romanianShortNumbers[random.nextInt(romanianShortNumbers.length)];

  void initDeclension() {
    randomCase = romanianShortCases[random.nextInt(romanianShortCases.length)];
    randomNumber = romanianShortNumbers[random.nextInt(romanianShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    print('$randomCase, $randomNumber, DNE');
  }

  //possible it is a plural only noun
  String lemma = randomNoun.declension['nom']?['s'] ?? randomNoun.declension['nom']?['p'] ?? 'TERRIBLE ERROR';

  List<String> demands = [
    lengthenCase[randomCase] ?? 'DNE',
    lengthenNumber[randomNumber] ?? 'DNE',
  ];
  String prompt = '_____';

  String blank = randomNoun.declineNoun(randomCase, randomNumber);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

//match adjective to noun
Question getRomanianAdjectiveNounQuestion() {
  final random = Random();
  RomanianNoun randomNoun = romanianNouns[random.nextInt(romanianNouns.length)];
  String randomCase = romanianShortCases[random.nextInt(romanianShortCases.length)];
  String randomNumber = romanianShortNumbers[random.nextInt(romanianShortNumbers.length)];

  void initDeclension() {
    randomCase = romanianShortCases[random.nextInt(romanianShortCases.length)];
    randomNumber = romanianShortNumbers[random.nextInt(romanianShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    print('$randomCase, $randomNumber, DNE');
  }

  RomanianAdjective randomAdjective = romanianAdjectives[random.nextInt(romanianAdjectives.length)];

  String lemma = randomAdjective.declineAdjective('nom', 's', 'n');

  List<String> demands = [
    lengthenCase[randomCase] ?? 'DNE',
    lengthenNumber[randomNumber] ?? 'DNE',
    lengthenGender[randomNoun.gender] ?? 'DNE', //disable in hard mode? maybe
  ];

  String declinedNoun = randomNoun.declineNoun(randomCase, randomNumber);
  String prompt = '$declinedNoun _____';

  String blank = randomAdjective.declineAdjective(randomCase, randomNumber, randomNoun.gender);
  String answer = prompt.replaceAll('_____', blank);

  if (answer == 'DNE') {
    return getRomanianAdjectiveNounQuestion();
  }

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getRomanianDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0.5;

  return isOutcomeA ? getRomanianNounQuestion() : getRomanianAdjectiveNounQuestion();
}

String getRomanianSubject(String mood, String number, String person, String gender) {
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
