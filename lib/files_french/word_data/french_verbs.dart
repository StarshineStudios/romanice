import '../french_classes.dart';

List<FrenchVerb> frenchVerbs = [
  etre,
];

FrenchVerb etre = FrenchVerb(
  infinitive: 'être',
  auxiliaryVerb: avoir2,
  participles: {
    //this would be weird to decline but whatever
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'étant', 'f': 'étant'},
        'p': {'m': 'étants', 'f': 'étants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'été', 'f': 'été'},
        'p': {'m': 'été', 'f': 'été'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'suis', '2': 'es', '3': 'est'},
        'p': {'1': 'sommes', '2': 'êtes', '3': 'sont'},
      },
      'r imp': {
        's': {'1': 'étais', '2': 'étais', '3': 'était'},
        'p': {'1': 'étions', '2': 'étiez', '3': '	étaient'},
      },
      'r fut': {
        's': {'1': 'serai', '2': 'seras', '3': 'sera'},
        'p': {'1': 'serons', '2': 'serez', '3': 'seront'},
      },
      'r perf': {
        's': {'1': 'fus', '2': 'fus', '3': 'fut'},
        'p': {'1': 'fûmes', '2': 'fûtes', '3': 'furent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'serais', '2': 'serais', '3': 'serait'},
        'p': {'1': 'serions', '2': 'seriez', '3': 'seraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'sois', '2': 'sois', '3': 'soit'},
        'p': {'1': 'soyons', '2': 'soyez', '3': 'soient'},
      },
      'r imp': {
        's': {'1': 'fusse', '2': 'fusses', '3': 'fût'},
        'p': {'1': 'fussions	', '2': 'fussiez', '3': 'fussent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'sois'},
        'p': {'1': 'soyons', '2': 'soyez'},
      },
    },
  },
);

FrenchAuxiliaryVerb etre2 = FrenchAuxiliaryVerb(
  infinitive: 'être',
  participles: {
    //this would be weird to decline but whatever
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'étant', 'f': 'étant'},
        'p': {'m': 'étants', 'f': 'étants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'été', 'f': 'été'},
        'p': {'m': 'été', 'f': 'été'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'suis', '2': 'es', '3': 'est'},
        'p': {'1': 'sommes', '2': 'êtes', '3': 'sont'},
      },
      'r imp': {
        's': {'1': 'étais', '2': 'étais', '3': 'était'},
        'p': {'1': 'étions', '2': 'étiez', '3': '	étaient'},
      },
      'r fut': {
        's': {'1': 'serai', '2': 'seras', '3': 'sera'},
        'p': {'1': 'serons', '2': 'serez', '3': 'seront'},
      },
      'r perf': {
        's': {'1': 'fus', '2': 'fus', '3': 'fut'},
        'p': {'1': 'fûmes', '2': 'fûtes', '3': 'furent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'serais', '2': 'serais', '3': 'serait'},
        'p': {'1': 'serions', '2': 'seriez', '3': 'seraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'sois', '2': 'sois', '3': 'soit'},
        'p': {'1': 'soyons', '2': 'soyez', '3': 'soient'},
      },
      'r imp': {
        's': {'1': 'fusse', '2': 'fusses', '3': 'fût'},
        'p': {'1': 'fussions	', '2': 'fussiez', '3': 'fussent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'sois'},
        'p': {'1': 'soyons', '2': 'soyez'},
      },
    },
  },
);

FrenchVerb avoir = FrenchVerb(
  infinitive: 'avoir',
  auxiliaryVerb: avoir2,
  participles: {
    //this would be weird to decline but whatever
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'ayant', 'f': 'ayant'},
        'p': {'m': 'ayants', 'f': 'ayants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'eu', 'f': 'eue'},
        'p': {'m': 'eus', 'f': 'eues'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'ai', '2': 'as', '3': 'a'},
        'p': {'1': 'avons', '2': 'avez', '3': 'ont'},
      },
      'r imp': {
        's': {'1': 'avais', '2': 'avais', '3': 'avait'},
        'p': {'1': 'avions', '2': 'aviez', '3': '	avaient'},
      },
      'r fut': {
        's': {'1': 'aurai', '2': 'auras', '3': 'aura'},
        'p': {'1': 'aurons', '2': 'aurez', '3': 'auront'},
      },
      'r perf': {
        's': {'1': 'eus', '2': 'eus', '3': 'eut'},
        'p': {'1': 'eûmes', '2': 'eûtes', '3': 'eurent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'aurais', '2': 'aurais', '3': 'aurait'},
        'p': {'1': 'aurions', '2': 'auriez', '3': 'auraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'aie', '2': 'aies', '3': 'ait'},
        'p': {'1': 'ayons', '2': 'ayez', '3': 'aient'},
      },
      'r imp': {
        's': {'1': 'eusse', '2': 'eusses', '3': 'eût'},
        'p': {'1': 'eussions	', '2': 'eussiez', '3': 'eussent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'aie'},
        'p': {'1': 'ayons', '2': 'ayez'},
      },
    },
  },
);

FrenchAuxiliaryVerb avoir2 = FrenchAuxiliaryVerb(
  infinitive: 'avoir',
  participles: {
    //this would be weird to decline but whatever
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'ayant', 'f': 'ayant'},
        'p': {'m': 'ayants', 'f': 'ayants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'eu', 'f': 'eue'},
        'p': {'m': 'eus', 'f': 'eues'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'ai', '2': 'as', '3': 'a'},
        'p': {'1': 'avons', '2': 'avez', '3': 'ont'},
      },
      'r imp': {
        's': {'1': 'avais', '2': 'avais', '3': 'avait'},
        'p': {'1': 'avions', '2': 'aviez', '3': '	avaient'},
      },
      'r fut': {
        's': {'1': 'aurai', '2': 'auras', '3': 'aura'},
        'p': {'1': 'aurons', '2': 'aurez', '3': 'auront'},
      },
      'r perf': {
        's': {'1': 'eus', '2': 'eus', '3': 'eut'},
        'p': {'1': 'eûmes', '2': 'eûtes', '3': 'eurent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'aurais', '2': 'aurais', '3': 'aurait'},
        'p': {'1': 'aurions', '2': 'auriez', '3': 'auraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'aie', '2': 'aies', '3': 'ait'},
        'p': {'1': 'ayons', '2': 'ayez', '3': 'aient'},
      },
      'r imp': {
        's': {'1': 'eusse', '2': 'eusses', '3': 'eût'},
        'p': {'1': 'eussions	', '2': 'eussiez', '3': 'eussent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'aie'},
        'p': {'1': 'ayons', '2': 'ayez'},
      },
    },
  },
);

FrenchVerb aller = FrenchVerb(
  infinitive: 'aller',
  auxiliaryVerb: etre2, // Aller is one of the few verbs that uses 'être' as its auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'allant', 'f': 'allant'},
        'p': {'m': 'allants', 'f': 'allants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'allé', 'f': 'allée'},
        'p': {'m': 'allés', 'f': 'allées'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'vais', '2': 'vas', '3': 'va'},
        'p': {'1': 'allons', '2': 'allez', '3': 'vont'},
      },
      'r imp': {
        's': {'1': 'allais', '2': 'allais', '3': 'allait'},
        'p': {'1': 'allions', '2': 'alliez', '3': 'allaient'},
      },
      'r fut': {
        's': {'1': 'irai', '2': 'iras', '3': 'ira'},
        'p': {'1': 'irons', '2': 'irez', '3': 'iront'},
      },
      'r perf': {
        's': {'1': 'allai', '2': 'allas', '3': 'alla'},
        'p': {'1': 'allâmes', '2': 'allâtes', '3': 'allèrent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'irais', '2': 'irais', '3': 'irait'},
        'p': {'1': 'irions', '2': 'iriez', '3': 'iraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'aille', '2': 'ailles', '3': 'aille'},
        'p': {'1': 'allions', '2': 'alliez', '3': 'aillent'},
      },
      'r imp': {
        's': {'1': 'allasse', '2': 'allasses', '3': 'allât'},
        'p': {'1': 'allassions', '2': 'allassiez', '3': 'allassent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'va'},
        'p': {'1': 'allons', '2': 'allez'},
      },
    },
  },
);

FrenchVerb pouvoir = FrenchVerb(
  infinitive: 'pouvoir',
  auxiliaryVerb: avoir2, // Most verbs, including pouvoir, use avoir as their auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'pouvant', 'f': 'pouvant'},
        'p': {'m': 'pouvants', 'f': 'pouvants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'pu', 'f': 'pu'},
        'p': {'m': 'pus', 'f': 'pus'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'peux', '2': 'peux', '3': 'peut'},
        'p': {'1': 'pouvons', '2': 'pouvez', '3': 'peuvent'},
      },
      'r imp': {
        's': {'1': 'pouvais', '2': 'pouvais', '3': 'pouvait'},
        'p': {'1': 'pouvions', '2': 'pouviez', '3': 'pouvaient'},
      },
      'r fut': {
        's': {'1': 'pourrai', '2': 'pourras', '3': 'pourra'},
        'p': {'1': 'pourrons', '2': 'pourrez', '3': 'pourront'},
      },
      'r perf': {
        's': {'1': 'pus', '2': 'pus', '3': 'put'},
        'p': {'1': 'pûmes', '2': 'pûtes', '3': 'purent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'pourrais', '2': 'pourrais', '3': 'pourrait'},
        'p': {'1': 'pourrions', '2': 'pourriez', '3': 'pourraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'puisse', '2': 'puisses', '3': 'puisse'},
        'p': {'1': 'puissions', '2': 'puissiez', '3': 'puissent'},
      },
      'r imp': {
        's': {'1': 'pusse', '2': 'pusses', '3': 'pût'},
        'p': {'1': 'pussions', '2': 'pussiez', '3': 'pussent'},
      },
    },
    // No imperative form for 'pouvoir'
  },
);

FrenchVerb vouloir = FrenchVerb(
  infinitive: 'vouloir',
  auxiliaryVerb: avoir2, // Vouloir uses avoir as its auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'voulant', 'f': 'voulant'},
        'p': {'m': 'voulants', 'f': 'voulants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'voulu', 'f': 'voulu'},
        'p': {'m': 'voulus', 'f': 'voulus'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'veux', '2': 'veux', '3': 'veut'},
        'p': {'1': 'voulons', '2': 'voulez', '3': 'veulent'},
      },
      'r imp': {
        's': {'1': 'voulais', '2': 'voulais', '3': 'voulait'},
        'p': {'1': 'voulions', '2': 'vouliez', '3': 'voulaient'},
      },
      'r fut': {
        's': {'1': 'voudrai', '2': 'voudras', '3': 'voudra'},
        'p': {'1': 'voudrons', '2': 'voudrez', '3': 'voudront'},
      },
      'r perf': {
        's': {'1': 'voulus', '2': 'voulus', '3': 'voulut'},
        'p': {'1': 'voulûmes', '2': 'voulûtes', '3': 'voulurent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'voudrais', '2': 'voudrais', '3': 'voudrait'},
        'p': {'1': 'voudrions', '2': 'voudriez', '3': 'voudraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'veuille', '2': 'veuilles', '3': 'veuille'},
        'p': {'1': 'voulions', '2': 'vouliez', '3': 'veuillent'},
      },
      'r imp': {
        's': {'1': 'voulusse', '2': 'voulusses', '3': 'voulût'},
        'p': {'1': 'voulussions', '2': 'voulussiez', '3': 'voulussent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'veux'},
        'p': {'1': 'voulons', '2': 'voulez'},
      },
    },
  },
);

FrenchVerb faire = FrenchVerb(
  infinitive: 'faire',
  auxiliaryVerb: avoir2, // Faire uses avoir as its auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'faisant', 'f': 'faisant'},
        'p': {'m': 'faisants', 'f': 'faisants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'fait', 'f': 'faite'},
        'p': {'m': 'faits', 'f': 'faites'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'fais', '2': 'fais', '3': 'fait'},
        'p': {'1': 'faisons', '2': 'faites', '3': 'font'},
      },
      'r imp': {
        's': {'1': 'faisais', '2': 'faisais', '3': 'faisait'},
        'p': {'1': 'faisions', '2': 'faisiez', '3': 'faisaient'},
      },
      'r fut': {
        's': {'1': 'ferai', '2': 'feras', '3': 'fera'},
        'p': {'1': 'ferons', '2': 'ferez', '3': 'feront'},
      },
      'r perf': {
        's': {'1': 'fis', '2': 'fis', '3': 'fit'},
        'p': {'1': 'fîmes', '2': 'fîtes', '3': 'firent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'ferais', '2': 'ferais', '3': 'ferait'},
        'p': {'1': 'ferions', '2': 'feriez', '3': 'feraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'fasse', '2': 'fasses', '3': 'fasse'},
        'p': {'1': 'fassions', '2': 'fassiez', '3': 'fassent'},
      },
      'r imp': {
        's': {'1': 'fisse', '2': 'fisses', '3': 'fît'},
        'p': {'1': 'fissions', '2': 'fissiez', '3': 'fissent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'fais'},
        'p': {'1': 'faisons', '2': 'faites'},
      },
    },
  },
);

FrenchVerb parler = FrenchVerb(
  infinitive: 'parler',
  auxiliaryVerb: avoir2, // Parler uses avoir as its auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'parlant', 'f': 'parlant'},
        'p': {'m': 'parlants', 'f': 'parlants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'parlé', 'f': 'parlée'},
        'p': {'m': 'parlés', 'f': 'parlées'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'parle', '2': 'parles', '3': 'parle'},
        'p': {'1': 'parlons', '2': 'parlez', '3': 'parlent'},
      },
      'r imp': {
        's': {'1': 'parlais', '2': 'parlais', '3': 'parlait'},
        'p': {'1': 'parlions', '2': 'parliez', '3': 'parlaient'},
      },
      'r fut': {
        's': {'1': 'parlerai', '2': 'parleras', '3': 'parlera'},
        'p': {'1': 'parlerons', '2': 'parlerez', '3': 'parleront'},
      },
      'r perf': {
        's': {'1': 'parlai', '2': 'parlas', '3': 'parla'},
        'p': {'1': 'parlâmes', '2': 'parlâtes', '3': 'parlèrent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'parlerais', '2': 'parlerais', '3': 'parlerait'},
        'p': {'1': 'parlerions', '2': 'parleriez', '3': 'parleraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'parle', '2': 'parles', '3': 'parle'},
        'p': {'1': 'parlions', '2': 'parliez', '3': 'parlent'},
      },
      'r imp': {
        's': {'1': 'parlasse', '2': 'parlasses', '3': 'parlât'},
        'p': {'1': 'parlassions', '2': 'parlassiez', '3': 'parlassent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'parle'},
        'p': {'1': 'parlons', '2': 'parlez'},
      },
    },
  },
);

FrenchVerb demander = FrenchVerb(
  infinitive: 'demander',
  auxiliaryVerb: avoir2, // Demander uses avoir as its auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'demandant', 'f': 'demandant'},
        'p': {'m': 'demandants', 'f': 'demandants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'demandé', 'f': 'demandée'},
        'p': {'m': 'demandés', 'f': 'demandées'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'demande', '2': 'demandes', '3': 'demande'},
        'p': {'1': 'demandons', '2': 'demandez', '3': 'demandent'},
      },
      'r imp': {
        's': {'1': 'demandais', '2': 'demandais', '3': 'demandait'},
        'p': {'1': 'demandions', '2': 'demandiez', '3': 'demandaient'},
      },
      'r fut': {
        's': {'1': 'demanderai', '2': 'demanderas', '3': 'demandera'},
        'p': {'1': 'demanderons', '2': 'demanderez', '3': 'demanderont'},
      },
      'r perf': {
        's': {'1': 'demandai', '2': 'demandas', '3': 'demanda'},
        'p': {'1': 'demandâmes', '2': 'demandâtes', '3': 'demandèrent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'demanderais', '2': 'demanderais', '3': 'demanderait'},
        'p': {'1': 'demanderions', '2': 'demanderiez', '3': 'demanderaient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'demande', '2': 'demandes', '3': 'demande'},
        'p': {'1': 'demandions', '2': 'demandiez', '3': 'demandent'},
      },
      'r imp': {
        's': {'1': 'demandasse', '2': 'demandasses', '3': 'demandât'},
        'p': {'1': 'demandassions', '2': 'demandassiez', '3': 'demandassent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'demande'},
        'p': {'1': 'demandons', '2': 'demandez'},
      },
    },
  },
);

FrenchVerb savoir = FrenchVerb(
  infinitive: 'savoir',
  auxiliaryVerb: avoir2, // Savoir uses avoir as its auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'sachant', 'f': 'sachant'},
        'p': {'m': 'sachants', 'f': 'sachants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'su', 'f': 'su'},
        'p': {'m': 'sus', 'f': 'sus'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'sais', '2': 'sais', '3': 'sait'},
        'p': {'1': 'savons', '2': 'savez', '3': 'savent'},
      },
      'r imp': {
        's': {'1': 'savais', '2': 'savais', '3': 'savait'},
        'p': {'1': 'savions', '2': 'saviez', '3': 'savaient'},
      },
      'r fut': {
        's': {'1': 'saurai', '2': 'sauras', '3': 'saura'},
        'p': {'1': 'saurons', '2': 'saurez', '3': 'sauront'},
      },
      'r perf': {
        's': {'1': 'sus', '2': 'sus', '3': 'sut'},
        'p': {'1': 'sûmes', '2': 'sûtes', '3': 'surent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'saurais', '2': 'saurais', '3': 'saurait'},
        'p': {'1': 'saurions', '2': 'sauriez', '3': 'sauraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'sache', '2': 'saches', '3': 'sache'},
        'p': {'1': 'sachions', '2': 'sachiez', '3': 'sachent'},
      },
      'r imp': {
        's': {'1': 'susse', '2': 'susses', '3': 'sût'},
        'p': {'1': 'sussions', '2': 'sussiez', '3': 'sussent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'sache'},
        'p': {'1': 'sachons', '2': 'sachez'},
      },
    },
  },
);

FrenchVerb venir = FrenchVerb(
  infinitive: 'venir',
  auxiliaryVerb: etre2, // Venir uses être as its auxiliary in compound tenses
  participles: {
    'r pres': const FrenchAdjective(
      declension: {
        's': {'m': 'venant', 'f': 'venant'},
        'p': {'m': 'venants', 'f': 'venants'}
      },
    ),
    'r perf': const FrenchAdjective(
      declension: {
        's': {'m': 'venu', 'f': 'venue'},
        'p': {'m': 'venus', 'f': 'venues'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'viens', '2': 'viens', '3': 'vient'},
        'p': {'1': 'venons', '2': 'venez', '3': 'viennent'},
      },
      'r imp': {
        's': {'1': 'venais', '2': 'venais', '3': 'venait'},
        'p': {'1': 'venions', '2': 'veniez', '3': 'venaient'},
      },
      'r fut': {
        's': {'1': 'viendrai', '2': 'viendras', '3': 'viendra'},
        'p': {'1': 'viendrons', '2': 'viendrez', '3': 'viendront'},
      },
      'r perf': {
        's': {'1': 'vins', '2': 'vins', '3': 'vint'},
        'p': {'1': 'vînmes', '2': 'vîntes', '3': 'vinrent'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'viendrais', '2': 'viendrais', '3': 'viendrait'},
        'p': {'1': 'viendrions', '2': 'viendriez', '3': 'viendraient'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'vienne', '2': 'viennes', '3': 'vienne'},
        'p': {'1': 'venions', '2': 'veniez', '3': 'viennent'},
      },
      'r imp': {
        's': {'1': 'vinsse', '2': 'vinsses', '3': 'vînt'},
        'p': {'1': 'vinssions', '2': 'vinssiez', '3': 'vinssent'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'viens'},
        'p': {'1': 'venons', '2': 'venez'},
      },
    },
  },
);
