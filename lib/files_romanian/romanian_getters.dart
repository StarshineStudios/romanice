//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';

import '../core/constants.dart';
import 'word_data/romanian_adjectives.dart';
import 'romanian_classes.dart';
import 'word_data/romanian_nouns.dart';
import 'word_data/romanian_verbs.dart';
import '../core/lengtheners.dart';

List<Number> romanianShortNumbers = [Number.s, Number.p];
//neuter is similar to romanian, but it is not said to change, simply be neuter.
List<Gender> romanianShortGenders = [Gender.m, Gender.f, Gender.n];
List<Case> romanianShortCases = [Case.nomacc, Case.gendat, Case.voc];
List<Mood> romanianShortMoods = [Mood.ind, Mood.sub, Mood.optcon, Mood.pre, Mood.imp];
List<Person> romanianShortPersons = [Person.first, Person.second, Person.third];

List<Tense> romanianShortTenses = [
  //simple tenses
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.perfectRomance,
  Tense.pluperfectRomance,

  //compound tenses
  Tense.perfectRomanceCompound, //perfect compus
  Tense.futureRomanianCompoundVrea,
  Tense.futurePerfectRomanceCompound, // Tense.futp c vrea: , //I can just use future perfect c foTense.this

  Tense.futureRomanianCompoundO, //o is a form of avea
  Tense.futureRomanianCompoundAvea, //rare, but I will include it, it is basis of futpast
  Tense.futurePastRomanianCompound,
];

Question getRomanianVerbQuestion() {
  //GET RANDOM VERB
  RomanianVerb randomVerb = romanianVerbs.getRandom();
  //GET RANDOM VALID CONJUGATION
  Mood randomMood = romanianShortMoods.getRandom();
  Tense randomTense = romanianShortTenses.getRandom();
  Number randomNumber = romanianShortNumbers.getRandom();
  Person randomPerson = romanianShortPersons.getRandom();
  Gender randomGender = romanianShortGenders.getRandom();
  void initConjugation() {
    randomMood = romanianShortMoods.getRandom();
    randomTense = romanianShortTenses.getRandom();
    randomNumber = romanianShortNumbers.getRandom();
    randomPerson = romanianShortPersons.getRandom();
    randomGender = romanianShortGenders.getRandom();
  }

  while (randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson) == 'DNE') {
    initConjugation();
    // print('$randomMood, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }
  //GENERATE QUESTION
  String lemma = randomVerb.infinitive;
  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    if (randomMood == 'imp') lengthenPerson[randomPerson] ?? 'DNE',
  ];
  String prompt = getRomanianSubject(randomMood, randomNumber, randomPerson, randomGender);
  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson);
  String answer = prompt.replaceAll('_____', blank);
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getRomanianNounQuestion() {
  final random = Random();
  //GET RANDOM NOUN
  RomanianNoun randomNoun = romanianNouns[random.nextInt(romanianNouns.length)];
  //GET RANDOM VALID DECLENSION
  Case randomCase = romanianShortCases.getRandom();
  Number randomNumber = romanianShortNumbers.getRandom();
  void initDeclension() {
    randomCase = romanianShortCases.getRandom();
    randomNumber = romanianShortNumbers.getRandom();
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomCase, $randomNumber, DNE');
  }

  //GENERATE QUESTION
  String lemma = randomNoun.declension[Case.nomacc]?[Number.s] ?? 'DNE';
  List<String> demands = [
    lengthenCase[randomCase] ?? 'DNE',
    lengthenNumber[randomNumber] ?? 'DNE',
  ];
  String prompt = '_____';
  String blank = randomNoun.declineNoun(randomCase, randomNumber);
  String answer = prompt.replaceAll('_____', blank);
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getRomanianAdjectiveNounQuestion() {
  final random = Random();
  //GET RANDOM NOUN
  RomanianNoun randomNoun = romanianNouns.getRandom();
  Case randomCase = romanianShortCases.getRandom();
  Number randomNumber = romanianShortNumbers.getRandom();
  void initDeclension() {
    randomCase = romanianShortCases.getRandom();
    randomNumber = romanianShortNumbers.getRandom();
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomCase, $randomNumber, DNE');
  }
  //GET RANDOM ADJECTIVE
  RomanianAdjective randomAdjective = romanianAdjectives[random.nextInt(romanianAdjectives.length)];
  String lemma = randomAdjective.declineAdjective(Case.nomacc, Number.s, Gender.n);

  //GENERATE QUESTION
  List<String> demands = [
    lengthenCase[randomCase] ?? 'DNE',
    lengthenNumber[randomNumber] ?? 'DNE',
    lengthenGender[randomNoun.gender] ?? 'DNE', //disable in hard mode? maybe
  ];
  String declinedNoun = randomNoun.declineNoun(randomCase, randomNumber);
  String prompt = '$declinedNoun _____';
  String blank = randomAdjective.declineAdjective(randomCase, randomNumber, randomNoun.gender);
  String answer = prompt.replaceAll('_____', blank);
  if (answer == 'DNE') {
    return getRomanianAdjectiveNounQuestion();
  }
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
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
    } else if (person == '3') {
      return 'DNE'; //imperatives cannot be third person
    } else {
      return 'DNE'; //imperatives cannot be first person
    }
  } else {
    //wait neuter cant be first person
    String subject = '';
    if (number == Number.s) {
      if (person == '1') {
        subject = 'Eu';
      } else if (person == Person.second) {
        subject = 'Tu';
      } else if (person == '3') {
        subject = getThirdPersonSubject(number, gender);
      }
    } else if (number == Number.p) {
      if (person == '1') {
        subject = 'Noi';
      } else if (person == Person.second) {
        subject = 'Voi';
      } else if (person == '3') {
        subject = getThirdPersonSubject(number, gender);
      }
    }
    return '$subject _____';
  }
}
