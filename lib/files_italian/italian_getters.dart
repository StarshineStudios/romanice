//These can apply to a lot of languages
import 'dart:math';

import '../core/constants.dart';
import 'word_data/italian_adjectives.dart';
import 'italian_classes.dart';
import 'word_data/italian_nouns.dart';
import 'word_data/italian_verbs.dart';
import '../core/lengtheners.dart';

List<String> italianShortNumbers = ['s', 'p'];
//i is used to represent neuter like words that change gender
List<String> italianShortFullGenders = ['m', 'f', 'i'];
List<String> italianShortGenders = ['m', 'f'];

List<String> italianShortMoods = ['ind', 'sub', 'con', 'imp'];
List<String> italianShortPersons = ['1', '2', '3'];
List<String> italianShortTenses = [
  'r pres',
  'r imp',
  'r fut',
  'r perf',

  //compound forms
  'r perf c',
  'r plup c',
  'r futp c',
  'r ante c',
];

Question getItalianVerbQuestion() {
  final random = Random();
  //PICK RANDOM VERB
  ItalianVerb randomVerb = italianVerbs[random.nextInt(italianVerbs.length)];

  //PICK RANDOM CONJUGATION
  String randomMood = italianShortMoods[random.nextInt(italianShortMoods.length)];
  String randomTense = italianShortTenses[random.nextInt(italianShortTenses.length)];
  String randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  String randomPerson = italianShortPersons[random.nextInt(italianShortPersons.length)];
  //not include irregular because that is wrong
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
  }

  //ONCE WE HAVE FOUND A VALID CONJUGATION FOR THE VERB
  String lemma = randomVerb.infinitive;

  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    //if it is imperative, person matters.
    if (randomMood == 'imp') lengthenPerson[randomPerson] ?? 'DNE',
  ];

  //GENERATE QUESTION
  String prompt = getItalianSubject(randomMood, randomNumber, randomPerson, randomGender);
  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getItalianNounQuestion() {
  final random = Random();
  //PICK RANDOM NOUN
  ItalianNoun randomNoun = italianNouns[random.nextInt(italianNouns.length)];
  //PICK RANDOM DECLENSION
  String randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  void initDeclension() {
    randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    print('$randomNumber, DNE');
  }

  //GENERATE QUESTION
  String lemma = randomNumber == 's' ? randomNoun.declineNoun('p') : randomNoun.declineNoun('s');
  List<String> demands = [
    lengthenNumber[randomNumber] ?? 'DNE',
  ];
  String prompt = '_____';
  String blank = randomNoun.declineNoun(randomNumber);
  String answer = prompt.replaceAll('_____', blank);
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getItalianAdjectiveNounQuestion() {
  final random = Random();
  //GET RANDOM NOUN
  ItalianNoun randomNoun = italianNouns[random.nextInt(italianNouns.length)];
  //GET RANDOM NUMBER
  String randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  void initDeclension() {
    randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    print('$randomNumber, DNE');
  }
  //GET RANDOM ADJECTIVE
  ItalianAdjective randomAdjective = italianAdjectives[random.nextInt(italianAdjectives.length)];

  //GENERATE QUESTION
  String lemma = randomAdjective.declineAdjective('s', 'm');
  List<String> demands = [
    lengthenNumber[randomNumber] ?? 'DNE',
    lengthenGender[randomNoun.getGender(randomNumber)] ?? 'DNE', //disable in hard mode? maybe
  ];

  String declinedNoun = randomNoun.declineNoun(randomNumber);
  String prompt = '$declinedNoun _____';
  String blank = randomAdjective.declineAdjective(randomNumber, randomNoun.getGender(randomNumber));
  String answer = prompt.replaceAll('_____', blank);

  if (answer == 'DNE') {
    return getItalianAdjectiveNounQuestion();
  }
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getItalianDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0;

  return isOutcomeA ? getItalianNounQuestion() : getItalianAdjectiveNounQuestion();
}

String getItalianSubject(String mood, String number, String person, String gender) {
  final random = Random();

  String getThirdPersonSubject(String number, String gender) {
    Map<String, Map<String, List<String>>> subjects = {
      's': {
        'm': ['Luca', 'Matteo', 'Alessandro', 'Marco', 'Giovanni', 'Francesco', 'Andrea', 'Gabriele', 'Il professore', 'Il vicino', 'lui'],
        'f': ['Sofia', 'Giulia', 'Martina', 'Chiara', 'Laura', 'Alessia', 'Francesca', 'Serena', 'La professoressa', 'La vicina', 'lei'],
      },
      'p': {
        'm': [
          'Luca e Matteo',
          'Alessandro e Marco',
          'Giovanni e Francesco',
          'Andrea e Gabriele',
          'Luca e Giulia',
          'Matteo e Chiara',
          'Alessandro e Laura',
          'Marco e Alessia',
          'I professori',
          'I vicini',
          'loro'
        ],
        'f': ['Sofia e Giulia', 'Martina e Chiara', 'Laura e Alessia', 'Francesca e Serena', 'Le professoresse', 'Le vicine', 'loro'],
      },
    };
    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];
    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  String subject = '';

  if (number == 's') {
    if (person == '1') {
      subject = 'Io';
    } else if (person == '2') {
      subject = 'Tu';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == 'p') {
    if (person == '1') {
      subject = 'Noi';
    } else if (person == '2') {
      subject = 'Voi';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
