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
