//These can apply to a lot of languages
import 'dart:math';

import '../constants.dart';
import 'word_data/latin_adjectives.dart';
import 'latin_classes.dart';
import 'word_data/latin_nouns.dart';
import 'word_data/latin_verbs.dart';
import '../lengtheners.dart';

List<String> latinShortNumbers = ['s', 'p'];
List<String> latinShortGenders = ['m', 'f', 'n'];
List<String> latinShortCases = ['nom', 'acc', 'gen', 'dat', 'abl', 'voc'];
List<String> latinShortFullCases = ['nom', 'acc', 'gen', 'dat', 'abl', 'voc', 'loc'];
List<String> latinShortMoods = ['ind', 'sub', 'imp'];
List<String> latinShortVoices = ['act', 'pas'];
List<String> latinShortTenses = ['pres', 'imp', 'fut', 'perf', 'plup', 'futp'];
List<String> latinShortPersons = ['1', '2', '3'];

Question getLatinVerbQuestion() {
  final random = Random();
  //GET RANDOM VERB
  LatinVerb randomVerb = latinVerbs[random.nextInt(latinVerbs.length)];
  //GET RANDOM CONJUGATION
  String randomMood = latinShortMoods[random.nextInt(latinShortMoods.length)];
  String randomVoice = latinShortVoices[random.nextInt(latinShortVoices.length)];
  String randomTense = latinShortTenses[random.nextInt(latinShortTenses.length)];
  String randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  String randomPerson = latinShortPersons[random.nextInt(latinShortPersons.length)];
  String randomGender = latinShortGenders[random.nextInt(latinShortGenders.length)];
  void initConjugation() {
    randomMood = latinShortMoods[random.nextInt(latinShortMoods.length)];
    randomVoice = latinShortVoices[random.nextInt(latinShortVoices.length)];
    randomTense = latinShortTenses[random.nextInt(latinShortTenses.length)];
    randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
    randomPerson = latinShortPersons[random.nextInt(latinShortPersons.length)];
    randomGender = latinShortGenders[random.nextInt(latinShortGenders.length)];
  }

  //I will not allow second person neuter because that is very rare
  while (randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE' ||
      (randomGender == 'n' && randomPerson == '2')) {
    initConjugation();
    print('$randomMood, $randomVoice, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }

  String lemma = randomVerb.infinitives['presentActive'] ?? 'DNE';
  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    //if it is imperative, you need to know the person, as the subject/vocative forms are often identical and can be confusing
    if (randomMood == 'imp') lengthenPerson[randomPerson] ?? 'DNE',
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
  String randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
  String randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  void initDeclension() {
    randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
    randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    print('$randomCase, $randomNumber, DNE');
  }

  //ACCOUNT FOR THE FACT THAT IT MAY BE PLURAL ONLY
  String lemma = randomNoun.declension['nom']?['s'] ?? randomNoun.declension['nom']?['p'] ?? 'TERRIBLE ERROR';

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
  String randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
  String randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];

  void initDeclension() {
    randomCase = latinShortFullCases[random.nextInt(latinShortFullCases.length)];
    randomNumber = latinShortNumbers[random.nextInt(latinShortNumbers.length)];
  }

  while (randomNoun.declineNoun(randomCase, randomNumber) == 'DNE') {
    initDeclension();
    print('$randomCase, $randomNumber, DNE');
  }

  LatinAdjective randomAdjective = latinAdjectives[random.nextInt(latinAdjectives.length)];

  String lemma = randomAdjective.declineAdjective('nom', 's', 'n');

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

String getLatinSubject(String mood, String number, String person, String gender) {
  final random = Random();

  //In order to get them
  String getThirdPersonSubject(String number, String gender) {
    Map<String, Map<String, List<String>>> subjects = {
      's': {
        'm': ['Mārcus', 'Lūcius', 'Gāius', 'Iūlius', 'Quīntus', 'Titus', 'Aulus', 'Sextus', 'Magister', 'Vīcīnus', 'is'],
        'f': ['Iūlia', 'Lūcia', 'Cornēlia', 'Aemilia', 'Claudia', 'Antōnia', 'Flāvia', 'Valeria', 'Magistra', 'Vīcīna', 'ea'],
        'n': ['Nōmen', 'Animal', 'Tempus', 'Mare', 'Bellum', 'Caput', 'Corpus', 'Opus', 'Verbum', 'id'],
      },
      'p': {
        'm': [
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
        'f': ['Iūlia et Lūcia', 'Cornēlia et Aemilia', 'Claudia et Antōnia', 'Flāvia et Valeria', 'Magistrae', 'Vīcīnae', 'eae'],
        'n': ['Nōmina', 'Animālia', 'Tempora', 'Maria', 'Bella', 'Capita', 'Corpora', 'Opera', 'Verba', 'ea'],
      },
    };
    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];
    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  //if SECOND PERSON IMPERATIVE, we use the VOCATIVE or PRONOUNS
  //neuter second person is not allowed
  if (mood == 'imp') {
    if (person == '2') {
      Map<String, Map<String, List<String>>> vocativeSubjects = {
        's': {
          'm': ['Mārce', 'Lūcī', 'Gāī', 'Iūlī', 'Quīnte', 'Tīte', 'Aule', 'Sexte', 'Magister', 'Vīcīne', 'Tū'],
          'f': ['Iūlia', 'Lūcia', 'Cornēlia', 'Aemilia', 'Claudia', 'Antōnia', 'Flāvia', 'Valeria', 'Magistra', 'Vīcīna', 'Tū'],
          // 'n': ['Nōmen', 'Animal', 'Tempus', 'Mare', 'Bellum', 'Caput', 'Corpus', 'Opus', 'Verbum', 'id'],
        },
        'p': {
          //often when calling someone, we do not use 'and'
          'm': [
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
          'f': ['Iūlia et Lūcia', 'Cornēlia et Aemilia', 'Claudia et Antōnia', 'Flāvia et Valeria', 'Magistrae', 'Vīcīnae', 'Vōs'],
          // 'n': ['Nōmina', 'Animālia', 'Tempora', 'Maria', 'Bella', 'Capita', 'Corpora', 'Opera', 'Verba', 'ea'],
        },
      };

      List<String> listToChooseFrom = vocativeSubjects[number]?[gender] ?? ['DNyE'];
      bool spaceBefore = random.nextBool() ? true : false;
      String vocative = listToChooseFrom[random.nextInt(listToChooseFrom.length)];
      return spaceBefore ? '_____, $vocative!' : '$vocative, _____!';
    } else if (person == '3') {
      //in third person imperative, it is often weird to have a subject.
      //TODO: add some acceptable words here?
      return '_____';
    } else {
      return 'DNE'; //imperatives cannot be first person
    }
  } else {
    //wait neuter cant be first person
    String subject = '';
    if (number == 's') {
      if (person == '1') {
        subject = 'Egō';
      } else if (person == '2') {
        subject = 'Tū';
      } else if (person == '3') {
        subject = getThirdPersonSubject(number, gender);
      }
    } else if (number == 'p') {
      if (person == '1') {
        subject = 'Nōs';
      } else if (person == '2') {
        subject = 'Vōs';
      } else if (person == '3') {
        subject = getThirdPersonSubject(number, gender);
      }
    }
    return '$subject _____';
  }
}
