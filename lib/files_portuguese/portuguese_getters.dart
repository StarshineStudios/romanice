//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';

import '../core/constants.dart';
import 'word_data/portuguese_adjectives.dart';
import 'portuguese_classes.dart';
import 'word_data/portuguese_nouns.dart';
import 'word_data/portuguese_verbs.dart';
import '../core/lengtheners.dart';

List<Number> portugueseNumbers = [Number.s, Number.p];
//i is used to represent neuter like words that change gender
List<Gender> portugueseGenders = [
  Gender.m,
  Gender.f,
];
List<Mood> portugueseMoods = [Mood.ind, Mood.sub, Mood.imp];
List<Tense> portugueseTenses = [
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,
  Tense.pluperfectRomance,
  Tense.conditionalRomance, //cond is tense in portuguese

  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
  Tense.conditionalPerfectRomanceCompound,
];
List<Person> portuguesePersons = [Person.first, Person.second, Person.third];

Question getPortugueseVerbQuestion() {
  PortugueseVerb randomVerb = portugueseVerbs.getRandom();
  Mood randomMood = portugueseMoods.getRandom();
  Tense randomTense = portugueseTenses.getRandom();
  Number randomNumber = portugueseNumbers.getRandom();
  Person randomPerson = portuguesePersons.getRandom();
  Gender randomGender = portugueseGenders.getRandom();

  void initConjugation() {
    randomMood = portugueseMoods.getRandom();
    randomTense = portugueseTenses.getRandom();
    randomNumber = portugueseNumbers.getRandom();
    randomPerson = portuguesePersons.getRandom();
    randomGender = portugueseGenders.getRandom();
  }

  while (randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE') {
    initConjugation();
    // print('$randomMood, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }

  String lemma = randomVerb.infinitive;

  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    if (randomMood == Mood.imp) lengthenPerson[randomPerson] ?? 'DNE',
  ];
  String prompt = getPortugueseSubject(randomMood, randomNumber, randomPerson, randomGender);

  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
  // return Question(lemma: 'lemma', demands: ['demands'], prompt: 'prompt', answer: 'answer');
}

Question getPortugueseNounQuestion() {
  PortugueseNoun randomNoun = portugueseNouns.getRandom();

  Number randomNumber = portugueseNumbers.getRandom();

  void initDeclension() {
    randomNumber = portugueseNumbers.getRandom();
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomNumber, DNE');
  }

  String lemma = randomNumber == Number.s ? randomNoun.declineNoun(Number.p) : randomNoun.declineNoun(Number.s);

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
  Number randomNumber = portugueseNumbers.getRandom();

  void initDeclension() {
    randomNumber = portugueseNumbers.getRandom();
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomNumber, DNE');
  }

  PortugueseAdjective randomAdjective = portugueseAdjectives[random.nextInt(portugueseAdjectives.length)];

  String lemma = randomAdjective.declineAdjective(Number.s, Gender.m);

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

String getPortugueseSubject(Mood mood, Number number, Person person, Gender gender) {
  //In order to get them
  String getThirdPersonSubject(Number number, Gender gender) {
    Map<Number, Map<Gender, List<String>>> subjects = {
      Number.s: {
        Gender.m: [' João', ' Miguel', ' André', ' Diogo', ' Pedro', ' Ele'],
        Gender.f: [' Ana', ' Sofia', ' Carla', ' Inês', ' Laura', ' Ela'],
      },
      Number.p: {
        Gender.m: [' Senhores', ' Amigos', ' João e Miguel', ' André e Carlos', ' Diogo e Pedro', ' Amigos e Amigas', ' João, Ana, e Carla', ' Eles'],
        Gender.f: [' Senhoras', ' Amigas', ' Inês e Laura', ' Carla e Sofia', ' Elas'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom.getRandom();
  }

  String subject = '';

  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'TEMP Egō';
    } else if (person == Person.second) {
      subject = 'TEMP Tū';
    } else if (person == Person.third) {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'TEMP Nōs';
    } else if (person == Person.second) {
      subject = 'TEMP Vōs';
    } else if (person == Person.third) {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
