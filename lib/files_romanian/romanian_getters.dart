//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_romanian/romanian_constants.dart';

import '../core/constants.dart';
import 'word_data/romanian_adjectives.dart';
import 'romanian_classes.dart';
import 'word_data/romanian_nouns.dart';
import 'word_data/romanian_verbs.dart';
import '../core/lengtheners.dart';

Question getRomanianVerbQuestion() {
  //Pick a random verb
  RomanianVerb randomVerb = romanianVerbs.getRandom();
  //Pick a random coordinate. Note this does not include gender
  RomanianCoordinate randomRomanianCoordinate = randomVerb.conjugationStructure.getRandomCoordinate();
  //Pick a random gender
  Gender randomGender = romanianGenders.getRandom();

  //Begin to fill out the parameters for the Question
  String lemma = randomVerb.infinitive;
  List<String> demands = [
    lengthenTense[randomRomanianCoordinate.tense]!,
    lengthenMood[randomRomanianCoordinate.mood]!,
    //if it is imperative, person matters.
    if (randomRomanianCoordinate.mood == Mood.imp) lengthenPerson[randomRomanianCoordinate.person]!,
  ];
  String prompt = getRomanianSubject(randomRomanianCoordinate.mood, randomRomanianCoordinate.number, randomRomanianCoordinate.person, randomGender);
  //what is the answer part
  // print(
  //     ' ${randomVerb.infinitive} ${randomRomanianCoordinate.mood},${randomRomanianCoordinate.tense},${randomRomanianCoordinate.number},${randomRomanianCoordinate.person},');
  String blank = randomVerb.conjugateVerb(
    randomRomanianCoordinate.mood,
    randomRomanianCoordinate.tense,
    randomRomanianCoordinate.number,
    randomRomanianCoordinate.person,
  )!;

  //create the final answer with the blank filled in.
  String answer = prompt.replaceAll('_____', blank);
  //return the question
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getRomanianNounQuestion() {
  //GET RANDOM NOUN
  RomanianNoun randomNoun = romanianNouns.getRandom();
  //GET RANDOM VALID DECLENSION
  Case randomCase = randomNoun.declension.keys.toList().getRandom();
  Number randomNumber = randomNoun.declension[randomCase]!.keys.toList().getRandom();

  //ACCOUNT FOR THE FACT THAT IT MAY BE PLURAL ONLY
  String? lemma = randomNoun.declension[Case.nomacc]?[Number.s] ?? randomNoun.declension[Case.nomacc]?[Number.p];

  //PREPARE QUESTION
  List<String> demands = [
    lengthenCase[randomCase]!,
    lengthenNumber[randomNumber]!,
  ];
  String prompt = '_____';
  String? blank = randomNoun.declineNoun(randomCase, randomNumber);
  String answer = prompt.replaceAll('_____', blank!);
  return Question(lemma: lemma!, demands: demands, prompt: prompt, answer: answer);
}

Question getRomanianAdjectiveNounQuestion() {
  //GET RANDOM NOUN
  RomanianNoun randomNoun = romanianNouns.getRandom();
  //GET RANDOM VALID DECLENSION
  // Case randomCase = randomNoun.declension.keys.toList().getRandom();
  //I do not want locative
  Case randomCase = romanianCases.getRandom();
  Number randomNumber = randomNoun.declension[randomCase]!.keys.toList().getRandom();

  RomanianAdjective randomAdjective = romanianAdjectives.getRandom();

  String? lemma = randomAdjective.declineAdjective(Case.nomacc, Number.s, Gender.n);

  List<String> demands = [
    lengthenCase[randomCase]!,
    lengthenNumber[randomNumber]!,
    lengthenGender[randomNoun.gender]!, //disable in hard mode? maybe
  ];

  String? declinedNoun = randomNoun.declineNoun(randomCase, randomNumber);
  String prompt = '$declinedNoun _____';

  String? blank = randomAdjective.declineAdjective(randomCase, randomNumber, randomNoun.gender);
  String answer = prompt.replaceAll('_____', blank!);

  return Question(lemma: lemma!, demands: demands, prompt: prompt, answer: answer);
}

Question getRomanianDeclineQuestion() {
  final random = Random();
  bool isOutcomeA = random.nextDouble() < 0.5;
  return isOutcomeA ? getRomanianNounQuestion() : getRomanianAdjectiveNounQuestion();
}

String getRomanianSubject(Mood mood, Number number, Person person, Gender gender) {
  final random = Random();

  String getThirdPersonSubject(Number number, Gender gender) {
    Map<Number, Map<Gender, List<String>>> subjects = {
      Number.s: {
        // singular
        Gender.m: [
          // masculine
          'Andrei', 'Mihai', 'Ion', 'Alexandru', 'Florin', 'George', 'Nicolae', 'Adrian', 'Bogdan', 'Cătălin', 'el'
        ],
        Gender.f: [
          // feminine
          'Maria', 'Ana', 'Ioana', 'Elena', 'Andreea', 'Sofia', 'Gabriela', 'Carmen', 'Laura', 'Raluca', 'ea'
        ],
        Gender.n: [
          // neuter
          'Telefon', 'Calculator', 'Birou', 'Autoturism', 'Document', 'Hotel', 'Centru', 'Univers', 'Cuvânt', 'el'
        ],
      },
      Number.p: {
        // plural
        Gender.m: [
          // masculine
          'Andrei și Mihai',
          'Ion și Alexandru',
          'Florin și George',
          'Nicolae și Adrian',
          'Bogdan și Cătălin',
          'ei'
        ],
        Gender.f: [
          // feminine
          'Maria și Ana',
          'Ioana și Elena',
          'Andreea și Sofia',
          'Gabriela și Carmen',
          'Laura și Raluca',
          'ele'
        ],
        Gender.n: [
          // neuter
          'Telefoane',
          'Calculatoare',
          'Birouri',
          'Autoturisme',
          'Documente',
          'Hotele',
          'Centre',
          'Universuri',
          'Cuvinte',
          'ele'
        ],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];
    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  //if SECOND PERSON IMPERATIVE, we use the VOCATIVE or PRONOUNS
  //neuter second person is not allowed because it is rare
  if (mood == Mood.imp) {
    if (person == Person.second) {
      Map<Number, Map<Gender, List<String>>> vocativeSubjects = {
        Number.s: {
          // singular
          Gender.m: [
            // masculine
            'Andrei', // Original: Andrei
            'Mihai', // Original: Mihai
            'Ioane', // Original: Ion
            'Alexandre', // Original: Alexandru
            'Florine', // Original: Florin
            'George', // Original: George
            'Nicule', // Original: Nicolae
            'Adriane', // Original: Adrian
            'Bogdane', // Original: Bogdan
            'Cătăline', // Original: Cătălin
            'Tu' // Vocative for 'el'
          ],
          Gender.f: [
            // feminine
            'Mario', // Original: Maria
            'Ano', // Original: Ana
            'Ioano', // Original: Ioana
            'Eleno', // Original: Elena
            'Andreeo', // Original: Andreea
            'Sofio', // Original: Sofia
            'Gabrielo', // Original: Gabriela
            'Carmeno', // Original: Carmen
            'Lauro', // Original: Laura
            'Raluco', // Original: Raluca
            'Tu' // Vocative for 'ea'
          ],
          Gender.n: [
            // neuter
            // Note: In Romanian, neuter nouns generally don't have a distinct vocative form, so the nominative form is used.
            'Telefon', // Original: Telefon
            'Calculator', // Original: Calculator
            'Birou', // Original: Birou
            'Autoturism', // Original: Autoturism
            'Document', // Original: Document
            'Hotel', // Original: Hotel
            'Centru', // Original: Centru
            'Univers', // Original: Univers
            'Cuvânt', // Original: Cuvânt
            'Tu' // Vocative for 'el' (used for neuter as well)
          ],
        },
        Number.p: {
          // plural
          Gender.m: [
            // masculine
            'Andrei și Mihai', // Original: Andrei și Mihai
            'Ion și Alexandru', // Original: Ion și Alexandru
            'Florin și George', // Original: Florin și George
            'Nicolae și Adrian', // Original: Nicolae și Adrian
            'Bogdan și Cătălin', // Original: Bogdan și Cătălin
            'Voi' // Vocative for 'ei'
          ],
          Gender.f: [
            // feminine
            'Maria și Ana', // Original: Maria și Ana
            'Ioana și Elena', // Original: Ioana și Elena
            'Andreea și Sofia', // Original: Andreea și Sofia
            'Gabriela și Carmen', // Original: Gabriela și Carmen
            'Laura și Raluca', // Original: Laura și Raluca
            'Voi' // Vocative for 'ele'
          ],
          Gender.n: [
            // neuter
            // Note: Same as singular, neuter nouns in plural don't have a distinct vocative form.
            'Telefoane', // Original: Telefoane
            'Calculatoare', // Original: Calculatoare
            'Birouri', // Original: Birouri
            'Autoturisme', // Original: Autoturisme
            'Documente', // Original: Documente
            'Hotele', // Original: Hotele
            'Centre', // Original: Centre
            'Universuri', // Original: Universuri
            'Cuvinte', // Original: Cuvinte
            'Voi' // Vocative for 'ele' (used for neuter as well)
          ],
        },
      };

      List<String> listToChooseFrom = vocativeSubjects[number]?[gender] ?? ['DNyE'];
      bool spaceBefore = random.nextBool() ? true : false;
      String vocative = listToChooseFrom[random.nextInt(listToChooseFrom.length)];
      return spaceBefore ? '_____, $vocative!' : '$vocative, _____!';
    } else if (person == Person.third) {
      return 'DNE'; //imperatives cannot be third person
    } else {
      return 'DNE'; //imperatives cannot be first person
    }
  } else {
    //wait neuter cant be first person
    String subject = '';
    if (number == Number.s) {
      if (person == Person.first) {
        subject = 'Eu';
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
}
