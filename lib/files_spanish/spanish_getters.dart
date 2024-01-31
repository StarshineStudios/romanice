//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_spanish/spanish_classes.dart';
import 'package:colorguesser/files_spanish/spanish_constants.dart';
import 'package:colorguesser/files_spanish/word_data/spanish_verbs.dart';

import '../core/constants.dart';
import 'word_data/spanish_adjectives.dart';
import 'word_data/spanish_nouns.dart';
import '../core/lengtheners.dart';

Question getSpanishVerbQuestion() {
  //Pick a random verb
  SpanishVerb randomVerb = spanishVerbs.getRandom();
  //Pick a random coordinate. Note this does not include gender
  SpanishCoordinate randomSpanishCoordinate = randomVerb.conjugationStructure.getRandomCoordinate();

  //Pick a random gender
  Gender randomGender = spanishGenders.getRandom();

  //Begin to fill out the parameters for the Question
  String lemma = randomVerb.infinitive;
  List<String> demands = [
    lengthenTense[randomSpanishCoordinate.tense]!,
    lengthenMood[randomSpanishCoordinate.mood]!,
    //if it is imperative, person matters.
    if (randomSpanishCoordinate.mood == Mood.imp) lengthenPerson[randomSpanishCoordinate.person]!,
  ];
  String prompt = getSpanishSubject(randomSpanishCoordinate.mood, randomSpanishCoordinate.number, randomSpanishCoordinate.person, randomGender);
  //what is the answer part
  String blank = randomVerb.conjugateVerb(
    randomSpanishCoordinate.mood,
    randomSpanishCoordinate.tense,
    randomSpanishCoordinate.number,
    randomSpanishCoordinate.person,
    //gender: optional but very important.
    g: randomGender,
  )!;

  //create the final answer with the blank filled in.
  String answer = prompt.replaceAll('_____', blank);
  //return the question
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

//match adjective to noun
Question getSpanishAdjectiveNounQuestion() {
  //Get a random number.
  Number randomNumber = spanishNumbers.getRandom();
  //Get the random words
  SpanishNoun randomNoun = spanishNouns.getRandom();
  SpanishAdjective randomAdjective = spanishAdjectives.getRandom();

  //get the lemma form of singular masculine
  String lemma = randomAdjective.declineAdjective(Number.s, Gender.m)!;

  List<String> demands = [
    lengthenNumber[randomNumber]!,
    lengthenGender[randomNoun.gender]!, //disable in hard mode? maybe
  ];

  String declinedNoun = randomNoun.declineNoun(randomNumber)!;

  String prompt = '$declinedNoun _____';
  String blank = randomAdjective.declineAdjective(randomNumber, randomNoun.gender)!;
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getSpanishDeclineQuestion() {
  return getSpanishAdjectiveNounQuestion();
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
          'Carlos', 'José', 'Miguel', 'Juan', 'Luis', 'Pedro', 'Jorge', 'Fernando', 'Pablo', 'Alejandro', 'él',
          'usted'
        ],
        Gender.f: [
          // feminine
          'María', 'Ana', 'Carmen', 'Laura', 'Isabel', 'Teresa', 'Sofía', 'Patricia', 'Lucía', 'Elena', 'ella',
          'usted'
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
          'ellos',
          'ustedes'
        ],
        Gender.f: [
          // feminine
          'María y Ana',
          'Carmen y Laura',
          'Isabel y Teresa',
          'Sofía y Patricia',
          'Lucía y Elena',
          'ellas',
          'ustedes'
        ],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  String subject = '';

  if (number == Number.s) {
    if (person == Person.first) {
      subject = 'Yo';
    } else if (person == Person.second) {
      subject = 'Tu';
    } else if (person == Person.third) {
      subject = getThirdPersonSubject(number, gender);
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Nosotros';
    } else if (person == Person.second) {
      subject = 'Vosotros';
    } else if (person == Person.third) {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
