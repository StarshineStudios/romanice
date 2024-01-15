//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';

import '../core/constants.dart';
import 'word_data/spanish_adjectives.dart';
import 'spanish_classes.dart';
import 'word_data/spanish_nouns.dart';
import 'word_data/spanish_verbs.dart';
import '../core/lengtheners.dart';

List<Number> spanishNumbers = [Number.s, Number.p];
List<Gender> spanishGenders = [Gender.m, Gender.f];
List<Mood> spanishMoods = [Mood.ind, Mood.sub, Mood.imp];
List<Tense> spanishTenses = [
  Tense.presentRomance,
  Tense.imperfectRomance,

  Tense.imperfectSpanishSe,
  Tense.imperfectSpanishRa,
  Tense.futureRomance,
  Tense.perfectRomance,
  Tense.conditionalRomance, //cond is tense in spanish

  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
  Tense.conditionalPerfectRomanceCompound,
];
List<Person> spanishPersons = [Person.first, Person.second, Person.third];

Question getSpanishVerbQuestion() {
  SpanishVerb randomVerb = spanishVerbs.getRandom();
  Mood randomMood = spanishMoods.getRandom();
  Tense randomTense = spanishTenses.getRandom();
  Number randomNumber = spanishNumbers.getRandom();
  Person randomPerson = spanishPersons.getRandom();
  Gender randomGender = spanishGenders.getRandom();

  void initConjugation() {
    randomMood = spanishMoods.getRandom();
    randomTense = spanishTenses.getRandom();
    randomNumber = spanishNumbers.getRandom();
    randomPerson = spanishPersons.getRandom();
    randomGender = spanishGenders.getRandom();
  }

  while (randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE') {
    initConjugation();
    // print('$randomMood, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
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
  SpanishNoun randomNoun = spanishNouns.getRandom();

  Number randomNumber = spanishNumbers.getRandom();

  void initDeclension() {
    randomNumber = spanishNumbers.getRandom();
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
Question getSpanishAdjectiveNounQuestion() {
  final random = Random();
  SpanishNoun randomNoun = spanishNouns[random.nextInt(spanishNouns.length)];
  Number randomNumber = spanishNumbers[random.nextInt(spanishNumbers.length)];

  void initDeclension() {
    randomNumber = spanishNumbers[random.nextInt(spanishNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomNumber, DNE');
  }

  SpanishAdjective randomAdjective = spanishAdjectives[random.nextInt(spanishAdjectives.length)];

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

String getSpanishSubject(Mood mood, Number number, Person person, Gender gender) {
  final random = Random();

  //In order to get them
  String getThirdPersonSubject(Number number, Gender gender) {
    Map<Number, Map<Gender, List<String>>> subjects = {
      Number.s: {
        // singular
        Gender.m: [
          // masculine
          'Carlos', 'José', 'Miguel', 'Juan', 'Luis', 'Pedro', 'Jorge', 'Fernando', 'Pablo', 'Alejandro', 'él'
        ],
        Gender.f: [
          // feminine
          'María', 'Ana', 'Carmen', 'Laura', 'Isabel', 'Teresa', 'Sofía', 'Patricia', 'Lucía', 'Elena', 'ella'
        ],
      },
      Number.p: {
        // plural
        Gender.m: [
          // masculine (and mixed groups)
          'Carlos y José',
          'Miguel y Juan',
          'Luis y Pedro',
          'Jorge y Fernando',
          'Pablo y Alejandro',
          'Carlos y María',
          'José y Ana',
          'Miguel y Carmen',
          'Juan y Laura',
          'Luis y Isabel',
          'ellos'
        ],
        Gender.f: [
          // feminine
          'María y Ana',
          'Carmen y Laura',
          'Isabel y Teresa',
          'Sofía y Patricia',
          'Lucía y Elena',
          'ellas'
        ],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  String subject = '';

  if (number == Number.s) {
    if (person == '1') {
      subject = 'Yo';
    } else if (person == '2') {
      subject = 'Tu';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == Number.p) {
    if (person == '1') {
      subject = 'Nosotros';
    } else if (person == '2') {
      subject = 'Vosotros';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
