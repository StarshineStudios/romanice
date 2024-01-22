import 'package:colorguesser/core/enums.dart';

import '../romanian_classes.dart';

List<RomanianVerb> romanianVerbs = [
  fi,
  avea,
  vrea,
  vedea,
];

RomanianVerb fi = RomanianVerb(
  infinitive: 'a fi',
  gerund: 'fiind',
  participles: {
    //this would be weird to decline but whatever
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'fost', Gender.f: 'fostă', Gender.n: 'fost'},
          Number.p: {Gender.m: 'foști', Gender.f: 'foste', Gender.n: 'foste'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'fost', Gender.f: 'foste', Gender.n: 'fost'},
          Number.p: {Gender.m: 'foști', Gender.f: 'foste', Gender.n: 'foste'}
        },
        // 'voc': {
        //   Number.s: {Gender.m: '', Gender.f: '', Gender.n: ''},
        //   Number.p: {Gender.m: '', Gender.f: '', Gender.n: ''}
        // },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sunt', Person.second: 'ești', Person.third: 'este'},
        Number.p: {Person.first: 'suntem', Person.second: 'sunteți', Person.third: 'sunt'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'eram', Person.second: 'erai', Person.third: 'era'},
        Number.p: {Person.first: 'eram', Person.second: 'erați', Person.third: 'erau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fusei', Person.second: 'fuseși', Person.third: 'fuse'},
        Number.p: {Person.first: 'fuserăm', Person.second: 'fuserăți', Person.third: 'fuseră'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fusesem', Person.second: 'fuseseși', Person.third: 'fusese'},
        Number.p: {Person.first: 'fuseserăm', Person.second: 'fuseserăți', Person.third: 'fuseseră'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să fiu', Person.second: 'să fii', Person.third: 'să fie'},
        Number.p: {Person.first: 'să fim', Person.second: 'să fiți', Person.third: 'să fie'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'fii',
        },
        Number.p: {
          Person.second: 'fiți',
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
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'avut', Gender.f: 'avută', Gender.n: 'avut'},
          Number.p: {Gender.m: 'avuți', Gender.f: 'avute', Gender.n: 'avute'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'avut', Gender.f: 'avute', Gender.n: 'avut'},
          Number.p: {Gender.m: 'avuți', Gender.f: 'avute', Gender.n: 'avute'}
        },
        // 'voc': {
        //   Number.s: {Gender.m: '', Gender.f: '', Gender.n: ''},
        //   Number.p: {Gender.m: '', Gender.f: '', Gender.n: ''}
        // },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'am', Person.second: 'ai', Person.third: 'are'},
        Number.p: {Person.first: 'avem', Person.second: 'aveți', Person.third: 'au'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'aveam', Person.second: 'aveai', Person.third: 'avea'},
        Number.p: {Person.first: 'aveam', Person.second: 'aveați', Person.third: 'aveau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'avui', Person.second: 'avuși', Person.third: 'avu'},
        Number.p: {Person.first: 'avurăm', Person.second: 'avurăți', Person.third: 'avură'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'avusem', Person.second: 'avuseși', Person.third: 'avuse'},
        Number.p: {Person.first: 'avuserăm', Person.second: 'avuserăți', Person.third: 'avuseră'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să am', Person.second: 'să ai', Person.third: 'să aibă'},
        Number.p: {Person.first: 'să avem', Person.second: 'să aveți', Person.third: 'să aibă'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'ai',
        },
        Number.p: {
          Person.second: 'aveți',
        },
      },
    },
  },
);

//(auxiliary verb, forms the perfect compus tense)
RomanianAuxiliaryVerb avea2 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'am', Person.second: 'ai', Person.third: 'a'},
        Number.p: {Person.first: 'am', Person.second: 'ați', Person.third: 'au'},
      },
    },
  },
);

//(auxiliary verb, forms the conditional tense)
RomanianAuxiliaryVerb avea3 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aș', Person.second: 'ai', Person.third: 'ar'},
        Number.p: {Person.first: 'am', Person.second: 'ați', Person.third: 'ar'},
      },
    },
  },
);

RomanianVerb vrea = RomanianVerb(
  infinitive: 'a vrea',
  gerund: 'vrând',
  participles: {
    //this would be weird to decline but whatever
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'vrut', Gender.f: 'vrută', Gender.n: 'vrut'},
          Number.p: {Gender.m: 'vruți', Gender.f: 'vrute', Gender.n: 'vrute'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'vrut', Gender.f: 'vrute', Gender.n: 'vrut'},
          Number.p: {Gender.m: 'vruți', Gender.f: 'vrute', Gender.n: 'vrute'}
        },
        // 'voc': {
        //   Number.s: {Gender.m: '', Gender.f: '', Gender.n: ''},
        //   Number.p: {Gender.m: '', Gender.f: '', Gender.n: ''}
        // },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vreau', Person.second: 'vrei', Person.third: 'vrea'},
        Number.p: {Person.first: 'vrem', Person.second: 'vreți', Person.third: 'au'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'vream', Person.second: 'vreai', Person.third: 'vrea'},
        Number.p: {Person.first: 'vream', Person.second: 'vreați', Person.third: 'vreau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'vrui', Person.second: 'vruși', Person.third: 'vruse'},
        Number.p: {Person.first: 'vrurăm', Person.second: 'vrurăți', Person.third: 'vrură'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'vrusem', Person.second: 'vruseși', Person.third: 'vruse'},
        Number.p: {Person.first: 'vruserăm', Person.second: 'vruserăți', Person.third: 'vruseră'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să vreau', Person.second: 'să vrei', Person.third: 'să vrea'},
        Number.p: {Person.first: 'să vrem', Person.second: 'să vreți', Person.third: 'să vrea'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'vrei',
        },
        Number.p: {
          Person.second: 'vreți',
        },
      },
    },
  },
);

//(auxiliary verb, forms the perfect compus tense)
RomanianAuxiliaryVerb vrea2 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'voi', Person.second: 'vei', Person.third: 'va'},
        Number.p: {Person.first: 'vom', Person.second: 'veți', Person.third: 'vor'},
      },
    },
  },
);

//(auxiliary verb, forms the conditional tense)
RomanianAuxiliaryVerb vrea3 = RomanianAuxiliaryVerb(
  infinitive: 'a avea',
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'oi', Person.second: 'oi', Person.third: 'o'},
        Number.p: {Person.first: 'om', Person.second: 'oți', Person.third: 'or'},
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
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'văzut', Gender.f: 'văzută', Gender.n: 'văzut'},
          Number.p: {Gender.m: 'văzuți', Gender.f: 'văzute', Gender.n: 'văzute'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'văzut', Gender.f: 'văzute', Gender.n: 'văzut'},
          Number.p: {Gender.m: 'văzuți', Gender.f: 'văzute', Gender.n: 'văzute'}
        },
        // 'voc': {
        //   Number.s: {Gender.m: '', Gender.f: '', Gender.n: ''},
        //   Number.p: {Gender.m: '', Gender.f: '', Gender.n: ''}
        // },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'văd', Person.second: 'vezi', Person.third: 'vede'},
        Number.p: {Person.first: 'vedem', Person.second: 'vedeţi', Person.third: 'văd'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'vedeam', Person.second: 'vedeai', Person.third: 'vedea'},
        Number.p: {Person.first: 'vedeam', Person.second: 'vedeaţi', Person.third: 'vedeau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'văzui', Person.second: 'văzuşi', Person.third: 'văzu'},
        Number.p: {Person.first: 'văzurăm', Person.second: 'văzurăţi', Person.third: 'văzură'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'văzusem', Person.second: 'văzuseşi', Person.third: 'văzuse'},
        Number.p: {Person.first: 'văzuserăm', Person.second: 'văzuserăţi', Person.third: 'văzuseră'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să văd', Person.second: 'să vezi', Person.third: 'să vadă'},
        Number.p: {Person.first: 'să vedem', Person.second: 'să vedeți', Person.third: 'să vadă'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'vezi',
        },
        Number.p: {
          Person.second: 'vedeți',
        },
      },
    },
  },
);
