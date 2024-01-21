//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_italian/italian_constants.dart';

import '../core/constants.dart';
import 'word_data/italian_adjectives.dart';
import 'italian_classes.dart';
import 'word_data/italian_nouns.dart';
import 'word_data/italian_verbs.dart';
import '../core/lengtheners.dart';

Question getItalianVerbQuestion() {
  //Pick a random verb
  ItalianVerb randomVerb = italianVerbs.getRandom();
  //Pick a random coordinate. Note this does not include gender
  ItalianCoordinate randomItalianCoordinate = randomVerb.conjugationStructure.getRandomCoordinate();
  //Pick a random gender
  Gender randomGender = italianGenders.getRandom();

  //Begin to fill out the parameters for the Question
  String lemma = randomVerb.infinitive;
  List<String> demands = [
    lengthenTense[randomItalianCoordinate.tense]!,
    lengthenMood[randomItalianCoordinate.mood]!,
    //if it is imperative, person matters.
    if (randomItalianCoordinate.mood == Mood.imp) lengthenPerson[randomItalianCoordinate.person]!,
    //if it is complex, it matters. This may be redundant with some prompts, but i will keep it to account for personal pronouns
    if (italianCompoundTenses.contains(randomItalianCoordinate.tense)) lengthenGender[randomGender]!,
  ];
  String prompt = getItalianSubject(randomItalianCoordinate.mood, randomItalianCoordinate.number, randomItalianCoordinate.person, randomGender);
  //what is the answer part
  String blank = randomVerb.conjugateVerb(
    randomItalianCoordinate.mood,
    randomItalianCoordinate.tense,
    randomItalianCoordinate.number,
    randomItalianCoordinate.person,
    //gender: optional but very important.
    g: randomGender,
  )!;

  //create the final answer with the blank filled in.
  String answer = prompt.replaceAll('_____', blank);
  //return the question
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getItalianNounQuestion() {
  final random = Random();
  //PICK RANDOM NOUN
  ItalianNoun randomNoun = italianNouns[random.nextInt(italianNouns.length)];
  //PICK RANDOM DECLENSION
  Number randomNumber = italianNumbers[random.nextInt(italianNumbers.length)];
  void initDeclension() {
    randomNumber = italianNumbers[random.nextInt(italianNumbers.length)];
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
  Number randomNumber = italianNumbers[random.nextInt(italianNumbers.length)];
  void initDeclension() {
    randomNumber = italianNumbers[random.nextInt(italianNumbers.length)];
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
