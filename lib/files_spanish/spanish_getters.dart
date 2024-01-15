//These can apply to a lot of languages
import 'dart:math';

import '../core/constants.dart';
import 'word_data/spanish_adjectives.dart';
import 'spanish_classes.dart';
import 'word_data/spanish_nouns.dart';
import 'word_data/spanish_verbs.dart';
import '../core/lengtheners.dart';

List<String> spanishShortNumbers = ['s', 'p'];
//i is used to represent neuter like words that change gender
List<String> spanishShortGenders = ['m', 'f'];
List<String> spanishShortMoods = ['ind', 'sub', 'imp'];
List<String> spanishShortTenses = [
  'r pres',
  'r imp',

  'r imp se',
  'r imp ra',
  'r fut',
  'r perf',
  'r cond', //cond is tense in spanish

  //compound forms
  'r perf c',
  'r plup c',
  'r futp c',
  'r ante c',
  'r condp c',
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
        // singular
        'm': [
          // masculine
          'Carlos', 'José', 'Miguel', 'Juan', 'Luis', 'Pedro', 'Jorge', 'Fernando', 'Pablo', 'Alejandro', 'él'
        ],
        'f': [
          // feminine
          'María', 'Ana', 'Carmen', 'Laura', 'Isabel', 'Teresa', 'Sofía', 'Patricia', 'Lucía', 'Elena', 'ella'
        ],
      },
      'p': {
        // plural
        'm': [
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
        'f': [
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

  if (number == 's') {
    if (person == '1') {
      subject = 'Yo';
    } else if (person == '2') {
      subject = 'Tu';
    } else if (person == '3') {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == 'p') {
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
