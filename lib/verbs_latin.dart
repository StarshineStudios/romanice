import 'latin_questions.dart';

List<LatinVerb> latinVerbs = [
  esse,
  posse,
  amare,
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

LatinVerb esse = LatinVerb(
  infinitives: {
    'presentActive': 'esse',
    'perfectActive': 'fuisse',
    'futureActive': 'fore',
  },
  participles: {
    'futureActive': const LatinAdjective(
      declension: {
        'nom': {
          's': {'m': 'futūrus', 'f': 'futura', 'n': 'futurum'},
          'p': {'m': 'futūrī', 'f': 'futūrae', 'n': 'futūra'}
        },
        'acc': {
          's': {'m': 'futurum', 'f': 'futuram', 'n': 'futurum'},
          'p': {'m': 'futūrōs', 'f': 'futūrās', 'n': 'futūra'}
        },
        'gen': {
          's': {'m': 'futūrī', 'f': 'futurae', 'n': 'futūrī'},
          'p': {'m': 'futūrōrum', 'f': 'futūrārum', 'n': 'futūrōrum'}
        },
        'dat': {
          's': {'m': 'futūrō', 'f': 'futurae', 'n': 'futūrō'},
          'p': {'m': 'futūrīs', 'f': 'futūrīs', 'n': 'futūrīs'}
        },
        'abl': {
          's': {'m': 'futūrō', 'f': 'futūrā', 'n': 'futūrō'},
          'p': {'m': 'futūrīs', 'f': 'futūrīs', 'n': 'futūrīs'}
        },
        'voc': {
          's': {'m': 'futūre', 'f': 'futura', 'n': 'futurum'},
          'p': {'m': 'futūrī', 'f': 'futūrae', 'n': 'futūra'}
        },
      },
    ),
  },
  conjugation: {
    'ind': {
      'act': {
        'pres': {
          's': {'1': 'sum', '2': 'es', '3': 'est'},
          'p': {'1': 'sumus', '2': 'estis', '3': 'sunt'},
        },
        'imp': {
          's': {'1': 'eram', '2': 'erās', '3': 'erat'},
          'p': {'1': 'erāmus', '2': 'erātis', '3': 'erant'},
        },
        'fut': {
          's': {'1': 'erō', '2': 'eris', '3': 'erit'},
          'p': {'1': 'erāmus', '2': 'erātis', '3': 'erunt'},
        },
        'perf': {
          's': {'1': 'fuī', '2': 'fuistī', '3': 'fuit'},
          'p': {'1': 'fuimus', '2': 'fuistis', '3': 'fuērunt'},
        },
        'plup': {
          's': {'1': 'fueram', '2': 'fuerās', '3': 'fuerat'},
          'p': {'1': 'fuerāmus', '2': 'fuerātis', '3': 'fuerant'},
        },
        'futp': {
          's': {'1': 'fuerō', '2': 'fueris', '3': 'fuerit'},
          'p': {'1': 'fuerimus', '2': 'fueritis', '3': 'fuerint'},
        },
      },
    },
    'sub': {
      'act': {
        'pres': {
          's': {'1': 'sim', '2': 'sīs', '3': 'sit'},
          'p': {'1': 'sīmus', '2': 'sītis', '3': 'sint'},
        },
        'imp': {
          's': {'1': 'essem', '2': 'essēs', '3': 'esset'},
          'p': {'1': 'essēmus', '2': 'essētis', '3': 'essent'},
        },
        'impArchaic': {
          's': {'1': 'forem', '2': 'forēs', '3': 'foret'},
          'p': {'1': 'forēmus', '2': 'forētis', '3': 'forent'},
        },
        'perf': {
          's': {'1': 'fuerim', '2': 'fuerīs', '3': 'fuerit'},
          'p': {'1': 'fuerīmus', '2': 'fuerītis', '3': 'fuerint'},
        },
        'plup': {
          's': {'1': 'fuissem', '2': 'fuissēs', '3': 'fuisset'},
          'p': {'1': 'fuissēmus', '2': 'fuissētis', '3': 'fuissent'},
        },
      },
    },
    'imp': {
      'act': {
        'pres': {
          's': {'2': 'es'},
          'p': {'2': 'este'}
        },
        'fut': {
          's': {'2': 'estō', '3': 'estō'},
          'p': {'2': 'estōte', '3': 'suntō'}
        },
      },
    },
  },
);

LatinVerb posse = LatinVerb(
  infinitives: {
    'presentActive': 'posse',
    'perfectActive': 'potuisse',
  },
  participles: {
    'presentActive': const LatinAdjective(
      declension: {
        'nom': {
          's': {'m': 'potēns', 'f': 'potēns', 'n': 'potēns'},
          'p': {'m': 'potentēs', 'f': 'potentēs', 'n': 'potentia'}
        },
        'acc': {
          's': {'m': 'potentem', 'f': 'potentem', 'n': 'potēns'},
          'p': {'m': 'potentēs', 'f': 'potentēs', 'n': 'potentia'}
        },
        'gen': {
          's': {'m': 'potentis', 'f': 'potentis', 'n': 'potentis'},
          'p': {'m': 'potentium', 'f': 'potentium', 'n': 'potentium'}
        },
        'dat': {
          's': {'m': 'potentī', 'f': 'potentī', 'n': 'potentī'},
          'p': {'m': 'potentibus', 'f': 'potentibus', 'n': 'potentibus'}
        },
        'abl': {
          's': {'m': 'potente', 'f': 'potente', 'n': 'potente'},
          'p': {'m': 'potentibus', 'f': 'potentibus', 'n': 'potentibus'}
        },
        'voc': {
          's': {'m': 'potēns', 'f': 'potēns', 'n': 'potēns'},
          'p': {'m': 'potentēs', 'f': 'potentēs', 'n': 'potentia'}
        },
      },
    ),
  },
  conjugation: {
    'ind': {
      'act': {
        'pres': {
          's': {'1': 'possum', '2': 'potes', '3': 'potest'},
          'p': {'1': 'possumus', '2': 'potestis', '3': 'possunt'},
        },
        'imp': {
          's': {'1': 'poteram', '2': 'poterās', '3': 'poterat'},
          'p': {'1': 'poterāmus', '2': 'poterātis', '3': 'poterant'},
        },
        'fut': {
          's': {'1': 'poterō', '2': 'poteris', '3': 'poterit'},
          'p': {'1': 'poterimus', '2': 'poteritis', '3': 'poterunt'},
        },
        'perf': {
          's': {'1': 'potuī', '2': 'potuistī', '3': 'potuit'},
          'p': {'1': 'potuimus', '2': 'potuistis', '3': 'potuērunt'},
        },
        'plup': {
          's': {'1': 'potueram', '2': 'potuerās', '3': 'potuerat'},
          'p': {'1': 'potuerāmus', '2': 'potuerātis', '3': 'potuerant'},
        },
        'futp': {
          's': {'1': 'potuerō', '2': 'potueris', '3': 'potuerit'},
          'p': {'1': 'potuerimus', '2': 'potueritis', '3': 'potuerint'},
        },
      },
    },
    'sub': {
      'act': {
        'pres': {
          's': {'1': 'possim', '2': 'possīs', '3': 'possit'},
          'p': {'1': 'possīmus', '2': 'possītis', '3': 'possint'},
        },
        'imp': {
          's': {'1': 'possem', '2': 'possēs', '3': 'posset'},
          'p': {'1': 'possēmus', '2': 'possētis', '3': 'possent'},
        },
        'impArchaic': {
          's': {'1': 'forem', '2': 'forēs', '3': 'foret'},
          'p': {'1': 'forēmus', '2': 'forētis', '3': 'forent'},
        },
        'perf': {
          's': {'1': 'potuerim', '2': 'potuerīs', '3': 'potuerit'},
          'p': {'1': 'potuerīmus', '2': 'potuerītis', '3': 'potuerint'},
        },
        'plup': {
          's': {'1': 'potuissem', '2': 'potuissēs', '3': 'potuisset'},
          'p': {'1': 'potuissēmus', '2': 'potuissētis', '3': 'potuissent'},
        },
      },
    },
    'imp': {
      'act': {
        'pres': {
          's': {'2': 'es'},
          'p': {'2': 'este'},
        },
        'fut': {
          's': {'2': 'estō', '3': 'estō'},
          'p': {'2': 'estōte', '3': 'suntō'},
        },
      },
    },
  },
);

LatinVerb amare = LatinVerb(
  infinitives: {
    'presentActive': 'amāre',
    'perfectActive': 'amāvisse',
    'presentPassive': 'amārī',
  },
  participles: {
    'presentActive': const LatinAdjective(
      declension: {
        'nom': {
          's': {'m': 'amāns', 'f': 'amāns', 'n': 'amāns'},
          'p': {'m': 'amantēs', 'f': 'amantēs', 'n': 'amantia'}
        },
        'acc': {
          's': {'m': 'amantem', 'f': 'amantem', 'n': 'amāns'},
          'p': {'m': 'amantēs', 'f': 'amantēs', 'n': 'amantia'}
        },
        'gen': {
          's': {'m': 'amantis', 'f': 'amantis', 'n': 'amantis'},
          'p': {'m': 'amantium', 'f': 'amantium', 'n': 'amantium'}
        },
        'dat': {
          's': {'m': 'amantī', 'f': 'amantī', 'n': 'amantī'},
          'p': {'m': 'amantibus', 'f': 'amantibus', 'n': 'amantibus'}
        },
        'abl': {
          's': {'m': 'amante', 'f': 'amante', 'n': 'amante'},
          'p': {'m': 'amantibus', 'f': 'amantibus', 'n': 'amantibus'}
        },
        'voc': {
          's': {'m': 'amāns', 'f': 'amāns', 'n': 'amāns'},
          'p': {'m': 'amantēs', 'f': 'amantēs', 'n': 'amantia'}
        },
      },
    ),
    'futureActive': const LatinAdjective(
      declension: {
        'nom': {
          's': {'m': 'amātūrus', 'f': 'amātūra', 'n': 'amātūrum'},
          'p': {'m': 'amātūrī', 'f': 'amātūrae', 'n': 'amātūra'}
        },
        'acc': {
          's': {'m': 'amātūrum', 'f': 'amātūram', 'n': 'amātūrum'},
          'p': {'m': 'amātūrōs', 'f': 'amātūrās', 'n': 'amātūra'}
        },
        'gen': {
          's': {'m': 'amātūrī', 'f': 'amātūrae', 'n': 'amātūrī'},
          'p': {'m': 'amātūrōrum', 'f': 'amātūrārum', 'n': 'amātūrōrum'}
        },
        'dat': {
          's': {'m': 'amātūrō', 'f': 'amātūrae', 'n': 'amātūrō'},
          'p': {'m': 'amātūrīs', 'f': 'amātūrīs', 'n': 'amātūrīs'}
        },
        'abl': {
          's': {'m': 'amātūrō', 'f': 'amātūrā', 'n': 'amātūrō'},
          'p': {'m': 'amātūrīs', 'f': 'amātūrīs', 'n': 'amātūrīs'}
        },
        'voc': {
          's': {'m': 'amātūre', 'f': 'amātūra', 'n': 'amātūrum'},
          'p': {'m': 'amātūrī', 'f': 'amātūrae', 'n': 'amātūra'}
        },
      },
    ),
    'perfectPassive': const LatinAdjective(
      declension: {
        'nom': {
          's': {'m': 'amātus', 'f': 'amāta', 'n': 'amātum'},
          'p': {'m': 'amātī', 'f': 'amātae', 'n': 'amāta'}
        },
        'acc': {
          's': {'m': 'amātum', 'f': 'amātam', 'n': 'amātum'},
          'p': {'m': 'amātōs', 'f': 'amātās', 'n': 'amāta'}
        },
        'gen': {
          's': {'m': 'amātī', 'f': 'amātae', 'n': 'amātī'},
          'p': {'m': 'amātōrum', 'f': 'amātārum', 'n': 'amātōrum'}
        },
        'dat': {
          's': {'m': 'amātō', 'f': 'amātae', 'n': 'amātō'},
          'p': {'m': 'amātīs', 'f': 'amātīs', 'n': 'amātīs'}
        },
        'abl': {
          's': {'m': 'amātō', 'f': 'amātā', 'n': 'amātō'},
          'p': {'m': 'amātīs', 'f': 'amātīs', 'n': 'amātīs'}
        },
        'voc': {
          's': {'m': 'amāte', 'f': 'amāta', 'n': 'amātum'},
          'p': {'m': 'amātī', 'f': 'amātae', 'n': 'amāta'}
        },
      },
    ),
    'futurePassive': const LatinAdjective(
      declension: {
        'nom': {
          's': {'m': 'amandus', 'f': 'amanda', 'n': 'amandum'},
          'p': {'m': 'amandī', 'f': 'amandae', 'n': 'amanda'}
        },
        'acc': {
          's': {'m': 'amandum', 'f': 'amandam', 'n': 'amandum'},
          'p': {'m': 'amandōs', 'f': 'amandās', 'n': 'amanda'}
        },
        'gen': {
          's': {'m': 'amandī', 'f': 'amandae', 'n': 'amandī'},
          'p': {'m': 'amandōrum', 'f': 'amandārum', 'n': 'amandōrum'}
        },
        'dat': {
          's': {'m': 'amandō', 'f': 'amandae', 'n': 'amandō'},
          'p': {'m': 'amandīs', 'f': 'amandīs', 'n': 'amandīs'}
        },
        'abl': {
          's': {'m': 'amandō', 'f': 'amandā', 'n': 'amandō'},
          'p': {'m': 'amandīs', 'f': 'amandīs', 'n': 'amandīs'}
        },
        'voc': {
          's': {'m': 'amande', 'f': 'amanda', 'n': 'amandum'},
          'p': {'m': 'amandī', 'f': 'amandae', 'n': 'amanda'}
        },
      },
    ),
  },
  conjugation: {
    'ind': {
      'act': {
        'pres': {
          's': {'1': 'amō', '2': 'amās', '3': 'amat'},
          'p': {'1': 'amāmus', '2': 'amātis', '3': 'amant'},
        },
        'imp': {
          's': {'1': 'amābam', '2': 'amābās', '3': 'amābat'},
          'p': {'1': 'amābāmus', '2': 'amābātis', '3': 'amābant'},
        },
        'fut': {
          's': {'1': 'amābō', '2': 'amābis', '3': 'amābit'},
          'p': {'1': 'amābimus', '2': 'amābitis', '3': 'amābunt'},
        },
        'perf': {
          's': {'1': 'amāvī', '2': 'amāvistī', '3': 'amāvit'},
          'p': {'1': 'amāvimus', '2': 'amāvistis', '3': 'amāvērunt'},
        },
        'plup': {
          's': {'1': 'amāveram', '2': 'amāverās', '3': 'amāverat'},
          'p': {'1': 'amāverāmus', '2': 'amāverātis', '3': 'amāverant'},
        },
        'futp': {
          's': {'1': 'amāvero', '2': 'amāveris', '3': 'amāverit'},
          'p': {'1': 'amāverimus', '2': 'amāveritis', '3': 'amāverint'},
        },
      },
      'pas': {
        'pres': {
          's': {'1': 'amor', '2': 'amāris', '3': 'amātur'},
          'p': {'1': 'amāmur', '2': 'amāminī', '3': 'amantur'},
        },
        'imp': {
          's': {'1': 'amābar', '2': 'amābāris', '3': 'amābātur'},
          'p': {'1': 'amābāmur', '2': 'amābāminī', '3': 'amābantur'},
        },
        'fut': {
          's': {'1': 'amābor', '2': 'amāberis', '3': 'amābitur'},
          'p': {'1': 'amābimur', '2': 'amābiminī', '3': 'amābuntur'},
        },

        //gender dependant
        'perf': {
          's': {'1': 'amātus sum', '2': 'amātus es', '3': 'amātus est'},
          'p': {'1': 'amātī sumus', '2': 'amātī estis', '3': 'amātī sunt'},
        },
        'plup': {
          's': {'1': 'amātus eram', '2': 'amātus erās', '3': 'amātus erat'},
          'p': {'1': 'amātī erāmus', '2': 'amātī erātis', '3': 'amātī erant'},
        },
        'futp': {
          's': {'1': 'amātus ero', '2': 'amātus eris', '3': 'amātus erit'},
          'p': {'1': 'amātī erimus', '2': 'amātī eritis', '3': 'amātī erunt'},
        },
        //gender dependant
      },
    },
    'sub': {
      'act': {
        'pres': {
          's': {'1': 'amem', '2': 'amēs', '3': 'amet'},
          'p': {'1': 'amēmus', '2': 'amētis', '3': 'ament'},
        },
        'imp': {
          's': {'1': 'amārem', '2': 'amārēs', '3': 'amāret'},
          'p': {'1': 'amārēmus', '2': 'amārētis', '3': 'amārent'},
        },
        'perf': {
          's': {'1': 'amāverim', '2': 'amāveris', '3': 'amāverit'},
          'p': {'1': 'amāverimus', '2': 'amāveritis', '3': 'amāverint'},
        },
        'plup': {
          's': {'1': 'amāvissem', '2': 'amāvissēs', '3': 'amāvisset'},
          'p': {'1': 'amāvissēmus', '2': 'amāvissētis', '3': 'amāvissent'},
        },
      },
      'pas': {
        'pres': {
          's': {'1': 'amer', '2': 'amēris', '3': 'amētur'},
          'p': {'1': 'amēmur', '2': 'amēminī', '3': 'amentur'},
        },
        'imp': {
          's': {'1': 'amārer', '2': 'amārēris', '3': 'amārētur'},
          'p': {'1': 'amārēmur', '2': 'amārēminī', '3': 'amārentur'},
        },
        //gender dependant
        'perf': {
          's': {'1': 'amātus sim', '2': 'amātus sis', '3': 'amātus sit'},
          'p': {'1': 'amātī simus', '2': 'amātī sitis', '3': 'amātī sint'},
        },
        'plup': {
          's': {'1': 'amātus essem', '2': 'amātus essēs', '3': 'amātus esset'},
          'p': {'1': 'amātī essēmus', '2': 'amātī essētis', '3': 'amātī essent'},
        },
        //gender dependant
      },
    },
    'imp': {
      'act': {
        'pres': {
          's': {'2': 'amā'},
          'p': {'2': 'amāte'}
        },
        'fut': {
          's': {'2': 'amātō', '3': 'amātō'},
          'p': {'2': 'amātōte', '3': 'amantō'}
        },
      },
      'pas': {
        'pres': {
          's': {'2': 'amāre'},
          'p': {'2': 'amāminī'}
        },
        'fut': {
          's': {'2': 'amātor', '3': 'amātor'},
          'p': {'3': 'amantor'}
        },
      },
    },
  },
);
