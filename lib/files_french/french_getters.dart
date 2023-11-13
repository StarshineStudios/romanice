//These can apply to a lot of languages
import 'dart:math';

import '../constants.dart';
import 'word_data/french_adjectives.dart';
import 'french_classes.dart';
import 'word_data/french_nouns.dart';
import 'word_data/french_verbs.dart';
import '../lengtheners.dart';

List<String> frenchShortNumbers = ['s', 'p'];
//i is used to represent neuter like words that change gender
List<String> frenchShortGenders = [
  'm',
  'f',
];
List<String> frenchShortMoods = ['ind', 'sub', 'con', 'imp'];
List<String> frenchShortTenses = [
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
List<String> frenchShortPersons = ['1', '2', '3'];

// List<String> frenchNumbers = ['singular', 'plural'];
// List<String> frenchGenders = ['neuter', 'masculine', 'feminine'];
// List<String> frenchCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative'];
// List<String> frenchFullCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative', 'locative'];
// List<String> frenchMoods = ['indicative', 'subjunctive'];

Question getFrenchVerbQuestion() {
  final random = Random();

  //
  FrenchVerb randomVerb = frenchVerbs[random.nextInt(frenchVerbs.length)];
  String randomMood = frenchShortMoods[random.nextInt(frenchShortMoods.length)];
  String randomTense = frenchShortTenses[random.nextInt(frenchShortTenses.length)];
  String randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];
  String randomPerson = frenchShortPersons[random.nextInt(frenchShortPersons.length)];
  String randomGender = frenchShortGenders[random.nextInt(frenchShortGenders.length)];

  void initConjugation() {
    randomMood = frenchShortMoods[random.nextInt(frenchShortMoods.length)];
    randomTense = frenchShortTenses[random.nextInt(frenchShortTenses.length)];
    randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];
    randomPerson = frenchShortPersons[random.nextInt(frenchShortPersons.length)];
    randomGender = frenchShortGenders[random.nextInt(frenchShortGenders.length)];
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
  String prompt = getFrenchSubject(randomMood, randomNumber, randomPerson, randomGender);

  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
  // return Question(lemma: 'lemma', demands: ['demands'], prompt: 'prompt', answer: 'answer');
}

Question getFrenchNounQuestion() {
  final random = Random();
  FrenchNoun randomNoun = frenchNouns[random.nextInt(frenchNouns.length)];

  String randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];

  void initDeclension() {
    randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];
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
Question getFrenchAdjectiveNounQuestion() {
  final random = Random();
  FrenchNoun randomNoun = frenchNouns[random.nextInt(frenchNouns.length)];
  String randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];

  void initDeclension() {
    randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    print('$randomNumber, DNE');
  }

  FrenchAdjective randomAdjective = frenchAdjectives[random.nextInt(frenchAdjectives.length)];

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
    return getFrenchAdjectiveNounQuestion();
  }

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getFrenchDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0.5;

  return isOutcomeA ? getFrenchNounQuestion() : getFrenchAdjectiveNounQuestion();
}

String getFrenchSubject(String mood, String number, String person, String gender) {
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
