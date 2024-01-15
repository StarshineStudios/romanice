//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';

import '../core/constants.dart';
import 'word_data/italian_adjectives.dart';
import 'italian_classes.dart';
import 'word_data/italian_nouns.dart';
import 'word_data/italian_verbs.dart';
import '../core/lengtheners.dart';

List<Number> italianShortNumbers = [Number.s, Number.p];
//i is used to represent neuter like words that change gender
//I do not currently use this.
List<Gender> italianShortFullGenders = [Gender.m, Gender.f, Gender.i];
List<Gender> italianShortGenders = [Gender.m, Gender.f];

List<Mood> italianShortMoods = [Mood.ind, Mood.sub, Mood.con, Mood.imp];
List<Person> italianShortPersons = [Person.first, Person.second, Person.third];
List<Tense> italianShortTenses = [
  //non-compound forms
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,

  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
];

Question getItalianVerbQuestion() {
  //PICK RANDOM VERB
  ItalianVerb randomVerb = italianVerbs.getRandom();

  //PICK RANDOM CONJUGATION
  Mood randomMood = italianShortMoods.getRandom();
  Tense randomTense = italianShortTenses.getRandom();
  Number randomNumber = italianShortNumbers.getRandom();
  Person randomPerson = italianShortPersons.getRandom();
  //not include irregular because that is wrong
  Gender randomGender = italianShortGenders.getRandom();
  void initConjugation() {
    randomMood = italianShortMoods.getRandom();
    randomTense = italianShortTenses.getRandom();
    randomNumber = italianShortNumbers.getRandom();
    randomPerson = italianShortPersons.getRandom();
    randomGender = italianShortGenders.getRandom();
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
    if (randomMood == Mood.imp) lengthenPerson[randomPerson] ?? 'DNE',
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
  Number randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  void initDeclension() {
    randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
  }

  //GENERATE QUESTION
  String lemma = randomNumber == Number.s ? randomNoun.declineNoun(Number.p) : randomNoun.declineNoun(Number.s);
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
  Number randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  void initDeclension() {
    randomNumber = italianShortNumbers[random.nextInt(italianShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomNumber, DNE');
  }
  //GET RANDOM ADJECTIVE
  ItalianAdjective randomAdjective = italianAdjectives[random.nextInt(italianAdjectives.length)];

  //GENERATE QUESTION
  String lemma = randomAdjective.declineAdjective(Number.s, Gender.m);
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

String getItalianSubject(Mood mood, Number number, Person person, Gender gender) {
  final random = Random();

  String getThirdPersonSubject(Number number, Gender gender) {
    Map<Number, Map<Gender, List<String>>> subjects = {
      Number.s: {
        Gender.m: ['Luca', 'Matteo', 'Alessandro', 'Marco', 'Giovanni', 'Francesco', 'Andrea', 'Gabriele', 'Il professore', 'Il vicino', 'Lui'],
        Gender.f: ['Sofia', 'Giulia', 'Martina', 'Chiara', 'Laura', 'Alessia', 'Francesca', 'Serena', 'La professoressa', 'La vicina', 'Lei'],
      },
      Number.p: {
        Gender.m: [
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
          'Loro'
        ],
        Gender.f: ['Sofia e Giulia', 'Martina e Chiara', 'Laura e Alessia', 'Francesca e Serena', 'Le professoresse', 'Le vicine', 'Loro'],
      },
    };
    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];
    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  String subject = '';

  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'Io';
    } else if (person == Person.second) {
      subject = 'Tu';
    } else if (person == Person.third) {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Noi';
    } else if (person == Person.second) {
      subject = 'Voi';
    } else if (person == Person.third) {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
