import 'package:colorguesser/auxiliaryTenses.dart';
import 'package:colorguesser/core/enums.dart';
import 'dart:math';
import 'package:colorguesser/core/constants.dart';
import 'package:colorguesser/core/lengtheners.dart';
import 'package:colorguesser/files_italian/italian_classes.dart';
import 'package:colorguesser/files_italian/italian_lists.dart';
import 'package:colorguesser/files_italian/italian_getters.dart';
import '../core/enums.dart';
import 'word_data/italian_verbs.dart';
import 'italian_lists.dart';

class ItalianAdjective {
  final Map<Number, Map<Gender, String>> declension;
  const ItalianAdjective({required this.declension});

  String declineAdjective(Number n, Gender g) {
    return declension[n]?[g] ?? 'DNE';
  }
}

class ItalianNoun {
  final Map<Number, String> declension;
  final Gender gender;
  const ItalianNoun({required this.gender, required this.declension});

  String declineNoun(Number n) {
    return declension[n] ?? 'DNE';
  }

  Gender getGender(Number n) {
    //check if irregular
    if (gender == Gender.i) {
      //masc in singular, fem in plural
      return n == Number.s ? Gender.m : Gender.f;
    } else {
      return gender;
    }
  }
}

class ItalianVerb {
  String infinitive;
  String gerund;
  ItalianAuxiliaryVerb auxiliaryVerb;
  Map<Tense, ItalianAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  ItalianVerb({
    required this.infinitive,
    required this.gerund,
    required this.auxiliaryVerb,
    required this.participles,
    required this.conjugation,
  });
  Question randomConjugation() {
    //If compound forms are activated
    Random r = new Random();
    bool isSimple = r.nextDouble() <= 0.5;

    Mood randomMood;
    Tense randomTense;
    Number randomNumber;
    Person randomPerson;

    Gender randomGender; //only used if not simple

    List<String> demands = [];

    if (isSimple) {
      //Find a random String from the conjugation table
      var randomCoordinate = getRandomCoordinate(conjugation);

      randomMood = randomCoordinate.mood;
      randomTense = randomCoordinate.tense;
      randomNumber = randomCoordinate.number;
      randomPerson = randomCoordinate.person;
    } else {
      //THIS IS NOT EQUIPPED TO HANDLE DEFECTIVE VERBS!!!!!!!!! TODO
      List<Mood> weightedMoods = [
        ...List.filled(4, Mood.ind), // 4/12 chance
        ...List.filled(2, Mood.sub), // 2/12 chance
        ...List.filled(1, Mood.con), // 1/12 chance
        ...List.filled(1, Mood.imp), // 1/12 chance
      ];
      randomMood = weightedMoods.getRandom();

      if (randomMood == Mood.ind) {
        randomTense = italianCompoundTenses.getRandom();
      } else if (randomMood == Mood.sub) {
        randomTense = [
          //compound forms
          Tense.perfectRomanceCompound,
          Tense.pluperfectRomanceCompound,
        ].getRandom();
      } else if (randomMood == Mood.con) {
        randomTense = [
          //compound forms
          Tense.perfectRomanceCompound,
        ].getRandom();
      } else {
        randomTense = [
          //compound forms
          Tense.perfectRomanceCompound,
        ].getRandom();
      }

      randomNumber = italianNumbers.getRandom();
      randomPerson = italianPersons.getRandom();
    }

    randomGender = italianGenders.getRandom();
    String lemma = infinitive;

    demands = [
      lengthenTense[randomTense]!,
      lengthenMood[randomMood]!,
      //if it is imperative, person matters.
      if (randomMood == Mood.imp) lengthenPerson[randomPerson]!,
      if (!isSimple) lengthenGender[randomGender]!,
    ];
    String blank = conjugateVerb(randomMood, randomTense, randomNumber, randomPerson, g: randomGender)!;
    //promt without elision: we dont want to give a clue
    String prompt = getItalianSubject(randomMood, randomNumber, randomPerson, randomGender);

    //prompt with Elision
    String promptWithElision = getItalianSubject(randomMood, randomNumber, randomPerson, randomGender);
    String answer = promptWithElision.replaceAll('_____', blank);
    return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
  }

  //we need the gender for forms involving participles.
  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    //If it is a simple tense and the conjugation contains it.
    if (italianSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    //if it is a complex tense
    if (italianCompoundTenses.contains(t)) {
      Tense? auxiliaryTense = auxiliaryTenseOf[t];

      if (auxiliaryTense == null) {
        return null;
      }
      String? aux = auxiliaryVerb.conjugateVerb(m, auxiliaryTense, n, p);

      //If the aux verb is etre, then it is number and gender dependant
      Number participleNumber = auxiliaryVerb == essere2 ? n : Number.s; //singular with avere
      Gender participleGender = auxiliaryVerb == essere2 ? g : Gender.m; //masculine with avere

      String? part = participles[Tense.perfectRomance]!.declineAdjective(participleNumber, participleGender);

      if (aux == null || part == null) {
        return null;
      }
      return '$aux $part';
    }

    //it is not anything
    return null;
  }
}

//The behave just like normal verbs but do not have aux verbs of their own to prevent paradoxes.
class ItalianAuxiliaryVerb {
  String infinitive;
  String gerund;

  Map<Tense, ItalianAdjective> participles;
  Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation;

  ItalianAuxiliaryVerb({
    required this.infinitive,
    required this.gerund,
    required this.participles,
    required this.conjugation,
  });

  String? conjugateVerb(Mood m, Tense t, Number n, Person p, {Gender g = Gender.m}) {
    if (italianSimpleTenses.contains(t)) {
      return conjugation[m]?[t]?[n]?[p];
    }
    return null;
  }
}
