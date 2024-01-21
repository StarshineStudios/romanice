import 'dart:math';
import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_french/french_constants.dart';
import '../core/constants.dart';
import 'word_data/french_adjectives.dart';
import 'french_classes.dart';
import 'word_data/french_nouns.dart';
import 'word_data/french_verbs.dart';
import '../core/lengtheners.dart';

//VERBS
Question getFrenchVerbQuestion() {
  //Pick a random verb
  FrenchVerb randomVerb = frenchVerbs.getRandom();
  //Pick a random coordinate. Note this does not include gender
  FrenchCoordinate randomFrenchCoordinate = randomVerb.conjugationStructure.getRandomCoordinate();
  //Pick a random gender
  Gender randomGender = frenchGenders.getRandom();

  //Begin to fill out the parameters for the Question
  String lemma = randomVerb.infinitive;
  List<String> demands = [
    lengthenTense[randomFrenchCoordinate.tense]!,
    lengthenMood[randomFrenchCoordinate.mood]!,
    //if it is imperative, person matters.
    if (randomFrenchCoordinate.mood == Mood.imp) lengthenPerson[randomFrenchCoordinate.person]!,
    //if it is complex, it matters. This may be redundant with some prompts, but i will keep it to account for personal pronouns
    if (frenchCompoundTenses.contains(randomFrenchCoordinate.tense)) lengthenGender[randomGender]!,
  ];
  String prompt = getFrenchSubject(randomFrenchCoordinate.mood, randomFrenchCoordinate.number, randomFrenchCoordinate.person, randomGender);
  //what is the answer part
  String blank = randomVerb.conjugateVerb(
    randomFrenchCoordinate.mood,
    randomFrenchCoordinate.tense,
    randomFrenchCoordinate.number,
    randomFrenchCoordinate.person,
    //gender: optional but very important.
    g: randomGender,
  )!;

  //We must account for elision in french  for the word "Je"
  if (prompt == 'Je _____' && blank.startsWithVowelSound()) {
    prompt == "J'_____";
  }

  //create the final answer with the blank filled in.
  String answer = prompt.replaceAll('_____', blank);
  //return the question
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getFrenchAdjectiveNounQuestion() {
  //Get a random number.
  Number randomNumber = frenchNumbers.getRandom();
  //Get the random words
  FrenchNoun randomNoun = frenchNouns.getRandom();
  FrenchAdjective randomAdjective = frenchAdjectives.getRandom();

  //get the lemma form of singular masculine
  String lemma = randomAdjective.declineAdjective(Number.s, Gender.m)!;

  List<String> demands = [
    lengthenNumber[randomNumber]!,
    lengthenGender[randomNoun.gender]!, //disable in hard mode? maybe
  ];

  String declinedNoun = randomNoun.declineNoun(randomNumber)!;

  //some french adjectives go before
  String prompt = randomAdjective.before ? '_____ $declinedNoun' : '$declinedNoun _____';
  String blank = randomAdjective.declineAdjective(randomNumber, randomNoun.gender)!;
  String answer = prompt.replaceAll('_____', blank);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

Question getFrenchDeclineQuestion() {
  //I may add more types of declining questions later
  return getFrenchAdjectiveNounQuestion();
}

//Helper function
String getFrenchSubject(Mood mood, Number number, Person person, Gender gender) {
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
      subject = 'Je ';
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
