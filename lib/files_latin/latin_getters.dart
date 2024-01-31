//These can apply to a lot of languages
import 'dart:math';

import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_latin/latin_constants.dart';
import 'package:hive/hive.dart';

import '../core/constants.dart';
import 'word_data/latin_adjectives.dart';
import 'latin_classes.dart';
import 'word_data/latin_nouns.dart';
import 'word_data/latin_verbs.dart';
import '../core/lengtheners.dart';

Question getLatinVerbQuestion() {
//Pick a random verb
  LatinVerb randomVerb = latinVerbs.getRandom();
  //Pick a random coordinate. Note this does not include gender
  LatinCoordinate randomLatinCoordinate = randomVerb.conjugationStructure.getRandomCoordinate();
  //Pick a random gender
  Gender randomGender = latinGenders.getRandom();

  bool isComplex = (randomVerb is LatinDeponentVerb)
      ? (randomLatinCoordinate.voice == Voice.act &&
          (randomLatinCoordinate.tense == Tense.perfect ||
              randomLatinCoordinate.tense == Tense.pluperfect ||
              randomLatinCoordinate.tense == Tense.futurePerfect))
      : (randomLatinCoordinate.voice == Voice.pas &&
          (randomLatinCoordinate.tense == Tense.perfect ||
              randomLatinCoordinate.tense == Tense.pluperfect ||
              randomLatinCoordinate.tense == Tense.futurePerfect));

  //Begin to fill out the parameters for the Question
  String lemma = randomVerb.infinitives[Tense.present]![Voice.act]!;
  List<String> demands = [
    lengthenTense[randomLatinCoordinate.tense]!,
    lengthenMood[randomLatinCoordinate.mood]!,
    //if it is imperative, person matters.
    if (randomLatinCoordinate.mood == Mood.imp) lengthenPerson[randomLatinCoordinate.person]!,
    //if it is complex, it matters. This may be redundant with some prompts, but i will keep it to account for personal pronouns
    if (isComplex) lengthenGender[randomGender]!,
    lengthenVoice[randomLatinCoordinate.voice]!,
  ];
  String prompt = getLatinSubject(randomLatinCoordinate.mood, randomLatinCoordinate.number, randomLatinCoordinate.person, randomGender)!;
  //what is the answer part
  String blank = randomVerb.conjugateVerb(
    randomLatinCoordinate.mood,
    randomLatinCoordinate.voice,
    randomLatinCoordinate.tense,
    randomLatinCoordinate.number,
    randomLatinCoordinate.person,
    //gender: optional but very important.
    g: randomGender,
  )!;

  //create the final answer with the blank filled in.
  String answer = prompt.replaceAll('_____', blank);
  //return the question
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getLatinNounQuestion() {
  //GET RANDOM NOUN
  LatinNoun randomNoun = latinNouns.getRandom();
  //GET RANDOM VALID DECLENSION
  Case randomCase = randomNoun.declension.keys.toList().getRandom();
  Number randomNumber = randomNoun.declension[randomCase]!.keys.toList().getRandom();

  //ACCOUNT FOR THE FACT THAT IT MAY BE PLURAL ONLY
  String? lemma = randomNoun.declension[Case.nom]?[Number.s] ?? randomNoun.declension[Case.nom]?[Number.p];

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

//match adjective to noun
Question getLatinAdjectiveNounQuestion() {
//GET RANDOM NOUN
  LatinNoun randomNoun = latinNouns.getRandom();
  //GET RANDOM VALID DECLENSION
  // Case randomCase = randomNoun.declension.keys.toList().getRandom();
  //I do not want locative

  final Box<dynamic> _generalBox = Hive.box('generalBoxString');
  bool usingVoc = _generalBox.get('usingVocativeIf', defaultValue: true);

  List<Case> cases = randomNoun.declension.keys.toList();
  if (!usingVoc) {
    if (randomNoun.declineNoun(Case.nom, Number.s) == randomNoun.declineNoun(Case.voc, Number.s)) {
      cases.remove(Case.voc);
    }
  }
  Case randomCase = cases.getRandom();

  Number randomNumber = randomNoun.declension[randomCase]!.keys.toList().getRandom();

  LatinAdjective randomAdjective = latinAdjectives.getRandom();

  String? lemma = randomAdjective.declineAdjective(Case.nom, Number.s, Gender.n);

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

Question getLatinDeclineQuestion() {
  final random = Random();
  // Simulate a 60/40 chance
  bool isOutcomeA = random.nextDouble() < 0.5;

  return isOutcomeA ? getLatinNounQuestion() : getLatinAdjectiveNounQuestion();
}

String? getLatinSubject(Mood mood, Number number, Person person, Gender gender) {
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
      return null; //imperatives cannot be first person
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
