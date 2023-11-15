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
          's': {'m': 'fost', 'f': 'fostă', 'n': 'fost'},
          'p': {'m': 'foști', 'f': 'foste', 'n': 'foste'}
        },
        'gendat': {
          's': {'m': 'fost', 'f': 'foste', 'n': 'fost'},
          'p': {'m': 'foști', 'f': 'foste', 'n': 'foste'}
        },
        // 'voc': {
        //   's': {'m': '', 'f': '', 'n': ''},
        //   'p': {'m': '', 'f': '', 'n': ''}
        // },
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'sunt', '2': 'ești', '3': 'este'},
        'p': {'1': 'suntem', '2': 'sunteți', '3': 'sunt'},
      },
      'r imp': {
        's': {'1': 'eram', '2': 'erai', '3': 'era'},
        'p': {'1': 'eram', '2': 'erați', '3': 'erau'},
      },
      'r perf': {
        's': {'1': 'fusei', '2': 'fuseși', '3': 'fuse'},
        'p': {'1': 'fuserăm', '2': 'fuserăți', '3': 'fuseră'},
      },
      'r  plup': {
        's': {'1': 'fusesem', '2': 'fuseseși', '3': 'fusese'},
        'p': {'1': 'fuseserăm', '2': 'fuseserăți', '3': 'fuseseră'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'să fiu', '2': 'să fii', '3': 'să fie'},
        'p': {'1': 'să fim', '2': 'să fiți', '3': 'să fie'},
      },
    },
    'imp': {
      'r pres': {
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

RomanianVerb avea = RomanianVerb(
  infinitive: 'a avea',
  gerund: 'având',
  participles: {
    //this would be weird to decline but whatever
    'past': const RomanianAdjective(
      declension: {
        'nomacc': {
          's': {'m': 'avut', 'f': 'avută', 'n': 'avut'},
          'p': {'m': 'avuți', 'f': 'avute', 'n': 'avute'}
        },
        'gendat': {
          's': {'m': 'avut', 'f': 'avute', 'n': 'avut'},
          'p': {'m': 'avuți', 'f': 'avute', 'n': 'avute'}
        },
        // 'voc': {
        //   's': {'m': '', 'f': '', 'n': ''},
        //   'p': {'m': '', 'f': '', 'n': ''}
        // },
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'am', '2': 'ai', '3': 'are'},
        'p': {'1': 'avem', '2': 'aveți', '3': 'au'},
      },
      'r imp': {
        's': {'1': 'aveam', '2': 'aveai', '3': 'avea'},
        'p': {'1': 'aveam', '2': 'aveați', '3': 'aveau'},
      },
      'r perf': {
        's': {'1': 'avui', '2': 'avuși', '3': 'avu'},
        'p': {'1': 'avurăm', '2': 'avurăți', '3': 'avură'},
      },
      'r  plup': {
        's': {'1': 'avusem', '2': 'avuseși', '3': 'avuse'},
        'p': {'1': 'avuserăm', '2': 'avuserăți', '3': 'avuseră'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'să am', '2': 'să ai', '3': 'să aibă'},
        'p': {'1': 'să avem', '2': 'să aveți', '3': 'să aibă'},
      },
    },
    'imp': {
      'r pres': {
        's': {
          '2': 'ai',
        },
        'p': {
          '2': 'aveți',
        },
      },
    },
  },
);

//(auxiliary verb, forms the perfect compus tense)
RomanianAuxiliaryVerb avea2 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'am', '2': 'ai', '3': 'a'},
        'p': {'1': 'am', '2': 'ați', '3': 'au'},
      },
    },
  },
);

//(auxiliary verb, forms the conditional tense)
RomanianAuxiliaryVerb avea3 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'aș', '2': 'ai', '3': 'ar'},
        'p': {'1': 'am', '2': 'ați', '3': 'ar'},
      },
    },
  },
);

RomanianVerb vrea = RomanianVerb(
  infinitive: 'a vrea',
  gerund: 'vrând',
  participles: {
    //this would be weird to decline but whatever
    'past': const RomanianAdjective(
      declension: {
        'nomacc': {
          's': {'m': 'vrut', 'f': 'vrută', 'n': 'vrut'},
          'p': {'m': 'vruți', 'f': 'vrute', 'n': 'vrute'}
        },
        'gendat': {
          's': {'m': 'vrut', 'f': 'vrute', 'n': 'vrut'},
          'p': {'m': 'vruți', 'f': 'vrute', 'n': 'vrute'}
        },
        // 'voc': {
        //   's': {'m': '', 'f': '', 'n': ''},
        //   'p': {'m': '', 'f': '', 'n': ''}
        // },
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'vreau', '2': 'vrei', '3': 'vrea'},
        'p': {'1': 'vrem', '2': 'vreți', '3': 'au'},
      },
      'r imp': {
        's': {'1': 'vream', '2': 'vreai', '3': 'vrea'},
        'p': {'1': 'vream', '2': 'vreați', '3': 'vreau'},
      },
      'r perf': {
        's': {'1': 'vrui', '2': 'vruși', '3': 'vruse'},
        'p': {'1': 'vrurăm', '2': 'vrurăți', '3': 'vrură'},
      },
      'r  plup': {
        's': {'1': 'vrusem', '2': 'vruseși', '3': 'vruse'},
        'p': {'1': 'vruserăm', '2': 'vruserăți', '3': 'vruseră'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'să vreau', '2': 'să vrei', '3': 'să vrea'},
        'p': {'1': 'să vrem', '2': 'să vreți', '3': 'să vrea'},
      },
    },
    'imp': {
      'r pres': {
        's': {
          '2': 'vrei',
        },
        'p': {
          '2': 'vreți',
        },
      },
    },
  },
);

//(auxiliary verb, forms the perfect compus tense)
RomanianAuxiliaryVerb vrea2 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'voi', '2': 'vei', '3': 'va'},
        'p': {'1': 'vom', '2': 'veți', '3': 'vor'},
      },
    },
  },
);

//(auxiliary verb, forms the conditional tense)
RomanianAuxiliaryVerb vrea3 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'oi', '2': 'oi', '3': 'o'},
        'p': {'1': 'om', '2': 'oți', '3': 'or'},
      },
    },
  },
);

RomanianVerb vedea = RomanianVerb(
  infinitive: 'a vedea',
  gerund: 'văzând',
  participles: {
    //This form is not listed in wiktionary but
    //it still certainly exists and is important
    //as more than just a participle for avea forms
    'past': const RomanianAdjective(
      declension: {
        'nomacc': {
          's': {'m': 'văzut', 'f': 'văzută', 'n': 'văzut'},
          'p': {'m': 'văzuți', 'f': 'văzute', 'n': 'văzute'}
        },
        'gendat': {
          's': {'m': 'văzut', 'f': 'văzute', 'n': 'văzut'},
          'p': {'m': 'văzuți', 'f': 'văzute', 'n': 'văzute'}
        },
        // 'voc': {
        //   's': {'m': '', 'f': '', 'n': ''},
        //   'p': {'m': '', 'f': '', 'n': ''}
        // },
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'văd', '2': 'vezi', '3': 'vede'},
        'p': {'1': 'vedem', '2': 'vedeţi', '3': 'văd'},
      },
      'r imp': {
        's': {'1': 'vedeam', '2': 'vedeai', '3': 'vedea'},
        'p': {'1': 'vedeam', '2': 'vedeaţi', '3': 'vedeau'},
      },
      'r perf': {
        's': {'1': 'văzui', '2': 'văzuşi', '3': 'văzu'},
        'p': {'1': 'văzurăm', '2': 'văzurăţi', '3': 'văzură'},
      },
      'r  plup': {
        's': {'1': 'văzusem', '2': 'văzuseşi', '3': 'văzuse'},
        'p': {'1': 'văzuserăm', '2': 'văzuserăţi', '3': 'văzuseră'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'să văd', '2': 'să vezi', '3': 'să vadă'},
        'p': {'1': 'să vedem', '2': 'să vedeți', '3': 'să vadă'},
      },
    },
    'imp': {
      'r pres': {
        's': {
          '2': 'vezi',
        },
        'p': {
          '2': 'vedeți',
        },
      },
    },
  },
);
