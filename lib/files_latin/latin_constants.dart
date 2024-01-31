import 'package:colorguesser/core/constants.dart';
import 'package:colorguesser/core/enums.dart';

List<Number> latinNumbers = [Number.s, Number.p];
List<Gender> latinGenders = [Gender.m, Gender.f, Gender.n];
List<Case> latinCases = [
  Case.nom,
  Case.acc,
  Case.gen,
  Case.dat,
  Case.abl,
  Case.voc,
];
List<Case> latinFullCases = [
  Case.nom,
  Case.acc,
  Case.gen,
  Case.dat,
  Case.abl,
  Case.voc,
  Case.loc,
];
List<Mood> latinMoods = [
  Mood.ind,
  Mood.sub,
  Mood.imp,
];
List<Voice> latinVoices = [
  Voice.act,
  Voice.pas,
];
List<Tense> latinTenses = [
  Tense.present,
  Tense.imperfect,
  Tense.future,
  Tense.perfect,
  Tense.pluperfect,
  Tense.futurePerfect,
];
List<Person> latinPersons = [Person.first, Person.second, Person.third];

class LatinCoordinate {
  final Mood mood;
  final Voice voice;
  final Tense tense;
  final Number number;
  final Person person;

  LatinCoordinate(this.mood, this.voice, this.tense, this.number, this.person);
}

typedef LatinConjugationStructure = Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>>;

extension ConjugationStructureExtensions on LatinConjugationStructure {
  LatinCoordinate getRandomCoordinate() {
    List<LatinCoordinate> coordinates = [];

    forEach((mood, voices) {
      voices.forEach((voice, tenses) {
        tenses.forEach((tense, numbers) {
          numbers.forEach((number, persons) {
            for (var person in persons) {
              coordinates.add(LatinCoordinate(mood, voice, tense, number, person));
            }
          });
        });
      });
    });

    if (coordinates.isEmpty) {
      throw StateError("No coordinates available to select a random one.");
    }

    return coordinates.getRandom();
  }
}

const Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> latinConjugationStructure = {
  Mood.ind: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.future: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.futurePerfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
    Voice.pas: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.future: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      //Participle dependant forms
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.futurePerfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
  Mood.sub: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
    Voice.pas: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      //participle dependant
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
  Mood.imp: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.second],
        Number.p: [Person.second],
      },
      Tense.future: {
        Number.s: [Person.second, Person.third],
        Number.p: [Person.second, Person.third],
      },
    },
    Voice.pas: {
      Tense.present: {
        Number.s: [Person.second],
        Number.p: [Person.second],
      },
      Tense.future: {
        Number.s: [Person.second, Person.third],
        Number.p: [Person.third],
      },
    },
  },
};

const Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> latinConjugationStructureFacere = {
  Mood.ind: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.future: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.futurePerfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
    Voice.pas: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.future: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      //Participle dependant forms
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.futurePerfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
  Mood.sub: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
    Voice.pas: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      //participle dependant
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
  Mood.imp: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.second],
        Number.p: [Person.second],
      },
      Tense.future: {
        Number.s: [Person.second, Person.third],
        Number.p: [Person.second, Person.third],
      },
    },
    Voice.pas: {
      Tense.present: {
        Number.s: [Person.second],
        Number.p: [Person.second],
      },
      Tense.future: {
        Number.s: [Person.second, Person.third],
        Number.p: [Person.second, Person.third],
      },
    },
  },
};

const Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> latinActiveOnlyConjugationStructure = {
  Mood.ind: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.future: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.futurePerfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
  Mood.sub: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
  Mood.imp: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.second],
        Number.p: [Person.second],
      },
      Tense.future: {
        Number.s: [Person.second, Person.third],
        Number.p: [Person.second, Person.third],
      },
    },
  },
};

const Map<Mood, Map<Voice, Map<Tense, Map<Number, List<Person>>>>> latinActiveOnlyConjugationStructureWithNoImperative = {
  Mood.ind: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.future: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.futurePerfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
  Mood.sub: {
    Voice.act: {
      Tense.present: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.imperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.perfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
      Tense.pluperfect: {
        Number.s: [Person.first, Person.second, Person.third],
        Number.p: [Person.first, Person.second, Person.third],
      },
    },
  },
};
