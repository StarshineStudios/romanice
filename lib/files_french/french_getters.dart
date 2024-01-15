import 'dart:math';
import 'package:colorguesser/core/enums.dart';
import '../core/constants.dart';
import 'word_data/french_adjectives.dart';
import 'french_classes.dart';
import 'word_data/french_nouns.dart';
import 'word_data/french_verbs.dart';
import '../core/lengtheners.dart';

List<Number> frenchNumbers = [Number.s, Number.p];
List<Gender> frenchGenders = [Gender.m, Gender.f];
List<Mood> frenchMoods = [Mood.ind, Mood.sub, Mood.con, Mood.imp];
List<Person> frenchPersons = [Person.first, Person.second, Person.third];
List<Tense> frenchTenses = [
  //non-compound forms
  Tense.presentRomance,
  Tense.imperfectRomance,
  Tense.futureRomance,
  Tense.perfectRomance,

  //compound forms
  Tense.perfectRomanceCompound,
  Tense.pluperfectRomanceCompound,
  Tense.futurePerfectRomanceCompound,
  Tense.anteriorRomanceCompound,
];

////////////////////////////////////////////////////////////////

//VERBS
Question getFrenchVerbQuestion() {
  final random = Random();
  //PICK RANDOM VERB
  FrenchVerb randomVerb = frenchVerbs[random.nextInt(frenchVerbs.length)];

  //PICK RANDOM CONJUGATION
  Mood randomMood = frenchMoods.getRandom();
  Tense randomTense = frenchTenses.getRandom();
  Number randomNumber = frenchNumbers.getRandom();
  Person randomPerson = frenchPersons.getRandom();
  Gender randomGender = frenchGenders.getRandom();
  void initConjugation() {
    randomMood = frenchMoods.getRandom();
    randomTense = frenchTenses.getRandom();
    randomNumber = frenchNumbers.getRandom();
    randomPerson = frenchPersons.getRandom();
    randomGender = frenchGenders.getRandom();
  }

  while (randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE') {
    initConjugation();
  }

  //ONCE WE HAVE FOUND A VALID CONJUGATION FOR THE VERB
  String lemma = randomVerb.infinitive;

  List<String> demands = [
    lengthenTense[randomTense] ?? 'DNE',
    lengthenMood[randomMood] ?? 'DNE',
    //if it is imperative, person matters.
    if (randomMood == Mood.imp) lengthenPerson[randomPerson] ?? 'DNE',
  ];

  String blank = randomVerb.conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender);

  //promt without elision: we dont want to give a clue
  String prompt = getFrenchSubject(randomMood, randomNumber, randomPerson, randomGender, false);

  //prompt with
  String promptWithElision = getFrenchSubject(randomMood, randomNumber, randomPerson, randomGender, blank.startsWithVowelSound());

  String answer = promptWithElision.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

//This is comically easy and I will not include it
Question getFrenchNounQuestion() {
  final random = Random();
  //PICK A RANDOM NOUN
  FrenchNoun randomNoun = frenchNouns[random.nextInt(frenchNouns.length)];

  //PICK A RANDOM DECLENSION
  Number randomNumber = frenchNumbers[random.nextInt(frenchNumbers.length)];
  void initDeclension() {
    randomNumber = frenchNumbers[random.nextInt(frenchNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
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

Question getFrenchAdjectiveNounQuestion() {
  final random = Random();
  //PICK A RANDOM NOUN
  FrenchNoun randomNoun = frenchNouns[random.nextInt(frenchNouns.length)];
  //PICK A RANDOM ADJECTIVE
  Number randomNumber = frenchNumbers[random.nextInt(frenchNumbers.length)];
  void initDeclension() {
    randomNumber = frenchNumbers[random.nextInt(frenchNumbers.length)];
  }

  while (randomNoun.declineNoun(randomNumber) == 'DNE') {
    initDeclension();
  }

  FrenchAdjective randomAdjective = frenchAdjectives[random.nextInt(frenchAdjectives.length)];

  String lemma = randomAdjective.declineAdjective(Number.s, Gender.m);

  List<String> demands = [
    lengthenNumber[randomNumber] ?? 'DNE',
    lengthenGender[randomNoun.gender] ?? 'DNE', //disable in hard mode? maybe
  ];

  String declinedNoun = randomNoun.declineNoun(randomNumber);

  //some french adjectives go before
  String prompt = randomAdjective.before ? '_____ $declinedNoun' : '$declinedNoun _____';

  String blank = randomAdjective.declineAdjective(randomNumber, randomNoun.gender);
  String answer = prompt.replaceAll('_____', blank);

  if (answer == 'DNE') {
    return getFrenchAdjectiveNounQuestion();
  }

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getFrenchDeclineQuestion() {
  final random = Random();
  // Simulate a chance
  bool isOutcomeA = random.nextDouble() < 0;
  return isOutcomeA ? getFrenchNounQuestion() : getFrenchAdjectiveNounQuestion();
}

String getFrenchSubject(Mood mood, Number number, Person person, Gender gender, bool elision) {
  final random = Random();

  String getThirdPersonSubject(Number number, Gender gender) {
    Map<Number, Map<Gender, List<String>>> subjects = {
      Number.s: {
        Gender.m: ['Gabriel', 'Léo', 'Raphaël', 'Maxime', 'Nicolas', 'Julien', 'Antoine', 'Lucas', 'Le professeur', 'Le voisin', 'Il'],
        Gender.f: ['Léa', 'Emma', 'Manon', 'Chloé', 'Camille', 'Sarah', 'Julie', 'Marie', 'La professeure', 'La voisine', 'Elle'],
      },
      Number.p: {
        Gender.m: [
          'Nicolas et Maxime',
          'Julien et Antoine',
          'Lucas et Gabriel',
          'Léo et Raphaël',
          'Nicolas et Julie',
          'Maxime et Chloé',
          'Lucas et Sarah',
          'Antoine et Emma',
          'Les professeurs',
          'Les voisins',
          'Ils'
        ],
        Gender.f: ['Emma et Chloé', 'Camille et Sarah', 'Julie et Marie', 'Léa et Manon', 'Les professeures', 'Les voisines', 'Elles'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];
    return listToChooseFrom[random.nextInt(listToChooseFrom.length)];
  }

  String subject = '';

  if (number == Number.s) {
    if (person == Person.first) {
      if (elision) {
        subject = "J'";
      } else {
        subject = 'Je ';
      }
    } else if (person == Person.second) {
      subject = 'Tu ';
    } else if (person == Person.third) {
      subject = '${getThirdPersonSubject(number, gender)} ';
    }
  } else if (number == Number.p) {
    if (person == Person.first) {
      subject = 'Nous ';
    } else if (person == Person.second) {
      subject = 'Vous ';
    } else if (person == Person.third) {
      subject = '${getThirdPersonSubject(number, gender)} ';
    }
  }
  return '${subject}_____';
}

extension StartsWithVowelSound on String {
  bool startsWithVowelSound() {
    if (isEmpty) {
      return false;
    }

    final firstChar = this[0];
    final vowelCharacters = ['a', 'e', 'i', 'o', 'u'];
    final accentedVowels = ['à', 'â', 'é', 'è', 'ê', 'ë', 'î', 'ï', 'ô', 'œ', 'û', 'ü'];

    if (vowelCharacters.contains(firstChar.toLowerCase())) {
      return true;
    } else if (firstChar.toLowerCase() == 'h' && length > 1) {
      final secondChar = this[1];
      if (vowelCharacters.contains(secondChar.toLowerCase()) || accentedVowels.contains(secondChar.toLowerCase())) {
        return true;
      }
    }

    return false;
  }
}
