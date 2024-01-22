import 'package:colorguesser/core/enums.dart';
import 'package:colorguesser/files_latin/latin_constants.dart';

import '../latin_classes.dart';

List<LatinVerb> latinVerbs = [
  esse,
  posse,
  amare,
  volo,
  nolo,
  video,

// eō
// volō
// nōlō
// mālō
// ferō
// fīō
// edō
// dō
// inquam
];

LatinVerb esse = LatinAuxiliaryVerb(
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

LatinVerb volo = LatinVerb(
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

LatinVerb nolo = LatinVerb(
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
          Number.p: {Person.second: 'nōlitō', Person.third: 'nōlitō'},
        },
        Tense.future: {
          Number.s: {
            Person.second: 'nōlē',
          },
          Number.p: {Person.second: 'nōnlitōte', Person.third: 'nōluntō'},
        },
      },
    },
  },
);

LatinVerb video = LatinVerb(
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
