//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';

import '../core/constants.dart';
import 'word_data/latin_adjectives.dart';
import 'latin_classes.dart';
import 'word_data/latin_nouns.dart';
import 'word_data/latin_verbs.dart';
import '../core/lengtheners.dart';

List<Number> latinShortNumbers = [Number.s, Number.p];
List<Gender> latinShortGenders = [Gender.m, Gender.f, Gender.n];
List<Case> latinShortCases = [
  Case.nom,
  Case.acc,
  Case.gen,
  Case.dat,
  Case.abl,
  Case.voc,
];
List<Case> latinShortFullCases = [
  Case.nom,
  Case.acc,
  Case.gen,
  Case.dat,
  Case.abl,
  Case.voc,
  Case.loc,
];
List<Mood> latinShortMoods = [
  Mood.ind,
  Mood.sub,
  Mood.imp,
];
List<Voice> latinShortVoices = [
  Voice.act,
  Voice.pas,
];
List<Tense> latinShortTenses = [
  Tense.present,
  Tense.imperfect,
  Tense.future,
  Tense.perfect,
  Tense.pluperfect,
  Tense.futurePerfect,
];
List<Person> latinShortPersons = [Person.first, Person.second, Person.third];

Question getLatinVerbQuestion() {
  //GET RANDOM VERB
  LatinVerb randomVerb = latinVerbs.getRandom();
  //GET RANDOM CONJUGATION
  Mood randomMood = latinShortMoods.getRandom();
  Voice randomVoice = latinShortVoices.getRandom();
  Tense randomTense = latinShortTenses.getRandom();
  Number randomNumber = latinShortNumbers.getRandom();
  Person randomPerson = latinShortPersons.getRandom();
  Gender randomGender = latinShortGenders.getRandom();
  void initConjugation() {
    randomMood = latinShortMoods.getRandom();
    randomVoice = latinShortVoices.getRandom();
    randomTense = latinShortTenses.getRandom();
    randomNumber = latinShortNumbers.getRandom();
    randomPerson = latinShortPersons.getRandom();
    randomGender = latinShortGenders.getRandom();
  }

  //I will not allow second person neuter because that is very rare
  while (randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE' ||
      (randomGender == Gender.n && randomPerson == Person.second)) {
    initConjugation();
    // print('$randomMood, $randomVoice, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }

  String lemma = randomVerb.infinitives[Tense.present]?[Voice.act] ?? 'DNE';
  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    //if it is imperative, you need to know the person, as the subject/vocative forms are often identical and can be confusing
    if (randomMood == Mood.imp) lengthenPerson[randomPerson] ?? 'DNE',
    lengthenVoice[randomVoice] ?? 'DNE',
  ];

  String prompt = getLatinSubject(randomMood, randomNumber, randomPerson, randomGender);
  String blank = randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender);
  String answer = prompt.replaceAll('_____', blank);
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getLatinNounQuestion() {
  final random = Random();
  //GET RANDOM NOUN
  LatinNoun randomNoun = latinNouns[random.nextInt(latinNouns.length)];
  //GET RANDOM VALID DECLENSION
  Case randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
  Number randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  void initDeclension() {
    randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
    randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomCase, $randomNumber, DNE');
  }

  //ACCOUNT FOR THE FACT THAT IT MAY BE PLURAL ONLY
  String lemma = randomNoun.declension[Case.nom]?[Number.s] ?? randomNoun.declension[Case.nom]?[Number.p] ?? 'TERRIBLE ERROR';

  //PREPARE QUESTION
  List<String> demands = [
    lengthenCase[randomCase] ?? 'DNE',
    lengthenNumber[randomNumber] ?? 'DNE',
  ];
  String prompt = '_____';
  String blank = randomNoun.declineNoun(randomCase, randomNumber);
  String answer = prompt.replaceAll('_____', blank);
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

//match adjective to noun
Question getLatinAdjectiveNounQuestion() {
  final random = Random();
  LatinNoun randomNoun = latinNouns[random.nextInt(latinNouns.length)];
  Case randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
  Number randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];

  void initDeclension() {
    randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
    randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    // print('$randomCase, $randomNumber, DNE');
  }

  LatinAdjective randomAdjective = latinAdjectives[random.nextInt(latinAdjectives.length)];

  String lemma = randomAdjective.declineAdjective(Case.nom, Number.s, Gender.n);

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
    return getLatinAdjectiveNounQuestion();
  }

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getLatinDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0.5;

  return isOutcomeA ? getLatinNounQuestion() : getLatinAdjectiveNounQuestion();
}

String getLatinSubject(Mood mood, Number number, Person person, Gender gender) {
  final random = Random();

  //In order to get them
  String getThirdPersonSubject(Number number, Gender gender) {
    Map<Number, Map<Gender, List<String>>> subjects = {
      Number.s: {
        Gender.m: ['Mārcus', 'Lūcius', 'Gāius', 'Iūlius', 'Quīntus', 'Titus', 'Aulus', 'Sextus', 'Magister', 'Vīcīnus', 'is'],
        Gender.f: ['Iūlia', 'Lūcia', 'Cornēlia', 'Aemilia', 'Claudia', 'Antōnia', 'Flāvia', 'Valeria', 'Magistra', 'Vīcīna', 'ea'],
        Gender.n: ['Nōmen', 'Animal', 'Tempus', 'Mare', 'Bellum', 'Caput', 'Corpus', 'Opus', 'Verbum', 'id'],
      },
      Number.p: {
        Gender.m: [
          'Mārcus et Lūcius',
          'Gāius et Iūlius',
          'Quīntus et Titus',
          'Aulus et Sextus',
          'Mārcus et Iūlia',
          'Lūcius et Cornēlia',
          'Gāius et Aemilia',
          'Iūlius et Claudia',
          'Magistrī',
          'Vīcīnī',
          'eī'
        ],
        Gender.f: ['Iūlia et Lūcia', 'Cornēlia et Aemilia', 'Claudia et Antōnia', 'Flāvia et Valeria', 'Magistrae', 'Vīcīnae', 'eae'],
        Gender.n: ['Nōmina', 'Animālia', 'Tempora', 'Maria', 'Bella', 'Capita', 'Corpora', 'Opera', 'Verba', 'ea'],
      },
    };
    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];
    return listToChooseFrom.getRandom();
  }

  //if SECOND PERSON IMPERATIVE, we use the VOCATIVE or PRONOUNS
  //neuter second person is not allowed
  if (mood == Mood.imp) {
    if (person == Person.second) {
      Map<Number, Map<Gender, List<String>>> vocativeSubjects = {
        Number.s: {
          Gender.m: ['Mārce', 'Lūcī', 'Gāī', 'Iūlī', 'Quīnte', 'Tīte', 'Aule', 'Sexte', 'Magister', 'Vīcīne', 'Tū'],
          Gender.f: ['Iūlia', 'Lūcia', 'Cornēlia', 'Aemilia', 'Claudia', 'Antōnia', 'Flāvia', 'Valeria', 'Magistra', 'Vīcīna', 'Tū'],
          // Gender.n: ['Nōmen', 'Animal', 'Tempus', 'Mare', 'Bellum', 'Caput', 'Corpus', 'Opus', 'Verbum', 'id'],
        },
        Number.p: {
          //often when calling someone, we do not use 'and'
          Gender.m: [
            'Mārce et Lūcī',
            'Gāī, Iūlī',
            'Quīnte et Tīte',
            'Aule et Sexte',
            'Mārce et Iūlia',
            'Lūcī et Cornēlia',
            'Gāī, Aemilia',
            'Iūlī, Claudia',
            'Magistrī',
            'Vīcīnī',
            'Vōs'
          ],
          Gender.f: ['Iūlia et Lūcia', 'Cornēlia et Aemilia', 'Claudia et Antōnia', 'Flāvia et Valeria', 'Magistrae', 'Vīcīnae', 'Vōs'],
          // Gender.n: ['Nōmina', 'Animālia', 'Tempora', 'Maria', 'Bella', 'Capita', 'Corpora', 'Opera', 'Verba', 'ea'],
        },
      };

      List<String> listToChooseFrom = vocativeSubjects[number]?[gender] ?? ['DNyE'];
      bool spaceBefore = random.nextBool() ? true : false;
      String vocative = listToChooseFrom[random.nextInt(listToChooseFrom.length)];
      return spaceBefore ? '_____, $vocative!' : '$vocative, _____!';
    } else if (person == Person.third) {
      //in third person imperative, it is often weird to have a exclamation or comma. Just conjugate like
      String subject = getThirdPersonSubject(number, gender);
      return '_____ $subject';
    } else {
      return 'DNE'; //imperatives cannot be first person
    }
  } else {
    //wait neuter cant be first person
    String subject = '';
    if (number == Number.s) {
      if (person == Person.first) {
        subject = 'Egō';
      } else if (person == Person.second) {
        subject = 'Tū';
      } else if (person == Person.third) {
        subject = getThirdPersonSubject(number, gender);
      }
    } else if (number == Number.p) {
      if (person == Person.first) {
        subject = 'Nōs';
      } else if (person == Person.second) {
        subject = 'Vōs';
      } else if (person == Person.third) {
        subject = getThirdPersonSubject(number, gender);
      }
    }
    return '$subject _____';
  }
}
