//These can apply to a lot of languages

import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_portuguese/portuguese_constants.dart';

import '../core/constants.dart';
import 'word_data/portuguese_adjectives.dart';
import 'portuguese_classes.dart';
import 'word_data/portuguese_nouns.dart';
import 'word_data/portuguese_verbs.dart';
import '../core/lengtheners.dart';

Question getPortugueseVerbQuestion() {
  //Pick a random verb
  PortugueseVerb randomVerb = portugueseVerbs.getRandom();
  //Pick a random coordinate. Note this does not include gender
  PortugueseCoordinate randomPortugueseCoordinate = randomVerb.conjugationStructure.getRandomCoordinate();
  //Pick a random gender
  Gender randomGender = portugueseGenders.getRandom();

  //Begin to fill out the parameters for the Question
  String lemma = randomVerb.infinitive;
  List<String> demands = [
    lengthenTense[randomPortugueseCoordinate.tense]!,
    lengthenMood[randomPortugueseCoordinate.mood]!,
    //if it is imperative, person matters.
    if (randomPortugueseCoordinate.mood == Mood.imp) lengthenPerson[randomPortugueseCoordinate.person]!,
  ];
  String prompt = getPortugueseSubject(randomPortugueseCoordinate.mood, randomPortugueseCoordinate.number, randomPortugueseCoordinate.person, randomGender);
  //what is the answer part
  String blank = randomVerb.conjugateVerb(
    randomPortugueseCoordinate.mood,
    randomPortugueseCoordinate.tense,
    randomPortugueseCoordinate.number,
    randomPortugueseCoordinate.person,
    //gender: optional but very important.
    g: randomGender,
  )!;

  //create the final answer with the blank filled in.
  String answer = prompt.replaceAll('_____', blank);
  //return the question
  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

//match adjective to noun
Question getPortugueseAdjectiveNounQuestion() {
  //Get a random number.
  Number randomNumber = portugueseNumbers.getRandom();
  //Get the random words
  PortugueseNoun randomNoun = portugueseNouns.getRandom();
  PortugueseAdjective randomAdjective = portugueseAdjectives.getRandom();

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

Question getPortugueseDeclineQuestion() {
  return getPortugueseAdjectiveNounQuestion();
}

String getPortugueseSubject(Mood mood, Number number, Person person, Gender gender) {
  //In order to get them
  String getThirdPersonSubject(Number number, Gender gender) {
    Map<Number, Map<Gender, List<String>>> subjects = {
      Number.s: {
        Gender.m: [' João', ' Miguel', ' André', ' Diogo', ' Pedro', ' Ele'],
        Gender.f: [' Ana', ' Sofia', ' Carla', ' Inês', ' Laura', ' Ela'],
      },
      Number.p: {
        Gender.m: [' Senhores', ' Amigos', ' João e Miguel', ' André e Carlos', ' Diogo e Pedro', ' Amigos e Amigas', ' João, Ana, e Carla', ' Eles'],
        Gender.f: [' Senhoras', ' Amigas', ' Inês e Laura', ' Carla e Sofia', ' Elas'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom.getRandom();
  }

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
      subject = 'Nós';
    } else if (person == Person.second) {
      subject = 'Vós';
    } else if (person == Person.third) {
      subject = getThirdPersonSubject(number, gender);
    }
  }
  return '$subject _____';
}
