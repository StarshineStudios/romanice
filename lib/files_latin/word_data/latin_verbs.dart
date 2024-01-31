import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_latin/latin_constants.dart';

import '../latin_classes.dart';

List<LatinVerb> latinVerbs = [
  esse,
  habere,
  amare,
  videre,
  facere,
  velle,
  nolle,
  posse,
  ire,
  scire,
];

LatinVerb esse = LatinVerb(
  infinitives: {
    Tense.present: {Voice.act: 'esse'},
    Tense.perfect: {Voice.act: 'fuisse'},
    Tense.future: {Voice.act: 'fore'}
  },
  participles: {
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'futūrus', Gender.f: 'futura', Gender.n: 'futurum'},
            Number.p: {Gender.m: 'futūrī', Gender.f: 'futūrae', Gender.n: 'futūra'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'futurum', Gender.f: 'futuram', Gender.n: 'futurum'},
            Number.p: {Gender.m: 'futūrōs', Gender.f: 'futūrās', Gender.n: 'futūra'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'futūrī', Gender.f: 'futurae', Gender.n: 'futūrī'},
            Number.p: {Gender.m: 'futūrōrum', Gender.f: 'futūrārum', Gender.n: 'futūrōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'futūrō', Gender.f: 'futurae', Gender.n: 'futūrō'},
            Number.p: {Gender.m: 'futūrīs', Gender.f: 'futūrīs', Gender.n: 'futūrīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'futūrō', Gender.f: 'futūrā', Gender.n: 'futūrō'},
            Number.p: {Gender.m: 'futūrīs', Gender.f: 'futūrīs', Gender.n: 'futūrīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'futūre', Gender.f: 'futura', Gender.n: 'futurum'},
            Number.p: {Gender.m: 'futūrī', Gender.f: 'futūrae', Gender.n: 'futūra'}
          },
        },
      ),
    }
  },
  conjugationStructure: latinActiveOnlyConjugationStructure,
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'sum', Person.second: 'es', Person.third: 'est'},
          Number.p: {Person.first: 'sumus', Person.second: 'estis', Person.third: 'sunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'eram', Person.second: 'erās', Person.third: 'erat'},
          Number.p: {Person.first: 'erāmus', Person.second: 'erātis', Person.third: 'erant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'erō', Person.second: 'eris', Person.third: 'erit'},
          Number.p: {Person.first: 'erāmus', Person.second: 'erātis', Person.third: 'erunt'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'fuī', Person.second: 'fuistī', Person.third: 'fuit'},
          Number.p: {Person.first: 'fuimus', Person.second: 'fuistis', Person.third: 'fuērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'fueram', Person.second: 'fuerās', Person.third: 'fuerat'},
          Number.p: {Person.first: 'fuerāmus', Person.second: 'fuerātis', Person.third: 'fuerant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'fuerō', Person.second: 'fueris', Person.third: 'fuerit'},
          Number.p: {Person.first: 'fuerimus', Person.second: 'fueritis', Person.third: 'fuerint'},
        },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'sim', Person.second: 'sīs', Person.third: 'sit'},
          Number.p: {Person.first: 'sīmus', Person.second: 'sītis', Person.third: 'sint'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'essem', Person.second: 'essēs', Person.third: 'esset'},
          Number.p: {Person.first: 'essēmus', Person.second: 'essētis', Person.third: 'essent'},
        },
        // 'impArchaic': {
        //   Number.s: {Person.first: 'forem', Person.second: 'forēs', Person.third: 'foret'},
        //   Number.p: {Person.first: 'forēmus', Person.second: 'forētis', Person.third: 'forent'},
        // },
        Tense.perfect: {
          Number.s: {Person.first: 'fuerim', Person.second: 'fuerīs', Person.third: 'fuerit'},
          Number.p: {Person.first: 'fuerīmus', Person.second: 'fuerītis', Person.third: 'fuerint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'fuissem', Person.second: 'fuissēs', Person.third: 'fuisset'},
          Number.p: {Person.first: 'fuissēmus', Person.second: 'fuissētis', Person.third: 'fuissent'},
        },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'es'},
          Number.p: {Person.second: 'este'}
        },
        Tense.future: {
          Number.s: {Person.second: 'estō', Person.third: 'estō'},
          Number.p: {Person.second: 'estōte', Person.third: 'suntō'}
        },
      },
    },
  },
);
LatinVerb scire = LatinVerb(
  infinitives: {
    Tense.present: {
      Voice.act: 'scīre',
    },
    Tense.perfect: {
      Voice.act: 'scīvisse',
      Voice.pas: 'scīrī',
    },
    Tense.future: {
      Voice.act: 'scītūrum esse',
    },
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'sciēns', Gender.f: 'sciēns', Gender.n: 'sciēns'},
            Number.p: {Gender.m: 'scientēs', Gender.f: 'scientēs', Gender.n: 'scientia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'scientem', Gender.f: 'scientem', Gender.n: 'sciēns'},
            Number.p: {Gender.m: 'scientēs', Gender.f: 'scientēs', Gender.n: 'scientia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'scientis', Gender.f: 'scientis', Gender.n: 'scientis'},
            Number.p: {Gender.m: 'scientium', Gender.f: 'scientium', Gender.n: 'scientium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'scientī', Gender.f: 'scientī', Gender.n: 'scientī'},
            Number.p: {Gender.m: 'scientibus', Gender.f: 'scientibus', Gender.n: 'scientibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'sciente', Gender.f: 'sciente', Gender.n: 'sciente'},
            Number.p: {Gender.m: 'scientibus', Gender.f: 'scientibus', Gender.n: 'scientibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'sciēns', Gender.f: 'sciēns', Gender.n: 'sciēns'},
            Number.p: {Gender.m: 'scientēs', Gender.f: 'scientēs', Gender.n: 'scientia'}
          },
        },
      ),
    },
    Tense.perfect: {
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'scītus', Gender.f: 'scīta', Gender.n: 'scītum'},
            Number.p: {Gender.m: 'scītī', Gender.f: 'scītae', Gender.n: 'scīta'},
          },
          Case.acc: {
            Number.s: {Gender.m: 'scītum', Gender.f: 'scītam', Gender.n: 'scītum'},
            Number.p: {Gender.m: 'scītōs', Gender.f: 'scītās', Gender.n: 'scīta'},
          },
          Case.gen: {
            Number.s: {Gender.m: 'scītī', Gender.f: 'scītae', Gender.n: 'scītī'},
            Number.p: {Gender.m: 'scītōrum', Gender.f: 'scītārum', Gender.n: 'scītōrum'},
          },
          Case.dat: {
            Number.s: {Gender.m: 'scītō', Gender.f: 'scītae', Gender.n: 'scītō'},
            Number.p: {Gender.m: 'scītīs', Gender.f: 'scītīs', Gender.n: 'scītīs'},
          },
          Case.abl: {
            Number.s: {Gender.m: 'scītō', Gender.f: 'scītā', Gender.n: 'scītō'},
            Number.p: {Gender.m: 'scītīs', Gender.f: 'scītīs', Gender.n: 'scītīs'},
          },
          Case.voc: {
            Number.s: {Gender.m: 'scīte', Gender.f: 'scīta', Gender.n: 'scītum'},
            Number.p: {Gender.m: 'scītī', Gender.f: 'scītae', Gender.n: 'scīta'},
          },
        },
      ),
    },
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'scītūrus', Gender.f: 'scītūra', Gender.n: 'scītūrum'},
            Number.p: {Gender.m: 'scītūrī', Gender.f: 'scītūrae', Gender.n: 'scītūra'},
          },
          Case.acc: {
            Number.s: {Gender.m: 'scītūrum', Gender.f: 'scītūram', Gender.n: 'scītūrum'},
            Number.p: {Gender.m: 'scītūrōs', Gender.f: 'scītūrās', Gender.n: 'scītūra'},
          },
          Case.gen: {
            Number.s: {Gender.m: 'scītūrī', Gender.f: 'scītūrae', Gender.n: 'scītūrī'},
            Number.p: {Gender.m: 'scītūrōrum', Gender.f: 'scītūrārum', Gender.n: 'scītūrōrum'},
          },
          Case.dat: {
            Number.s: {Gender.m: 'scītūrō', Gender.f: 'scītūrae', Gender.n: 'scītūrō'},
            Number.p: {Gender.m: 'scītūrīs', Gender.f: 'scītūrīs', Gender.n: 'scītūrīs'},
          },
          Case.abl: {
            Number.s: {Gender.m: 'scītūrō', Gender.f: 'scītūrā', Gender.n: 'scītūrō'},
            Number.p: {Gender.m: 'scītūrīs', Gender.f: 'scītūrīs', Gender.n: 'scītūrīs'},
          },
          Case.voc: {
            Number.s: {Gender.m: 'scītūre', Gender.f: 'scītūra', Gender.n: 'scītūrum'},
            Number.p: {Gender.m: 'scītūrī', Gender.f: 'scītūrae', Gender.n: 'scītūra'},
          },
        },
      ),
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'sciendus', Gender.f: 'scienda', Gender.n: 'sciendum'},
            Number.p: {Gender.m: 'sciendī', Gender.f: 'sciendae', Gender.n: 'scienda'},
          },
          Case.acc: {
            Number.s: {Gender.m: 'sciendum', Gender.f: 'sciendam', Gender.n: 'sciendum'},
            Number.p: {Gender.m: 'sciendōs', Gender.f: 'sciendās', Gender.n: 'scienda'},
          },
          Case.gen: {
            Number.s: {Gender.m: 'sciendī', Gender.f: 'sciendae', Gender.n: 'sciendī'},
            Number.p: {Gender.m: 'sciendōrum', Gender.f: 'sciendārum', Gender.n: 'sciendōrum'},
          },
          Case.dat: {
            Number.s: {Gender.m: 'sciendō', Gender.f: 'sciendae', Gender.n: 'sciendō'},
            Number.p: {Gender.m: 'sciendīs', Gender.f: 'sciendīs', Gender.n: 'sciendīs'},
          },
          Case.abl: {
            Number.s: {Gender.m: 'sciendō', Gender.f: 'sciendā', Gender.n: 'sciendō'},
            Number.p: {Gender.m: 'sciendīs', Gender.f: 'sciendīs', Gender.n: 'sciendīs'},
          },
          Case.voc: {
            Number.s: {Gender.m: 'sciende', Gender.f: 'scienda', Gender.n: 'sciendum'},
            Number.p: {Gender.m: 'sciendī', Gender.f: 'sciendae', Gender.n: 'scienda'},
          },
        },
      ),
    },
  },
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'sciō', Person.second: 'scīs', Person.third: 'scit'},
          Number.p: {Person.first: 'scīmus', Person.second: 'scītis', Person.third: 'sciunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'sciēbam', Person.second: 'sciēbās', Person.third: 'sciēbat'},
          Number.p: {Person.first: 'sciēbāmus', Person.second: 'sciēbātis', Person.third: 'sciēbant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'sciam', Person.second: 'sciēs', Person.third: 'sciet'},
          Number.p: {Person.first: 'sciēmus', Person.second: 'sciētis', Person.third: 'scient'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'scīvī', Person.second: 'scīvistī', Person.third: 'scīvit'},
          Number.p: {Person.first: 'scīvimus', Person.second: 'scīvistis', Person.third: 'scīvērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'scīveram', Person.second: 'scieram', Person.third: 'scīverat'},
          Number.p: {Person.first: 'scīverāmus', Person.second: 'scierāmus', Person.third: 'scīverant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'scīverō', Person.second: 'scierō', Person.third: 'scīverit'},
          Number.p: {Person.first: 'scīverimus', Person.second: 'scierimus', Person.third: 'scīverint'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'scior', Person.second: 'scīris', Person.third: 'scītur'},
          Number.p: {Person.first: 'scīmur', Person.second: 'scīminī', Person.third: 'sciuntur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'sciēbar', Person.second: 'sciēbāris', Person.third: 'sciēbātur'},
          Number.p: {Person.first: 'sciēbāmur', Person.second: 'sciēbāminī', Person.third: 'sciēbantur'},
        },
        Tense.future: {
          Number.s: {Person.first: 'sciar', Person.second: 'sciēris', Person.third: 'sciētur'},
          Number.p: {Person.first: 'sciēmur', Person.second: 'sciēminī', Person.third: 'scientur'},
        },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'sciam', Person.second: 'sciās', Person.third: 'sciat'},
          Number.p: {Person.first: 'sciāmus', Person.second: 'sciātis', Person.third: 'sciant'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'scīrem', Person.second: 'scīrēs', Person.third: 'scīret'},
          Number.p: {Person.first: 'scīrēmus', Person.second: 'scīrētis', Person.third: 'scīrent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'scīverim', Person.second: 'scierim', Person.third: 'scīverit'},
          Number.p: {Person.first: 'scīverīmus', Person.second: 'scierīmus', Person.third: 'scīverint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'scīvissem', Person.second: 'sciissem', Person.third: 'scīvisset'},
          Number.p: {Person.first: 'scīvissēmus', Person.second: 'sciissēmus', Person.third: 'scīvissent'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'sciar', Person.second: 'sciāris', Person.third: 'sciātur'},
          Number.p: {Person.first: 'sciāmur', Person.second: 'sciāminī', Person.third: 'sciāntur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'scīrer', Person.second: 'scīrēris', Person.third: 'scīrētur'},
          Number.p: {Person.first: 'scīrēmur', Person.second: 'scīrēminī', Person.third: 'scīrentur'},
        },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'scī'},
          Number.p: {Person.second: 'scīte'},
        },
        Tense.future: {
          Number.s: {Person.second: 'scītō', Person.third: 'scītō'},
          Number.p: {Person.second: 'scītōte', Person.third: 'sciuntō'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.second: 'scīre'},
          Number.p: {Person.second: 'sciāminī'},
        },
        Tense.future: {
          Number.s: {Person.second: 'scītor', Person.third: 'scītor'},
          Number.p: {Person.third: 'sciuntor'},
        },
      },
    },
  },
);

LatinVerb habere = LatinVerb(
  infinitives: {
    Tense.present: {
      Voice.act: 'habēre',
      Voice.pas: 'habērī',
    },
    Tense.perfect: {
      Voice.act: 'habuerisse',
    },
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'habēns', Gender.f: 'habēns', Gender.n: 'habēns'},
            Number.p: {Gender.m: 'habēntēs', Gender.f: 'habēntēs', Gender.n: 'habēntia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'habēntem', Gender.f: 'habēntem', Gender.n: 'habēns'},
            Number.p: {Gender.m: 'habēntēs', Gender.f: 'habēntēs', Gender.n: 'habēntia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'habēntis', Gender.f: 'habēntis', Gender.n: 'habēntis'},
            Number.p: {Gender.m: 'habēntium', Gender.f: 'habēntium', Gender.n: 'habēntium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'habēntī', Gender.f: 'habēntī', Gender.n: 'habēntī'},
            Number.p: {Gender.m: 'habēntibus', Gender.f: 'habēntibus', Gender.n: 'habēntibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'habēnte', Gender.f: 'habēnte', Gender.n: 'habēnte'},
            Number.p: {Gender.m: 'habēntibus', Gender.f: 'habēntibus', Gender.n: 'habēntibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'habēns', Gender.f: 'habēns', Gender.n: 'habēns'},
            Number.p: {Gender.m: 'habēntēs', Gender.f: 'habēntēs', Gender.n: 'habēntia'}
          },
        },
      ),
    },
    Tense.perfect: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'habitus', Gender.f: 'habita', Gender.n: 'habitum'},
            Number.p: {Gender.m: 'habitī', Gender.f: 'habitae', Gender.n: 'habitae'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'habitum', Gender.f: 'habitam', Gender.n: 'habitum'},
            Number.p: {Gender.m: 'habitōs', Gender.f: 'habitās', Gender.n: 'habitae'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'habitiī', Gender.f: 'habitae', Gender.n: 'habitiī'},
            Number.p: {Gender.m: 'habitōrum', Gender.f: 'habitārum', Gender.n: 'habitārum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'habitō', Gender.f: 'habitae', Gender.n: 'habitō'},
            Number.p: {Gender.m: 'habitiīs', Gender.f: 'habitiīs', Gender.n: 'habitiīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'habitō', Gender.f: 'habitā', Gender.n: 'habitō'},
            Number.p: {Gender.m: 'habitiīs', Gender.f: 'habitiīs', Gender.n: 'habitiīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'habite', Gender.f: 'habita', Gender.n: 'habitum'},
            Number.p: {Gender.m: 'habitī', Gender.f: 'habitae', Gender.n: 'habitae'}
          },
        },
      ),
    },
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'habitūrus', Gender.f: 'habitūra', Gender.n: 'habitūrum'},
            Number.p: {Gender.m: 'habitūrī', Gender.f: 'habitūrae', Gender.n: 'habitūra'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'habitūrum', Gender.f: 'habitūram', Gender.n: 'habitūrum'},
            Number.p: {Gender.m: 'habitūrōs', Gender.f: 'habitūrās', Gender.n: 'habitūra'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'habitūrī', Gender.f: 'habitūrae', Gender.n: 'habitūrī'},
            Number.p: {Gender.m: 'habitūrōrum', Gender.f: 'habitūrārum', Gender.n: 'habitūrōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'habitūrō', Gender.f: 'habitūrae', Gender.n: 'habitūrō'},
            Number.p: {Gender.m: 'habitūrīs', Gender.f: 'habitūrīs', Gender.n: 'habitūrīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'habitūrō', Gender.f: 'habitūrā', Gender.n: 'habitūrō'},
            Number.p: {Gender.m: 'habitūrīs', Gender.f: 'habitūrīs', Gender.n: 'habitūrīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'habitūre', Gender.f: 'habitūra', Gender.n: 'habitūrum'},
            Number.p: {Gender.m: 'habitūrī', Gender.f: 'habitūrae', Gender.n: 'habitūra'}
          },
        },
      ),
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'habendus', Gender.f: 'habenda', Gender.n: 'habendum'},
            Number.p: {Gender.m: 'habendī', Gender.f: 'habendae', Gender.n: 'habenda'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'habendum', Gender.f: 'habendam', Gender.n: 'habendum'},
            Number.p: {Gender.m: 'habendōs', Gender.f: 'habendās', Gender.n: 'habenda'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'habendī', Gender.f: 'habendae', Gender.n: 'habendī'},
            Number.p: {Gender.m: 'habendōrum', Gender.f: 'habendārum', Gender.n: 'habendārum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'habendō', Gender.f: 'habendae', Gender.n: 'habendō'},
            Number.p: {Gender.m: 'habendīs', Gender.f: 'habendīs', Gender.n: 'habendīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'habendō', Gender.f: 'habendā', Gender.n: 'habendō'},
            Number.p: {Gender.m: 'habendīs', Gender.f: 'habendīs', Gender.n: 'habendīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'habende', Gender.f: 'habenda', Gender.n: 'habendum'},
            Number.p: {Gender.m: 'habendī', Gender.f: 'habendae', Gender.n: 'habenda'}
          },
        },
      ),
    },
  },
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'habeō', Person.second: 'habēs', Person.third: 'habet'},
          Number.p: {Person.first: 'habēmus', Person.second: 'habētis', Person.third: 'habēnt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'habēbam', Person.second: 'habēbās', Person.third: 'habēbat'},
          Number.p: {Person.first: 'habēbāmus', Person.second: 'habēbātis', Person.third: 'habēbant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'habēbō', Person.second: 'habēbis', Person.third: 'habēbit'},
          Number.p: {Person.first: 'habēbimus', Person.second: 'habēbitis', Person.third: 'habēbunt'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'habuī', Person.second: 'habuīsti', Person.third: 'habuit'},
          Number.p: {Person.first: 'habuīmus', Person.second: 'habuīstis', Person.third: 'habuērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'habueram', Person.second: 'habueras', Person.third: 'habuerat'},
          Number.p: {Person.first: 'habueramus', Person.second: 'habueratis', Person.third: 'habuerant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'habuero', Person.second: 'habueris', Person.third: 'habuerit'},
          Number.p: {Person.first: 'habuerimus', Person.second: 'habueritis', Person.third: 'habuerint'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'habeor', Person.second: 'habēris', Person.third: 'habētur'},
          Number.p: {Person.first: 'habēmur', Person.second: 'habēminī', Person.third: 'habēntur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'habēbar', Person.second: 'habēbāris', Person.third: 'habēbātur'},
          Number.p: {Person.first: 'habēbāmur', Person.second: 'habēbāminī', Person.third: 'habēbantur'},
        },
        Tense.future: {
          Number.s: {Person.first: 'habēbor', Person.second: 'habēberis', Person.third: 'habēbitur'},
          Number.p: {Person.first: 'habēbimur', Person.second: 'habēbiminī', Person.third: 'habēbuntur'},
        },
        // Tense.perfect: {
        //   Number.s: {Person.first: 'habitus sum', Person.second: 'habitus es', Person.third: 'habitus est'},
        //   Number.p: {Person.first: 'habiti sumus', Person.second: 'habiti estis', Person.third: 'habiti sunt'},
        // },
        // Tense.pluperfect: {
        //   Number.s: {Person.first: 'habitus eram', Person.second: 'habitus eras', Person.third: 'habitus erat'},
        //   Number.p: {Person.first: 'habiti eramus', Person.second: 'habiti eratis', Person.third: 'habiti erant'},
        // },
        // Tense.futurePerfect: {
        //   Number.s: {Person.first: 'habitus ero', Person.second: 'habitus eris', Person.third: 'habitus erit'},
        //   Number.p: {Person.first: 'habiti erimus', Person.second: 'habiti eritis', Person.third: 'habiti erint'},
        // },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'habeam', Person.second: 'habeās', Person.third: 'habeat'},
          Number.p: {Person.first: 'habeāmus', Person.second: 'habeātis', Person.third: 'habeant'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'habērem', Person.second: 'habērēs', Person.third: 'habēret'},
          Number.p: {Person.first: 'habērēmus', Person.second: 'habērētis', Person.third: 'habērent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'habuerim', Person.second: 'habueris', Person.third: 'habuerit'},
          Number.p: {Person.first: 'habuerimus', Person.second: 'habueritis', Person.third: 'habuerint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'habuissem', Person.second: 'habuisses', Person.third: 'habuisset'},
          Number.p: {Person.first: 'habuissēmus', Person.second: 'habuissētis', Person.third: 'habuissent'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'habear', Person.second: 'habeāris', Person.third: 'habeātur'},
          Number.p: {Person.first: 'habeāmur', Person.second: 'habeāminī', Person.third: 'habeantur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'habērer', Person.second: 'habērēris', Person.third: 'habērētur'},
          Number.p: {Person.first: 'habērēmur', Person.second: 'habērēminī', Person.third: 'habērentur'},
        },
        // Tense.perfect: {
        //   Number.s: {Person.first: 'habitus sim', Person.second: 'habitus sis', Person.third: 'habitus sit'},
        //   Number.p: {Person.first: 'habiti sīmus', Person.second: 'habiti sītis', Person.third: 'habiti sint'},
        // },
        // Tense.pluperfect: {
        //   Number.s: {Person.first: 'habitus essem', Person.second: 'habitus esses', Person.third: 'habitus esset'},
        //   Number.p: {Person.first: 'habiti essēmus', Person.second: 'habiti essētis', Person.third: 'habiti essent'},
        // },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'habē'},
          Number.p: {Person.second: 'habēte'},
        },
        Tense.future: {
          Number.s: {Person.second: 'habētō', Person.third: 'habētō'},
          Number.p: {Person.second: 'habētōte', Person.third: 'habentō'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.second: 'habēre'},
          Number.p: {Person.second: 'habēminī'},
        },
        Tense.future: {
          Number.s: {Person.second: 'habētor', Person.third: 'habētor'},
          Number.p: {Person.third: 'habentor'},
        },
      },
    },
  },
);

//TECHNICALLY this has passive forms but they are literally NEVER USED so I will omit them in the conjugation structure
LatinVerb ire = LatinVerb(
  infinitives: {
    Tense.present: {
      Voice.act: 'īre',
    },
    Tense.perfect: {
      Voice.act: 'īsse',
      Voice.pas: 'īrī',
    },
    Tense.future: {
      Voice.act: 'itūrum esse',
    },
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'iēns', Gender.f: 'iēns', Gender.n: 'iēns'},
            Number.p: {Gender.m: 'ientēs', Gender.f: 'ientēs', Gender.n: 'ientia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'ientem', Gender.f: 'ientem', Gender.n: 'iēns'},
            Number.p: {Gender.m: 'ientēs', Gender.f: 'ientēs', Gender.n: 'ientia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'ientis', Gender.f: 'ientis', Gender.n: 'ientis'},
            Number.p: {Gender.m: 'ientium', Gender.f: 'ientium', Gender.n: 'ientium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'ientī', Gender.f: 'ientī', Gender.n: 'ientī'},
            Number.p: {Gender.m: 'ientibus', Gender.f: 'ientibus', Gender.n: 'ientibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'iente', Gender.f: 'iente', Gender.n: 'iente'},
            Number.p: {Gender.m: 'ientibus', Gender.f: 'ientibus', Gender.n: 'ientibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'iēns', Gender.f: 'iēns', Gender.n: 'iēns'},
            Number.p: {Gender.m: 'ientēs', Gender.f: 'ientēs', Gender.n: 'ientia'}
          },
        },
      ),
    },
    Tense.perfect: {
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'itus', Gender.f: 'ita', Gender.n: 'itum'},
            Number.p: {Gender.m: 'itī', Gender.f: 'itae', Gender.n: 'ita'},
          },
          Case.acc: {
            Number.s: {Gender.m: 'itum', Gender.f: 'itam', Gender.n: 'itum'},
            Number.p: {Gender.m: 'itōs', Gender.f: 'itās', Gender.n: 'ita'},
          },
          Case.gen: {
            Number.s: {Gender.m: 'itī', Gender.f: 'itae', Gender.n: 'itī'},
            Number.p: {Gender.m: 'itōrum', Gender.f: 'itārum', Gender.n: 'itōrum'},
          },
          Case.dat: {
            Number.s: {Gender.m: 'itō', Gender.f: 'itae', Gender.n: 'itō'},
            Number.p: {Gender.m: 'itīs', Gender.f: 'itīs', Gender.n: 'itīs'},
          },
          Case.abl: {
            Number.s: {Gender.m: 'itō', Gender.f: 'itā', Gender.n: 'itō'},
            Number.p: {Gender.m: 'itīs', Gender.f: 'itīs', Gender.n: 'itīs'},
          },
          Case.voc: {
            Number.s: {Gender.m: 'ite', Gender.f: 'ita', Gender.n: 'itum'},
            Number.p: {Gender.m: 'itī', Gender.f: 'itae', Gender.n: 'ita'},
          },
        },
      ),
    },
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'itūrus', Gender.f: 'itūra', Gender.n: 'itūrum'},
            Number.p: {Gender.m: 'itūrī', Gender.f: 'itūrae', Gender.n: 'itūra'},
          },
          Case.acc: {
            Number.s: {Gender.m: 'itūrum', Gender.f: 'itūram', Gender.n: 'itūrum'},
            Number.p: {Gender.m: 'itūrōs', Gender.f: 'itūrās', Gender.n: 'itūra'},
          },
          Case.gen: {
            Number.s: {Gender.m: 'itūrī', Gender.f: 'itūrae', Gender.n: 'itūrī'},
            Number.p: {Gender.m: 'itūrōrum', Gender.f: 'itūrārum', Gender.n: 'itūrōrum'},
          },
          Case.dat: {
            Number.s: {Gender.m: 'itūrō', Gender.f: 'itūrae', Gender.n: 'itūrō'},
            Number.p: {Gender.m: 'itūrīs', Gender.f: 'itūrīs', Gender.n: 'itūrīs'},
          },
          Case.abl: {
            Number.s: {Gender.m: 'itūrō', Gender.f: 'itūrā', Gender.n: 'itūrō'},
            Number.p: {Gender.m: 'itūrīs', Gender.f: 'itūrīs', Gender.n: 'itūrīs'},
          },
          Case.voc: {
            Number.s: {Gender.m: 'itūre', Gender.f: 'itūra', Gender.n: 'itūrum'},
            Number.p: {Gender.m: 'itūrī', Gender.f: 'itūrae', Gender.n: 'itūra'},
          },
        },
      ),
    },
  },
  conjugationStructure: latinActiveOnlyConjugationStructure,
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'eō', Person.second: 'īs', Person.third: 'it'},
          Number.p: {Person.first: 'īmus', Person.second: 'ītis', Person.third: 'eunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'ībam', Person.second: 'ībās', Person.third: 'ībat'},
          Number.p: {Person.first: 'ībāmus', Person.second: 'ībātis', Person.third: 'ībant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'ībō', Person.second: 'ībis', Person.third: 'ībit'},
          Number.p: {Person.first: 'ībimus', Person.second: 'ībitis', Person.third: 'ībunt'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'iī', Person.second: 'īvistī', Person.third: 'īvit'},
          Number.p: {Person.first: 'iimus', Person.second: 'īstis', Person.third: 'iērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'ieram', Person.second: 'ierās', Person.third: 'ierat'},
          Number.p: {Person.first: 'ierāmus', Person.second: 'ierātis', Person.third: 'ierant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'ierō', Person.second: 'ieris', Person.third: 'ierit'},
          Number.p: {Person.first: 'ierimus', Person.second: 'ieritis', Person.third: 'ierint'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'eor', Person.second: 'īris', Person.third: 'ītur'},
          Number.p: {Person.first: 'īmur', Person.second: 'īminī', Person.third: 'euntur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'ībar', Person.second: 'ībāris', Person.third: 'ībātur'},
          Number.p: {Person.first: 'ībāmur', Person.second: 'ībāminī', Person.third: 'ībantur'},
        },
        Tense.future: {
          Number.s: {Person.first: 'ībor', Person.second: 'īberis', Person.third: 'ībitur'},
          Number.p: {Person.first: 'ībimur', Person.second: 'ībiminī', Person.third: 'ībuntur'},
        },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'eam', Person.second: 'eās', Person.third: 'eat'},
          Number.p: {Person.first: 'eāmus', Person.second: 'eātis', Person.third: 'eant'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'īrem', Person.second: 'īrēs', Person.third: 'īret'},
          Number.p: {Person.first: 'īrēmus', Person.second: 'īrētis', Person.third: 'īrent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'ierim', Person.second: 'ierīs', Person.third: 'ierit'},
          Number.p: {Person.first: 'ierīmus', Person.second: 'ierītis', Person.third: 'ierint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'īssem', Person.second: 'īssēs', Person.third: 'īsset'},
          Number.p: {Person.first: 'īssēmus', Person.second: 'īssētis', Person.third: 'īssent'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'ear', Person.second: 'eāris', Person.third: 'eātur'},
          Number.p: {Person.first: 'eāmur', Person.second: 'eāminī', Person.third: 'eantur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'īrer', Person.second: 'īrēris', Person.third: 'īrētur'},
          Number.p: {Person.first: 'īrēmur', Person.second: 'īrēminī', Person.third: 'īrentur'},
        },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'ī'},
          Number.p: {Person.second: 'īte'},
        },
        Tense.future: {
          Number.s: {Person.second: 'ītō', Person.third: 'ītō'},
          Number.p: {Person.second: 'ītōte', Person.third: 'euntō'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.second: 'īre'},
          Number.p: {Person.second: 'īminī'},
        },
        Tense.future: {
          Number.s: {Person.second: 'ītor', Person.third: 'ītor'},
          Number.p: {Person.third: 'euntor'},
        },
      },
    },
  },
);
LatinVerb posse = LatinVerb(
  infinitives: {
    Tense.present: {Voice.act: 'posse'},
    Tense.perfect: {Voice.act: 'potuisse'},
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'potēns', Gender.f: 'potēns', Gender.n: 'potēns'},
            Number.p: {Gender.m: 'potentēs', Gender.f: 'potentēs', Gender.n: 'potentia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'potentem', Gender.f: 'potentem', Gender.n: 'potēns'},
            Number.p: {Gender.m: 'potentēs', Gender.f: 'potentēs', Gender.n: 'potentia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'potentis', Gender.f: 'potentis', Gender.n: 'potentis'},
            Number.p: {Gender.m: 'potentium', Gender.f: 'potentium', Gender.n: 'potentium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'potentī', Gender.f: 'potentī', Gender.n: 'potentī'},
            Number.p: {Gender.m: 'potentibus', Gender.f: 'potentibus', Gender.n: 'potentibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'potente', Gender.f: 'potente', Gender.n: 'potente'},
            Number.p: {Gender.m: 'potentibus', Gender.f: 'potentibus', Gender.n: 'potentibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'potēns', Gender.f: 'potēns', Gender.n: 'potēns'},
            Number.p: {Gender.m: 'potentēs', Gender.f: 'potentēs', Gender.n: 'potentia'}
          },
        },
      ),
    },
  },
  conjugationStructure: latinActiveOnlyConjugationStructureWithNoImperative,
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'possum', Person.second: 'potes', Person.third: 'potest'},
          Number.p: {Person.first: 'possumus', Person.second: 'potestis', Person.third: 'possunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'poteram', Person.second: 'poterās', Person.third: 'poterat'},
          Number.p: {Person.first: 'poterāmus', Person.second: 'poterātis', Person.third: 'poterant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'poterō', Person.second: 'poteris', Person.third: 'poterit'},
          Number.p: {Person.first: 'poterimus', Person.second: 'poteritis', Person.third: 'poterunt'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'potuī', Person.second: 'potuistī', Person.third: 'potuit'},
          Number.p: {Person.first: 'potuimus', Person.second: 'potuistis', Person.third: 'potuērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'potueram', Person.second: 'potuerās', Person.third: 'potuerat'},
          Number.p: {Person.first: 'potuerāmus', Person.second: 'potuerātis', Person.third: 'potuerant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'potuerō', Person.second: 'potueris', Person.third: 'potuerit'},
          Number.p: {Person.first: 'potuerimus', Person.second: 'potueritis', Person.third: 'potuerint'},
        },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'possim', Person.second: 'possīs', Person.third: 'possit'},
          Number.p: {Person.first: 'possīmus', Person.second: 'possītis', Person.third: 'possint'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'possem', Person.second: 'possēs', Person.third: 'posset'},
          Number.p: {Person.first: 'possēmus', Person.second: 'possētis', Person.third: 'possent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'potuerim', Person.second: 'potuerīs', Person.third: 'potuerit'},
          Number.p: {Person.first: 'potuerīmus', Person.second: 'potuerītis', Person.third: 'potuerint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'potuissem', Person.second: 'potuissēs', Person.third: 'potuisset'},
          Number.p: {Person.first: 'potuissēmus', Person.second: 'potuissētis', Person.third: 'potuissent'},
        },
      },
    },
  },
);

LatinVerb amare = LatinVerb(
  infinitives: {
    Tense.present: {
      Voice.act: 'amāre',
      Voice.pas: 'amārī',
    },
    Tense.perfect: {
      Voice.act: 'amāvisse',
    },
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'amāns', Gender.f: 'amāns', Gender.n: 'amāns'},
            Number.p: {Gender.m: 'amantēs', Gender.f: 'amantēs', Gender.n: 'amantia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'amantem', Gender.f: 'amantem', Gender.n: 'amāns'},
            Number.p: {Gender.m: 'amantēs', Gender.f: 'amantēs', Gender.n: 'amantia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'amantis', Gender.f: 'amantis', Gender.n: 'amantis'},
            Number.p: {Gender.m: 'amantium', Gender.f: 'amantium', Gender.n: 'amantium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'amantī', Gender.f: 'amantī', Gender.n: 'amantī'},
            Number.p: {Gender.m: 'amantibus', Gender.f: 'amantibus', Gender.n: 'amantibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'amante', Gender.f: 'amante', Gender.n: 'amante'},
            Number.p: {Gender.m: 'amantibus', Gender.f: 'amantibus', Gender.n: 'amantibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'amāns', Gender.f: 'amāns', Gender.n: 'amāns'},
            Number.p: {Gender.m: 'amantēs', Gender.f: 'amantēs', Gender.n: 'amantia'}
          },
        },
      ),
    },
    Tense.perfect: {
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'amātus', Gender.f: 'amāta', Gender.n: 'amātum'},
            Number.p: {Gender.m: 'amātī', Gender.f: 'amātae', Gender.n: 'amāta'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'amātum', Gender.f: 'amātam', Gender.n: 'amātum'},
            Number.p: {Gender.m: 'amātōs', Gender.f: 'amātās', Gender.n: 'amāta'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'amātī', Gender.f: 'amātae', Gender.n: 'amātī'},
            Number.p: {Gender.m: 'amātōrum', Gender.f: 'amātārum', Gender.n: 'amātōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'amātō', Gender.f: 'amātae', Gender.n: 'amātō'},
            Number.p: {Gender.m: 'amātīs', Gender.f: 'amātīs', Gender.n: 'amātīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'amātō', Gender.f: 'amātā', Gender.n: 'amātō'},
            Number.p: {Gender.m: 'amātīs', Gender.f: 'amātīs', Gender.n: 'amātīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'amāte', Gender.f: 'amāta', Gender.n: 'amātum'},
            Number.p: {Gender.m: 'amātī', Gender.f: 'amātae', Gender.n: 'amāta'}
          },
        },
      ),
    },
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'amātūrus', Gender.f: 'amātūra', Gender.n: 'amātūrum'},
            Number.p: {Gender.m: 'amātūrī', Gender.f: 'amātūrae', Gender.n: 'amātūra'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'amātūrum', Gender.f: 'amātūram', Gender.n: 'amātūrum'},
            Number.p: {Gender.m: 'amātūrōs', Gender.f: 'amātūrās', Gender.n: 'amātūra'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'amātūrī', Gender.f: 'amātūrae', Gender.n: 'amātūrī'},
            Number.p: {Gender.m: 'amātūrōrum', Gender.f: 'amātūrārum', Gender.n: 'amātūrōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'amātūrō', Gender.f: 'amātūrae', Gender.n: 'amātūrō'},
            Number.p: {Gender.m: 'amātūrīs', Gender.f: 'amātūrīs', Gender.n: 'amātūrīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'amātūrō', Gender.f: 'amātūrā', Gender.n: 'amātūrō'},
            Number.p: {Gender.m: 'amātūrīs', Gender.f: 'amātūrīs', Gender.n: 'amātūrīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'amātūre', Gender.f: 'amātūra', Gender.n: 'amātūrum'},
            Number.p: {Gender.m: 'amātūrī', Gender.f: 'amātūrae', Gender.n: 'amātūra'}
          },
        },
      ),
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'amandus', Gender.f: 'amanda', Gender.n: 'amandum'},
            Number.p: {Gender.m: 'amandī', Gender.f: 'amandae', Gender.n: 'amanda'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'amandum', Gender.f: 'amandam', Gender.n: 'amandum'},
            Number.p: {Gender.m: 'amandōs', Gender.f: 'amandās', Gender.n: 'amanda'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'amandī', Gender.f: 'amandae', Gender.n: 'amandī'},
            Number.p: {Gender.m: 'amandōrum', Gender.f: 'amandārum', Gender.n: 'amandōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'amandō', Gender.f: 'amandae', Gender.n: 'amandō'},
            Number.p: {Gender.m: 'amandīs', Gender.f: 'amandīs', Gender.n: 'amandīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'amandō', Gender.f: 'amandā', Gender.n: 'amandō'},
            Number.p: {Gender.m: 'amandīs', Gender.f: 'amandīs', Gender.n: 'amandīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'amande', Gender.f: 'amanda', Gender.n: 'amandum'},
            Number.p: {Gender.m: 'amandī', Gender.f: 'amandae', Gender.n: 'amanda'}
          },
        },
      ),
    },
  },
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'amō', Person.second: 'amās', Person.third: 'amat'},
          Number.p: {Person.first: 'amāmus', Person.second: 'amātis', Person.third: 'amant'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'amābam', Person.second: 'amābās', Person.third: 'amābat'},
          Number.p: {Person.first: 'amābāmus', Person.second: 'amābātis', Person.third: 'amābant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'amābō', Person.second: 'amābis', Person.third: 'amābit'},
          Number.p: {Person.first: 'amābimus', Person.second: 'amābitis', Person.third: 'amābunt'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'amāvī', Person.second: 'amāvistī', Person.third: 'amāvit'},
          Number.p: {Person.first: 'amāvimus', Person.second: 'amāvistis', Person.third: 'amāvērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'amāveram', Person.second: 'amāverās', Person.third: 'amāverat'},
          Number.p: {Person.first: 'amāverāmus', Person.second: 'amāverātis', Person.third: 'amāverant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'amāvero', Person.second: 'amāveris', Person.third: 'amāverit'},
          Number.p: {Person.first: 'amāverimus', Person.second: 'amāveritis', Person.third: 'amāverint'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'amor', Person.second: 'amāris', Person.third: 'amātur'},
          Number.p: {Person.first: 'amāmur', Person.second: 'amāminī', Person.third: 'amantur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'amābar', Person.second: 'amābāris', Person.third: 'amābātur'},
          Number.p: {Person.first: 'amābāmur', Person.second: 'amābāminī', Person.third: 'amābantur'},
        },
        Tense.future: {
          Number.s: {Person.first: 'amābor', Person.second: 'amāberis', Person.third: 'amābitur'},
          Number.p: {Person.first: 'amābimur', Person.second: 'amābiminī', Person.third: 'amābuntur'},
        },
        //Participle dependant forms are not listed here.
        // Tense.perfect: {
        //   Number.s: {Person.first: 'amātus sum', Person.second: 'amātus es', Person.third: 'amātus est'},
        //   Number.p: {Person.first: 'amātī sumus', Person.second: 'amātī estis', Person.third: 'amātī sunt'},
        // },
        // Tense.pluperfect: {
        //   Number.s: {Person.first: 'amātus eram', Person.second: 'amātus erās', Person.third: 'amātus erat'},
        //   Number.p: {Person.first: 'amātī erāmus', Person.second: 'amātī erātis', Person.third: 'amātī erant'},
        // },
        // Tense.futurePerfect: {
        //   Number.s: {Person.first: 'amātus ero', Person.second: 'amātus eris', Person.third: 'amātus erit'},
        //   Number.p: {Person.first: 'amātī erimus', Person.second: 'amātī eritis', Person.third: 'amātī erunt'},
        // },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'amem', Person.second: 'amēs', Person.third: 'amet'},
          Number.p: {Person.first: 'amēmus', Person.second: 'amētis', Person.third: 'ament'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'amārem', Person.second: 'amārēs', Person.third: 'amāret'},
          Number.p: {Person.first: 'amārēmus', Person.second: 'amārētis', Person.third: 'amārent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'amāverim', Person.second: 'amāveris', Person.third: 'amāverit'},
          Number.p: {Person.first: 'amāverimus', Person.second: 'amāveritis', Person.third: 'amāverint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'amāvissem', Person.second: 'amāvissēs', Person.third: 'amāvisset'},
          Number.p: {Person.first: 'amāvissēmus', Person.second: 'amāvissētis', Person.third: 'amāvissent'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'amer', Person.second: 'amēris', Person.third: 'amētur'},
          Number.p: {Person.first: 'amēmur', Person.second: 'amēminī', Person.third: 'amentur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'amārer', Person.second: 'amārēris', Person.third: 'amārētur'},
          Number.p: {Person.first: 'amārēmur', Person.second: 'amārēminī', Person.third: 'amārentur'},
        },
        // Tense.perfect: {
        //   Number.s: {Person.first: 'amātus sim', Person.second: 'amātus sis', Person.third: 'amātus sit'},
        //   Number.p: {Person.first: 'amātī simus', Person.second: 'amātī sitis', Person.third: 'amātī sint'},
        // },
        // Tense.pluperfect: {
        //   Number.s: {Person.first: 'amātus essem', Person.second: 'amātus essēs', Person.third: 'amātus esset'},
        //   Number.p: {Person.first: 'amātī essēmus', Person.second: 'amātī essētis', Person.third: 'amātī essent'},
        // },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'amā'},
          Number.p: {Person.second: 'amāte'}
        },
        Tense.future: {
          Number.s: {Person.second: 'amātō', Person.third: 'amātō'},
          Number.p: {Person.second: 'amātōte', Person.third: 'amantō'}
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.second: 'amāre'},
          Number.p: {Person.second: 'amāminī'}
        },
        Tense.future: {
          Number.s: {Person.second: 'amātor', Person.third: 'amātor'},
          Number.p: {Person.third: 'amantor'}
        },
      },
    },
  },
);
LatinVerb facere = LatinVerb(
  infinitives: {
    Tense.present: {
      Voice.act: 'facere',
    },
    Tense.perfect: {
      Voice.act: 'fēcisse',
    },
    Tense.future: {
      Voice.act: 'factūrum esse',
    },
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'faciēns', Gender.f: 'faciēns', Gender.n: 'faciēns'},
            Number.p: {Gender.m: 'facientes', Gender.f: 'facientes', Gender.n: 'facientia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'facientem', Gender.f: 'facientem', Gender.n: 'faciēns'},
            Number.p: {Gender.m: 'facientes', Gender.f: 'facientes', Gender.n: 'facientia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'facientis', Gender.f: 'facientis', Gender.n: 'facientis'},
            Number.p: {Gender.m: 'facientium', Gender.f: 'facientium', Gender.n: 'facientium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'facientī', Gender.f: 'facientī', Gender.n: 'facientī'},
            Number.p: {Gender.m: 'facientibus', Gender.f: 'facientibus', Gender.n: 'facientibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'faciente', Gender.f: 'faciente', Gender.n: 'faciente'},
            Number.p: {Gender.m: 'facientibus', Gender.f: 'facientibus', Gender.n: 'facientibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'faciēns', Gender.f: 'faciēns', Gender.n: 'faciēns'},
            Number.p: {Gender.m: 'facientes', Gender.f: 'facientes', Gender.n: 'facientia'}
          },
        },
      ),
    },
    Tense.perfect: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'factus', Gender.f: 'facta', Gender.n: 'factum'},
          },
          Case.acc: {
            Number.s: {Gender.m: 'factum', Gender.f: 'factam', Gender.n: 'factum'},
          },
          Case.gen: {
            Number.s: {Gender.m: 'factī', Gender.f: 'factae', Gender.n: 'factī'},
          },
          Case.dat: {
            Number.s: {Gender.m: 'factō', Gender.f: 'factae', Gender.n: 'factō'},
          },
          Case.abl: {
            Number.s: {Gender.m: 'factō', Gender.f: 'factā', Gender.n: 'factō'},
          },
          Case.voc: {
            Number.s: {Gender.m: 'facte', Gender.f: 'facta', Gender.n: 'factum'},
          },
        },
      ),
    },
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'factūrus', Gender.f: 'factūra', Gender.n: 'factūrum'},
          },
          Case.acc: {
            Number.s: {Gender.m: 'factūrum', Gender.f: 'factūram', Gender.n: 'factūrum'},
          },
          Case.gen: {
            Number.s: {Gender.m: 'factūrī', Gender.f: 'factūrae', Gender.n: 'factūrī'},
          },
          Case.dat: {
            Number.s: {Gender.m: 'factūrō', Gender.f: 'factūrae', Gender.n: 'factūrō'},
          },
          Case.abl: {
            Number.s: {Gender.m: 'factūrō', Gender.f: 'factūrā', Gender.n: 'factūrō'},
          },
          Case.voc: {
            Number.s: {Gender.m: 'factūre', Gender.f: 'factūra', Gender.n: 'factūrum'},
          },
        },
      ),
    },
  },
  conjugationStructure: latinConjugationStructureFacere,
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'faciō', Person.second: 'facis', Person.third: 'facit'},
          Number.p: {Person.first: 'facimus', Person.second: 'facitis', Person.third: 'faciunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'faciēbam', Person.second: 'faciēbās', Person.third: 'faciēbat'},
          Number.p: {Person.first: 'faciēbāmus', Person.second: 'faciēbātis', Person.third: 'faciēbant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'faciam', Person.second: 'faciēs', Person.third: 'faciet'},
          Number.p: {Person.first: 'faciemus', Person.second: 'facietis', Person.third: 'facient'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'fēcī', Person.second: 'fēcistī', Person.third: 'fēcit'},
          Number.p: {Person.first: 'fēcimus', Person.second: 'fēcistis', Person.third: 'fēcērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'fēceram', Person.second: 'fēcerās', Person.third: 'fēcerat'},
          Number.p: {Person.first: 'fēcerāmus', Person.second: 'fēcerātis', Person.third: 'fēcerant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'fēcerō', Person.second: 'fēceris', Person.third: 'fēcerit'},
          Number.p: {Person.first: 'fēcerimus', Person.second: 'fēceritis', Person.third: 'fēcerint'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'fīō', Person.second: 'fīs', Person.third: 'fit'},
          Number.p: {Person.first: 'fīmus', Person.second: 'fītis', Person.third: 'fīunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'fīēbam', Person.second: 'fīēbās', Person.third: 'fīēbat'},
          Number.p: {Person.first: 'fīēbāmus', Person.second: 'fīēbātis', Person.third: 'fīēbant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'fīam', Person.second: 'fīēs', Person.third: 'fīet'},
          Number.p: {Person.first: 'fīēmus', Person.second: 'fīētis', Person.third: 'fīent'},
        },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'faciam', Person.second: 'faciās', Person.third: 'faciat'},
          Number.p: {Person.first: 'faciāmus', Person.second: 'faciātis', Person.third: 'faciant'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'facerem', Person.second: 'facerēs', Person.third: 'faceret'},
          Number.p: {Person.first: 'facerēmus', Person.second: 'facerētis', Person.third: 'facerent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'fēcerim', Person.second: 'fēcerīs', Person.third: 'fēcerit'},
          Number.p: {Person.first: 'fēcerīmus', Person.second: 'fēcerītis', Person.third: 'fēcerint'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'fīam', Person.second: 'fīās', Person.third: 'fīat'},
          Number.p: {Person.first: 'fīāmus', Person.second: 'fīātis', Person.third: 'fīant'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'fierem', Person.second: 'fierēs', Person.third: 'fieret'},
          Number.p: {Person.first: 'fierēmus', Person.second: 'fierētis', Person.third: 'fierent'},
        },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'fac'},
          Number.p: {Person.second: 'facite'},
        },
        Tense.future: {
          Number.s: {Person.second: 'facitō', Person.third: 'facitō'},
          Number.p: {Person.second: 'facitōte', Person.third: 'faciuntō'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.second: 'fī'},
          Number.p: {Person.second: 'fīte'},
        },
        Tense.future: {
          Number.s: {Person.second: 'fītō', Person.third: 'fītō'},
          Number.p: {Person.second: 'fītōte', Person.third: 'fīuntō'},
        },
      },
    },
  },
);
LatinDeponentVerb loquor = LatinDeponentVerb(
  infinitives: {
    Tense.present: {
      Voice.act: 'loqui',
    },
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'loquēns', Gender.f: 'loquēns', Gender.n: 'loquēns'},
            Number.p: {Gender.m: 'loquentēs', Gender.f: 'loquentēs', Gender.n: 'loquentia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'loquentem', Gender.f: 'loquentem', Gender.n: 'loquēns'},
            Number.p: {Gender.m: 'loquentēs', Gender.f: 'loquentēs', Gender.n: 'loquentia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'loquentis', Gender.f: 'loquentis', Gender.n: 'loquentis'},
            Number.p: {Gender.m: 'loquentium', Gender.f: 'loquentium', Gender.n: 'loquentium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'loquentī', Gender.f: 'loquentī', Gender.n: 'loquentī'},
            Number.p: {Gender.m: 'loquentibus', Gender.f: 'loquentibus', Gender.n: 'loquentibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'loquente', Gender.f: 'loquente', Gender.n: 'loquente'},
            Number.p: {Gender.m: 'loquentibus', Gender.f: 'loquentibus', Gender.n: 'loquentibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'loquēns', Gender.f: 'loquēns', Gender.n: 'loquēns'},
            Number.p: {Gender.m: 'loquentēs', Gender.f: 'loquentēs', Gender.n: 'loquentia'}
          },
        },
      ),
    },
    Tense.perfect: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'locūtus', Gender.f: 'locūta', Gender.n: 'locūtum'},
            Number.p: {Gender.m: 'locūtī', Gender.f: 'locūtae', Gender.n: 'locūta'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'locūtum', Gender.f: 'locūtam', Gender.n: 'locūtum'},
            Number.p: {Gender.m: 'locūtōs', Gender.f: 'locūtās', Gender.n: 'locūta'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'locūtī', Gender.f: 'locūtae', Gender.n: 'locūtī'},
            Number.p: {Gender.m: 'locūtōrum', Gender.f: 'locūtārum', Gender.n: 'locūtōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'locūtō', Gender.f: 'locūtae', Gender.n: 'locūtō'},
            Number.p: {Gender.m: 'locūtīs', Gender.f: 'locūtīs', Gender.n: 'locūtīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'locūtō', Gender.f: 'locūtā', Gender.n: 'locūtō'},
            Number.p: {Gender.m: 'locūtīs', Gender.f: 'locūtīs', Gender.n: 'locūtīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'locūte', Gender.f: 'locūta', Gender.n: 'locūtum'},
            Number.p: {Gender.m: 'locūtī', Gender.f: 'locūtae', Gender.n: 'locūta'}
          },
        },
      ),
    },
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'locūtūrus', Gender.f: 'locūtūra', Gender.n: 'locūtūrum'},
            Number.p: {Gender.m: 'locūtūrī', Gender.f: 'locūtūrae', Gender.n: 'locūtūra'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'locūtūrum', Gender.f: 'locūtūram', Gender.n: 'locūtūrum'},
            Number.p: {Gender.m: 'locūtūrōs', Gender.f: 'locūtūrās', Gender.n: 'locūtūra'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'locūtūrī', Gender.f: 'locūtūrae', Gender.n: 'locūtūrī'},
            Number.p: {Gender.m: 'locūtūrōrum', Gender.f: 'locūtūrārum', Gender.n: 'locūtūrōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'locūtūrō', Gender.f: 'locūtūrae', Gender.n: 'locūtūrō'},
            Number.p: {Gender.m: 'locūtūrīs', Gender.f: 'locūtūrīs', Gender.n: 'locūtūrīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'locūtūrō', Gender.f: 'locūtūrā', Gender.n: 'locūtūrō'},
            Number.p: {Gender.m: 'locūtūrīs', Gender.f: 'locūtūrīs', Gender.n: 'locūtūrīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'locūtūre', Gender.f: 'locūtūra', Gender.n: 'locūtūrum'},
            Number.p: {Gender.m: 'locūtūrī', Gender.f: 'locūtūrae', Gender.n: 'locūtūra'}
          },
        },
      ),
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'loquendus', Gender.f: 'loquenda', Gender.n: 'loquendum'},
            Number.p: {Gender.m: 'loquendī', Gender.f: 'loquendae', Gender.n: 'loquenda'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'loquendum', Gender.f: 'loquendam', Gender.n: 'loquendum'},
            Number.p: {Gender.m: 'loquendōs', Gender.f: 'loquendās', Gender.n: 'loquenda'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'loquendī', Gender.f: 'loquendae', Gender.n: 'loquendī'},
            Number.p: {Gender.m: 'loquendōrum', Gender.f: 'loquendārum', Gender.n: 'loquendōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'loquendō', Gender.f: 'loquendae', Gender.n: 'loquendō'},
            Number.p: {Gender.m: 'loquendīs', Gender.f: 'loquendīs', Gender.n: 'loquendīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'loquendō', Gender.f: 'loquendā', Gender.n: 'loquendō'},
            Number.p: {Gender.m: 'loquendīs', Gender.f: 'loquendīs', Gender.n: 'loquendīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'loquende', Gender.f: 'loquenda', Gender.n: 'loquendum'},
            Number.p: {Gender.m: 'loquendī', Gender.f: 'loquendae', Gender.n: 'loquenda'}
          },
        },
      ),
    },
  },
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'loquor', Person.second: 'loqueris', Person.third: 'loquitur'},
          Number.p: {Person.first: 'loquimur', Person.second: 'loquiminī', Person.third: 'loquuntur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'loquebar', Person.second: 'loquebāris', Person.third: 'loquebātur'},
          Number.p: {Person.first: 'loquebāmur', Person.second: 'loquebāminī', Person.third: 'loquebantur'},
        },
        Tense.future: {
          Number.s: {Person.first: 'loquar', Person.second: 'loqueris', Person.third: 'loquetur'},
          Number.p: {Person.first: 'loquēmur', Person.second: 'loquēminī', Person.third: 'loquentur'},
        },
        // Tense.perfect: {
        //   Number.s: {Person.first: 'locūtus sum', Person.second: 'locūtus es', Person.third: 'locūtus est'},
        //   Number.p: {Person.first: 'locūtī sumus', Person.second: 'locūtī estis', Person.third: 'locūtī sunt'},
        // },
        // Tense.pluperfect: {
        //   Number.s: {Person.first: 'locūtus eram', Person.second: 'locūtus erās', Person.third: 'locūtus erat'},
        //   Number.p: {Person.first: 'locūtī erāmus', Person.second: 'locūtī erātis', Person.third: 'locūtī erant'},
        // },
        // Tense.futurePerfect: {
        //   Number.s: {Person.first: 'locūtus erō', Person.second: 'locūtus eris', Person.third: 'locūtus erit'},
        //   Number.p: {Person.first: 'locūtī erimus', Person.second: 'locūtī eritis', Person.third: 'locūtī erunt'},
        // },
      },
      //no passive
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'loquar', Person.second: 'loquāris', Person.third: 'loquātur'},
          Number.p: {Person.first: 'loquāmur', Person.second: 'loquāminī', Person.third: 'loquantur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'loquerer', Person.second: 'loquerēris', Person.third: 'loquerētur'},
          Number.p: {Person.first: 'loquerēmur', Person.second: 'loquerēminī', Person.third: 'loquerentur'},
        },
        // Tense.perfect: {
        //   Number.s: {Person.first: 'locūtus sim', Person.second: 'locūtus sīs', Person.third: 'locūtus sit'},
        //   Number.p: {Person.first: 'locūtī simus', Person.second: 'locūtī sitis', Person.third: 'locūtī sint'},
        // },
        // Tense.pluperfect: {
        //   Number.s: {Person.first: 'locūtus essem', Person.second: 'locūtus essēs', Person.third: 'locūtus esset'},
        //   Number.p: {Person.first: 'locūtī essēmus', Person.second: 'locūtī essētis', Person.third: 'locūtī essent'},
        // },
      },
      //no passive
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'loquere'},
          Number.p: {Person.second: 'loquiminī'}
        },
        Tense.future: {
          Number.s: {Person.second: 'loquitor'},
          Number.p: {Person.second: 'loquitor', Person.third: 'loquuntor'}
        },
      },
    },
  },
);

LatinVerb velle = LatinVerb(
  infinitives: {
    Tense.present: {Voice.act: 'velle'},
    Tense.perfect: {Voice.act: 'voluisse'},
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'volēns', Gender.f: 'volēns', Gender.n: 'volēns'},
            Number.p: {Gender.m: 'volentēs', Gender.f: 'volentēs', Gender.n: 'volentia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'volentem', Gender.f: 'volentem', Gender.n: 'volēns'},
            Number.p: {Gender.m: 'volentēs', Gender.f: 'volentēs', Gender.n: 'volentia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'volentis', Gender.f: 'volentis', Gender.n: 'volentis'},
            Number.p: {Gender.m: 'volentium', Gender.f: 'volentium', Gender.n: 'volentium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'volentī', Gender.f: 'volentī', Gender.n: 'volentī'},
            Number.p: {Gender.m: 'volentibus', Gender.f: 'volentibus', Gender.n: 'volentibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'volente', Gender.f: 'volente', Gender.n: 'volente'},
            Number.p: {Gender.m: 'volentibus', Gender.f: 'volentibus', Gender.n: 'volentibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'volēns', Gender.f: 'volēns', Gender.n: 'volēns'},
            Number.p: {Gender.m: 'volentēs', Gender.f: 'volentēs', Gender.n: 'volentia'}
          },
        },
      ),
    }
  },
  conjugationStructure: latinActiveOnlyConjugationStructureWithNoImperative,
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'volō', Person.second: 'vīs', Person.third: 'vult'},
          Number.p: {Person.first: 'volumus', Person.second: 'vultis', Person.third: 'volunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'volēbam', Person.second: 'volēbās', Person.third: 'volēbat'},
          Number.p: {Person.first: 'volēbāmus', Person.second: 'volēbātis', Person.third: 'volēbant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'volam', Person.second: 'volēs', Person.third: 'volet'},
          Number.p: {Person.first: 'volēmus', Person.second: 'volētis', Person.third: 'volent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'voluī', Person.second: 'voluistī', Person.third: 'voluit'},
          Number.p: {Person.first: 'voluimus', Person.second: 'voluistis', Person.third: 'voluērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'volueram', Person.second: 'voluerās', Person.third: 'voluerat'},
          Number.p: {Person.first: 'voluerāmus', Person.second: 'voluerātis', Person.third: 'voluerant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'voluerō', Person.second: 'volueris', Person.third: 'voluerit'},
          Number.p: {Person.first: 'voluerimus', Person.second: 'volueritis', Person.third: 'voluerint'},
        },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'velim', Person.second: 'velīs', Person.third: 'velit'},
          Number.p: {Person.first: 'velīmus', Person.second: 'velītis', Person.third: 'velint'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'vellem', Person.second: 'vellēs', Person.third: 'vellet'},
          Number.p: {Person.first: 'vellēmus', Person.second: 'vellētis', Person.third: 'vellent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'voluerim', Person.second: 'voluerīs', Person.third: 'voluerit'},
          Number.p: {Person.first: 'voluerīmus', Person.second: 'voluerītis', Person.third: 'voluerint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'voluissem', Person.second: 'voluissēs', Person.third: 'voluisset'},
          Number.p: {Person.first: 'voluissēmus', Person.second: 'voluissētis', Person.third: 'voluissent'},
        },
      },
    },
    //no imperative
  },
);

LatinVerb nolle = LatinVerb(
  infinitives: {
    Tense.present: {
      Voice.act: 'nōlle',
    },
    Tense.perfect: {Voice.act: 'nōluisse'},
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'nolēns', Gender.f: 'nolēns', Gender.n: 'nolēns'},
            Number.p: {Gender.m: 'nolentēs', Gender.f: 'nolentēs', Gender.n: 'nolentia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'nolentem', Gender.f: 'nolentem', Gender.n: 'nolēns'},
            Number.p: {Gender.m: 'nolentēs', Gender.f: 'nolentēs', Gender.n: 'nolentia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'nolentis', Gender.f: 'nolentis', Gender.n: 'nolentis'},
            Number.p: {Gender.m: 'nolentium', Gender.f: 'nolentium', Gender.n: 'nolentium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'nolentī', Gender.f: 'nolentī', Gender.n: 'nolentī'},
            Number.p: {Gender.m: 'nolentibus', Gender.f: 'nolentibus', Gender.n: 'nolentibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'nolente', Gender.f: 'nolente', Gender.n: 'nolente'},
            Number.p: {Gender.m: 'nolentibus', Gender.f: 'nolentibus', Gender.n: 'nolentibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'nolēns', Gender.f: 'nolēns', Gender.n: 'nolēns'},
            Number.p: {Gender.m: 'nolentēs', Gender.f: 'nolentēs', Gender.n: 'nolentia'}
          },
        },
      ),
    },
  },
  conjugationStructure: latinActiveOnlyConjugationStructure,
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'nōlō', Person.second: 'nōn vīs', Person.third: 'nōn vult'},
          Number.p: {Person.first: 'nōn volumus', Person.second: 'nōn vultis', Person.third: 'nōn volunt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'nōlēbam', Person.second: 'nōlēbās', Person.third: 'nōlēbat'},
          Number.p: {Person.first: 'nōlēbāmus', Person.second: 'nōlēbātis', Person.third: 'nōlēbant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'nōlō', Person.second: 'nōn vīs', Person.third: 'nōn vult'},
          Number.p: {Person.first: 'nōn volumus', Person.second: 'nōn vultis', Person.third: 'nōn volunt'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'nōlūī', Person.second: 'nōlūistī', Person.third: 'nōluit'},
          Number.p: {Person.first: 'nōlūimus', Person.second: 'nōlūistis', Person.third: 'nōlūērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'nōlueram', Person.second: 'nōluerās', Person.third: 'nōluerat'},
          Number.p: {Person.first: 'nōluerāmus', Person.second: 'nōluerātis', Person.third: 'nōluerant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'nōluerō', Person.second: 'nōlueris', Person.third: 'nōluerit'},
          Number.p: {Person.first: 'nōluerimus', Person.second: 'nōlueritis', Person.third: 'nōluerint'},
        },
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'nōlīm', Person.second: 'nōlīs', Person.third: 'nōlīt'},
          Number.p: {Person.first: 'nōlīmus', Person.second: 'nōlītis', Person.third: 'nōlīnt'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'nōllēm', Person.second: 'nōllēs', Person.third: 'nōllet'},
          Number.p: {Person.first: 'nōllēmus', Person.second: 'nōllētis', Person.third: 'nōllent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'nōluerim', Person.second: 'nōluerīs', Person.third: 'nōluerit'},
          Number.p: {Person.first: 'nōluerīmus', Person.second: 'nōluerītis', Person.third: 'nōluerint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'nōluissem', Person.second: 'nōluissēs', Person.third: 'nōluisset'},
          Number.p: {Person.first: 'nōluissēmus', Person.second: 'nōluissētis', Person.third: 'nōluissent'},
        },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'nōlī'},
          Number.p: {Person.second: 'nōlīte'}
        },
        Tense.future: {
          Number.s: {Person.second: 'nōlitō', Person.third: 'nōlitō'},
          Number.p: {Person.second: 'nōnlitōte', Person.third: 'nōluntō'},
        },
      },
    },
  },
);

LatinVerb videre = LatinVerb(
  infinitives: {
    Tense.present: {Voice.act: 'vidēre', Voice.pas: 'vīdērī'},
    Tense.perfect: {Voice.act: 'vīdisse'},
  },
  participles: {
    Tense.present: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'vidēns', Gender.f: 'vidēns', Gender.n: 'vidēns'},
            Number.p: {Gender.m: 'videntēs', Gender.f: 'videntēs', Gender.n: 'videntia'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'videntem', Gender.f: 'videntem', Gender.n: 'vidēns'},
            Number.p: {Gender.m: 'videntēs', Gender.f: 'videntēs', Gender.n: 'videntia'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'videntis', Gender.f: 'videntis', Gender.n: 'videntis'},
            Number.p: {Gender.m: 'videntium', Gender.f: 'videntium', Gender.n: 'videntium'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'videntī', Gender.f: 'videntī', Gender.n: 'videntī'},
            Number.p: {Gender.m: 'videntibus', Gender.f: 'videntibus', Gender.n: 'videntibus'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'vidente', Gender.f: 'vidente', Gender.n: 'vidente'},
            Number.p: {Gender.m: 'videntibus', Gender.f: 'videntibus', Gender.n: 'videntibus'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'vidēns', Gender.f: 'vidēns', Gender.n: 'vidēns'},
            Number.p: {Gender.m: 'videntēs', Gender.f: 'videntēs', Gender.n: 'videntia'}
          },
        },
      ),
    },
    Tense.perfect: {
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'vīsus', Gender.f: 'vīsa', Gender.n: 'vīsum'},
            Number.p: {Gender.m: 'vīsī', Gender.f: 'vīsae', Gender.n: 'vīsa'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'vīsum', Gender.f: 'vīsam', Gender.n: 'vīsum'},
            Number.p: {Gender.m: 'vīsōs', Gender.f: 'vīsās', Gender.n: 'vīsa'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'vīsī', Gender.f: 'vīsae', Gender.n: 'vīsī'},
            Number.p: {Gender.m: 'vīsōrum', Gender.f: 'vīsārum', Gender.n: 'vīsōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'vīsō', Gender.f: 'vīsae', Gender.n: 'vīsō'},
            Number.p: {Gender.m: 'vīsīs', Gender.f: 'vīsīs', Gender.n: 'vīsīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'vīsō', Gender.f: 'vīsā', Gender.n: 'vīsō'},
            Number.p: {Gender.m: 'vīsīs', Gender.f: 'vīsīs', Gender.n: 'vīsīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'vīsē', Gender.f: 'vīsa', Gender.n: 'vīsum'},
            Number.p: {Gender.m: 'vīsī', Gender.f: 'vīsae', Gender.n: 'vīsa'}
          },
        },
      ),
    },
    Tense.future: {
      Voice.act: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'vīsūrus', Gender.f: 'vīsūra', Gender.n: 'vīsūrum'},
            Number.p: {Gender.m: 'vīsūrī', Gender.f: 'vīsūrae', Gender.n: 'vīsūra'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'vīsūrum', Gender.f: 'vīsūram', Gender.n: 'vīsūrum'},
            Number.p: {Gender.m: 'vīsūrōs', Gender.f: 'vīsūrās', Gender.n: 'vīsūra'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'vīsūrī', Gender.f: 'vīsūrae', Gender.n: 'vīsūrī'},
            Number.p: {Gender.m: 'vīsūrōrum', Gender.f: 'vīsūrārum', Gender.n: 'vīsūrōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'vīsūrō', Gender.f: 'vīsūrae', Gender.n: 'vīsūrō'},
            Number.p: {Gender.m: 'vīsūrīs', Gender.f: 'vīsūrīs', Gender.n: 'vīsūrīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'vīsūrō', Gender.f: 'vīsūrā', Gender.n: 'vīsūrō'},
            Number.p: {Gender.m: 'vīsūrīs', Gender.f: 'vīsūrīs', Gender.n: 'vīsūrīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'vīsūre', Gender.f: 'vīsūra', Gender.n: 'vīsūrum'},
            Number.p: {Gender.m: 'vīsūrī', Gender.f: 'vīsūrae', Gender.n: 'vīsūra'}
          },
        },
      ),
      Voice.pas: const LatinAdjective(
        declension: {
          Case.nom: {
            Number.s: {Gender.m: 'videndus', Gender.f: 'videnda', Gender.n: 'videndum'},
            Number.p: {Gender.m: 'videndī', Gender.f: 'videndae', Gender.n: 'videnda'}
          },
          Case.acc: {
            Number.s: {Gender.m: 'videndum', Gender.f: 'videndam', Gender.n: 'videndum'},
            Number.p: {Gender.m: 'videndōs', Gender.f: 'videndās', Gender.n: 'videnda'}
          },
          Case.gen: {
            Number.s: {Gender.m: 'videndī', Gender.f: 'videndae', Gender.n: 'videndī'},
            Number.p: {Gender.m: 'videndōrum', Gender.f: 'videndārum', Gender.n: 'videndōrum'}
          },
          Case.dat: {
            Number.s: {Gender.m: 'videndō', Gender.f: 'videndae', Gender.n: 'videndō'},
            Number.p: {Gender.m: 'videndīs', Gender.f: 'videndīs', Gender.n: 'videndīs'}
          },
          Case.abl: {
            Number.s: {Gender.m: 'videndō', Gender.f: 'videndā', Gender.n: 'videndō'},
            Number.p: {Gender.m: 'videndīs', Gender.f: 'videndīs', Gender.n: 'videndīs'}
          },
          Case.voc: {
            Number.s: {Gender.m: 'vidende', Gender.f: 'videnda', Gender.n: 'videndum'},
            Number.p: {Gender.m: 'videndī', Gender.f: 'videndae', Gender.n: 'videnda'}
          },
        },
      ),
    },
  },
  conjugation: {
    Mood.ind: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'videō', Person.second: 'vidēs', Person.third: 'videt'},
          Number.p: {Person.first: 'vidēmus', Person.second: 'vidētis', Person.third: 'vident'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'vidēbam', Person.second: 'vidēbās', Person.third: 'vidēbat'},
          Number.p: {Person.first: 'vidēbāmus', Person.second: 'vidēbātis', Person.third: 'vidēbant'},
        },
        Tense.future: {
          Number.s: {Person.first: 'vidēbō', Person.second: 'vidēbis', Person.third: 'vidēbit'},
          Number.p: {Person.first: 'vidēbimus', Person.second: 'vidēbitis', Person.third: 'vidēbunt'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'vīdī', Person.second: 'vīdistī', Person.third: 'vīdit'},
          Number.p: {Person.first: 'vīdimus', Person.second: 'vīdistis', Person.third: 'vīdērunt'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'vīderam', Person.second: 'vīderās', Person.third: 'vīderat'},
          Number.p: {Person.first: 'vīderāmus', Person.second: 'vīderātis', Person.third: 'vīderant'},
        },
        Tense.futurePerfect: {
          Number.s: {Person.first: 'vīderō', Person.second: 'vīderis', Person.third: 'vīderit'},
          Number.p: {Person.first: 'vīderimus', Person.second: 'vīderitis', Person.third: 'vīderint'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'videor', Person.second: 'vidēris', Person.third: 'vidētur'},
          Number.p: {Person.first: 'vidēmur', Person.second: 'vidēminī', Person.third: 'videntur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'vidēbar', Person.second: 'vidēbāris', Person.third: 'vidēbātur'},
          Number.p: {Person.first: 'vidēbāmur', Person.second: 'vidēbāminī', Person.third: 'vidēbantur'},
        },
        Tense.future: {
          Number.s: {Person.first: 'vidēbor', Person.second: 'vidēberis', Person.third: 'vidēbitur'},
          Number.p: {Person.first: 'vidēbimur', Person.second: 'vidēbiminī', Person.third: 'vidēbuntur'},
        },
        //Participle dependent forms are not listed here.
      },
    },
    Mood.sub: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.first: 'videam', Person.second: 'videās', Person.third: 'videat'},
          Number.p: {Person.first: 'videāmus', Person.second: 'videātis', Person.third: 'videant'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'viderem', Person.second: 'viderēs', Person.third: 'videret'},
          Number.p: {Person.first: 'viderēmus', Person.second: 'viderētis', Person.third: 'viderent'},
        },
        Tense.perfect: {
          Number.s: {Person.first: 'vīderim', Person.second: 'vīderis', Person.third: 'vīderit'},
          Number.p: {Person.first: 'vīderimus', Person.second: 'vīderitis', Person.third: 'vīderint'},
        },
        Tense.pluperfect: {
          Number.s: {Person.first: 'vīdissem', Person.second: 'vīdissēs', Person.third: 'vīdisset'},
          Number.p: {Person.first: 'vīdissēmus', Person.second: 'vīdissētis', Person.third: 'vīdissent'},
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.first: 'videar', Person.second: 'videāris', Person.third: 'videātur'},
          Number.p: {Person.first: 'videāmur', Person.second: 'videāminī', Person.third: 'videantur'},
        },
        Tense.imperfect: {
          Number.s: {Person.first: 'vidērer', Person.second: 'vidērēris', Person.third: 'vidērētur'},
          Number.p: {Person.first: 'vidērēmur', Person.second: 'vidērēminī', Person.third: 'vidērentur'},
        },
        // Tense.perfect: {
        //   Number.s: {Person.first: 'vīsus sim', Person.second: 'vīsus sis', Person.third: 'vīsus sit'},
        //   Number.p: {Person.first: 'vīsī simus', Person.second: 'vīsī sitis', Person.third: 'vīsī sint'},
        // },
        // Tense.pluperfect: {
        //   Number.s: {Person.first: 'vīsus essem', Person.second: 'vīsus essēs', Person.third: 'vīsus esset'},
        //   Number.p: {Person.first: 'vīsī essēmus', Person.second: 'vīsī essētis', Person.third: 'vīsī essent'},
        // },
      },
    },
    Mood.imp: {
      Voice.act: {
        Tense.present: {
          Number.s: {Person.second: 'vidē'},
          Number.p: {Person.second: 'vidēte'}
        },
        Tense.future: {
          Number.s: {Person.second: 'vidētō', Person.third: 'vidētō'},
          Number.p: {Person.second: 'vidētōte', Person.third: 'videntō'}
        },
      },
      Voice.pas: {
        Tense.present: {
          Number.s: {Person.second: 'vidēre'},
          Number.p: {Person.second: 'vidēminī'}
        },
        Tense.future: {
          Number.s: {Person.second: 'vidētor', Person.third: 'vidētor'},
          Number.p: {Person.third: 'videntor'}
        },
      },
    },
  },
);
