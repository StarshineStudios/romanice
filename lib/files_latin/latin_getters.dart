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

// List<String> latinNumbers = ['singular', 'plural'];
// List<String> latinGenders = ['neuter', 'masculine', 'feminine'];
// List<String> latinCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative'];
// List<String> latinFullCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative', 'locative'];
// List<String> latinMoods = ['indicative', 'subjunctive'];

Question getLatinVerbQuestion() {
  final random = Random();

  //
  LatinVerb randomVerb = latinVerbs[random.nextInt(latinVerbs.length)];

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

  while (randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE') {
    initConjugation();
    print('$randomMood, $randomVoice, $randomTense, $randomNumber, $randomPerson, $randomGender DNE');
  }

  String lemma = randomVerb.infinitives['presentActive'] ?? 'something went terribly wrong';
  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    //if it is imperative, you need to know the person, as the subject/vocative forms are often identical
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

  //possible it is a plural only noun
  String lemma = randomNoun.declension['nom']?['s'] ?? randomNoun.declension['nom']?['p'] ?? 'TERRIBLE ERROR';

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
        'm': ['Marcus', 'Antonius', 'Is'],
        'f': ['Helena', 'Livia', 'Ea'],
        'n': ['Animal', 'Templum'],
      },
      'p': {
        'm': ['Senatores', 'Multi', 'Marcus et Antonius', 'Helena et Marcus'],
        'f': ['Feminae', 'Puellae', 'Helena et Livia'],
        'n': ['Animalia', 'Templa'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  //if imperative second person, we use the VOCATIVE or Tu/Vos
  if (mood == 'imp' && person == '2') {
    Map<String, Map<String, List<String>>> vocativeSubjects = {
      's': {
        'm': ['Marce', 'Antoni', 'Tū'],
        'f': ['Helena', 'Livia', 'Tū'],
        'n': ['Animal', 'Templum'],
      },
      'p': {
        'm': ['Senatores', 'omnes', 'vos omnes'],
        'f': ['Feminae', 'Puellae', 'vos omnes'],
        'n': ['Animalia'],
      },
    };
    List<String> listToChooseFrom = vocativeSubjects[number]?[gender] ?? ['DNE'];

    bool spaceBefore = random.nextBool() ? true : false;

    String vocative = listToChooseFrom[random.nextInt(listToChooseFrom.length)];

    return spaceBefore ? '_____, $vocative' : '$vocative, _____';

    //else the thing is a SUBJECT
  } else {
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
