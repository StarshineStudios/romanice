import '../romanian_classes.dart';

List<RomanianVerb> romanianVerbs = [
  fi,
];

RomanianVerb fi = RomanianVerb(
  infinitive: 'a fi',
  gerund: 'fiind',
  participles: {
    //this would be weird to decline but whatever
    'past': const RomanianAdjective(
      declension: {
        'nomacc': {
          's': {'m': '', 'f': '', 'n': ''},
          'p': {'m': '', 'f': '', 'n': ''}
        },
        'gendat': {
          's': {'m': '', 'f': '', 'n': ''},
          'p': {'m': '', 'f': '', 'n': ''}
        },
        'voc': {
          's': {'m': '', 'f': '', 'n': ''},
          'p': {'m': '', 'f': '', 'n': ''}
        },
      },
    ),
  },
  conjugation: {
    'ind': {
      'rpres': {
        's': {'1': 'sunt', '2': 'ești', '3': 'este'},
        'p': {'1': 'suntem', '2': 'sunteți', '3': 'sunt'},
      },
      'rimp': {
        's': {'1': 'eram', '2': 'erai', '3': 'era'},
        'p': {'1': 'eram', '2': 'erați', '3': 'erau'},
      },
      'rperf': {
        's': {'1': 'fusei', '2': 'fuseși', '3': 'fuse'},
        'p': {'1': 'fuserăm', '2': 'fuserăți', '3': 'fuseră'},
      },
      'r plup': {
        's': {'1': 'fusesem', '2': 'fuseseși', '3': 'fusese'},
        'p': {'1': 'fuseserăm', '2': 'fuseserăți', '3': 'fuseseră'},
      },
    },
    'sub': {
      'rpres': {
        's': {'1': 'să fiu', '2': 'să fii', '3': 'să fie'},
        'p': {'1': 'să fim', '2': 'să fiți', '3': 'să fie'},
      },
    },
    'imp': {
      'rpres': {
        's': {
          '2': 'fii',
        },
        'p': {
          '2': 'fiți',
        },
      },
    },
  },
);
