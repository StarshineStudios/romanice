import '../italian_classes.dart';

List<ItalianVerb> italianVerbs = [
  essere,
];

ItalianVerb essere = ItalianVerb(
  infinitive: 'èssere',
  auxiliaryVerb: essere2,
  gerund: 'essèndo',
  participles: {
    //this would be weird to decline but whatever
    'r perf': const ItalianAdjective(
      declension: {
        's': {'m': 'stàto', 'f': 'stàta'},
        'p': {'m': 'stàti', 'f': 'stàte'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'sono', '2': 'sei', '3': 'è'},
        'p': {'1': 'siamo', '2': 'siete', '3': 'sono'},
      },
      'r imp': {
        's': {'1': 'ero', '2': 'eri', '3': 'era'},
        'p': {'1': 'eravamo', '2': 'eravate', '3': 'erano'},
      },
      'r fut': {
        's': {'1': 'sarò', '2': 'sarai', '3': 'sarà'},
        'p': {'1': 'saremo', '2': 'sarete', '3': 'saranno'},
      },
      'r perf': {
        's': {'1': 'fui', '2': 'fosti', '3': 'fu'},
        'p': {'1': 'fummo', '2': 'foste', '3': 'furono'},
      },
    },
    'con': {
      'r pres': {
        's': {'1': 'sarò', '2': 'sarai', '3': 'sarà'},
        'p': {'1': 'saremo', '2': 'sarete', '3': 'saranno'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'sia', '2': 'sia', '3': 'sia'},
        'p': {'1': 'siamo', '2': 'siate', '3': 'siano'},
      },
      'r imp': {
        's': {'1': 'fossi', '2': 'fossi', '3': 'fosse'},
        'p': {'1': 'fossimo', '2': 'foste', '3': 'fossero'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'sii', '3': 'sia'},
        'p': {'1': 'siamo', '2': 'siate', '3': 'siano'},
      },
    },
  },
);

ItalianAuxiliaryVerb essere2 = ItalianAuxiliaryVerb(
  infinitive: 'èssere',
  gerund: 'essèndo',
  participles: {
    //this would be weird to decline but whatever
    'r perf': const ItalianAdjective(
      declension: {
        's': {'m': 'stàto', 'f': 'stàta'},
        'p': {'m': 'stàti', 'f': 'stàte'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'sono', '2': 'sei', '3': 'è'},
        'p': {'1': 'siamo', '2': 'siete', '3': 'sono'},
      },
      'r imp': {
        's': {'1': 'ero', '2': 'eri', '3': 'era'},
        'p': {'1': 'eravamo', '2': 'eravate', '3': 'erano'},
      },
      'r fut': {
        's': {'1': 'sarò', '2': 'sarai', '3': 'sarà'},
        'p': {'1': 'saremo', '2': 'sarete', '3': 'saranno'},
      },
      'r perf': {
        's': {'1': 'fui', '2': 'fosti', '3': 'fu'},
        'p': {'1': 'fummo', '2': 'foste', '3': 'furono'},
      },
    },
    'con': {
      'pres': {
        's': {'1': 'sarò', '2': 'sarai', '3': 'sarà'},
        'p': {'1': 'saremo', '2': 'sarete', '3': 'saranno'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'sia', '2': 'sia', '3': 'sia'},
        'p': {'1': 'siamo', '2': 'siate', '3': 'siano'},
      },
      'r imp': {
        's': {'1': 'fossi', '2': 'fossi', '3': 'fosse'},
        'p': {'1': 'fossimo', '2': 'foste', '3': 'fossero'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'sii', '3': 'sia'},
        'p': {'1': 'siamo', '2': 'siate', '3': 'siano'},
      },
    },
  },
);
