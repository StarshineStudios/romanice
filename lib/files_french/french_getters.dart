import 'dart:math';

import '../constants.dart';
import 'word_data/french_adjectives.dart';
import 'french_classes.dart';
import 'word_data/french_nouns.dart';
import 'word_data/french_verbs.dart';
import '../lengtheners.dart';

List<String> frenchShortNumbers = ['s', 'p'];
List<String> frenchShortGenders = ['m', 'f'];
List<String> frenchShortMoods = ['ind', 'sub', 'con', 'imp'];
List<String> frenchShortPersons = ['1', '2', '3'];
List<String> frenchShortTenses = [
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

Question getFrenchVerbQuestion() {
  final random = Random();
  //PICK RANDOM VERB
  FrenchVerb randomVerb = frenchVerbs[random.nextInt(frenchVerbs.length)];

  //PICK RANDOM CONJUGATION
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
  }

  //ONCE WE HAVE FOUND A VALID CONJUGATION FOR THE VERB
  String lemma = randomVerb.infinitive;

  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    //if it is imperative, person matters.
    if (randomMood == 'imp') lengthenPerson[randomPerson] ?? 'DNE',
  ];

  String prompt = getFrenchSubject(randomMood, randomNumber, randomPerson, randomGender);
  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getFrenchNounQuestion() {
  final random = Random();
  //PICK A RANDOM NOUN
  FrenchNoun randomNoun = frenchNouns[random.nextInt(frenchNouns.length)];

  //PICK A RANDOM DECLENSION
  String randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];
  void initDeclension() {
    randomNumber = frenchShortNumbers[random.nextInt(frenchShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
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

Question getFrenchAdjectiveNounQuestion() {
  final random = Random();
  //PICK A RANDOM NOUN
  FrenchNoun randomNoun = frenchNouns[random.nextInt(frenchNouns.length)];
  //PICK A RANDOM ADJECTIVE
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
  // Simulate a chance
  bool isOutcomeA = random.nextDouble() < 0.5;
  return isOutcomeA ? getFrenchNounQuestion() : getFrenchAdjectiveNounQuestion();
}

String getFrenchSubject(String mood, String number, String person, String gender) {
  final random = Random();

  String getThirdPersonSubject(String number, String gender) {
    Map<String, Map<String, List<String>>> subjects = {
      's': {
        'm': ['Gabriel', 'Léo', 'Raphaël', 'Maxime', 'Nicolas', 'Julien', 'Antoine', 'Lucas', 'Le professeur', 'Le voisin', 'il'],
        'f': ['Léa', 'Emma', 'Manon', 'Chloé', 'Camille', 'Sarah', 'Julie', 'Marie', 'La professeure', 'La voisine', 'elle'],
      },
      'p': {
        'm': [
          'Nicolas et Maxime',
          'Julien et Antoine',
          'Lucas et Gabriel',
          'Léo et Raphaël',
          'Nicolas et Julie',
          'Maxime et Chloé',
          'Lucas et Sarah',
          'Antoine et Emma',
          'Les professeurs',
          'Les voisins',
          'ils'
        ],
        'f': ['Emma et Chloé', 'Camille et Sarah', 'Julie et Marie', 'Léa et Manon', 'Les professeures', 'Les voisines', 'elles'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];
    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  String subject = '';

  if (number == 's') {
    if (person == '1') {
      subject = 'Je';
    } else if (person == '2') {
      subject = 'Tu';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == 'p') {
    if (person == '1') {
      subject = 'Nous';
    } else if (person == '2') {
      subject = 'Vous';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
