import 'package:colorguesser/core/enums.dart';

import '../romanian_classes.dart';

List<RomanianVerb> romanianVerbs = [
  fi,
  avea,
  iubi,
  vedea,
  face,
  vrea,
  putea,
  trebui,
  merge,
  sti,
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
RomanianVerb iubi = RomanianVerb(
  infinitive: 'a iubi',
  gerund: 'iubind',
  participles: {
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'iubit', Gender.f: 'iubită', Gender.n: 'iubit'},
          Number.p: {Gender.m: 'iubiți', Gender.f: 'iubite', Gender.n: 'iubite'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'iubit', Gender.f: 'iubită', Gender.n: 'iubit'},
          Number.p: {Gender.m: 'iubiți', Gender.f: 'iubite', Gender.n: 'iubite'}
        },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'iubesc', Person.second: 'iubești', Person.third: 'iubește'},
        Number.p: {Person.first: 'iubim', Person.second: 'iubiți', Person.third: 'iubesc'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'iubeam', Person.second: 'iubeai', Person.third: 'iubea'},
        Number.p: {Person.first: 'iubeam', Person.second: 'iubeați', Person.third: 'iubeau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'am iubit', Person.second: 'ai iubit', Person.third: 'a iubit'},
        Number.p: {Person.first: 'am iubit', Person.second: 'ați iubit', Person.third: 'au iubit'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fusesem iubit', Person.second: 'fusesi iubit', Person.third: 'fusese iubit'},
        Number.p: {Person.first: 'fuseserăm iubit', Person.second: 'fuseserăți iubit', Person.third: 'fuseseră iubit'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să iubesc', Person.second: 'să iubești', Person.third: 'să iubească'},
        Number.p: {Person.first: 'să iubim', Person.second: 'să iubiți', Person.third: 'să iubească'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'iubește',
        },
        Number.p: {
          Person.second: 'iubiți',
        },
      },
    },
  },
);
RomanianVerb face = RomanianVerb(
  infinitive: 'a face',
  gerund: 'făcând',
  participles: {
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'făcut', Gender.f: 'făcută', Gender.n: 'făcut'},
          Number.p: {Gender.m: 'făcuți', Gender.f: 'făcute', Gender.n: 'făcute'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'făcut', Gender.f: 'făcută', Gender.n: 'făcut'},
          Number.p: {Gender.m: 'făcuți', Gender.f: 'făcute', Gender.n: 'făcute'}
        },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'fac', Person.second: 'faci', Person.third: 'face'},
        Number.p: {Person.first: 'facem', Person.second: 'faceți', Person.third: 'fac'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'făceam', Person.second: 'făceai', Person.third: 'făcea'},
        Number.p: {Person.first: 'făceam', Person.second: 'făceați', Person.third: 'făceau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'am făcut', Person.second: 'ai făcut', Person.third: 'a făcut'},
        Number.p: {Person.first: 'am făcut', Person.second: 'ați făcut', Person.third: 'au făcut'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fusesem făcut', Person.second: 'fusesi făcut', Person.third: 'fusese făcut'},
        Number.p: {Person.first: 'fuseserăm făcut', Person.second: 'fuseserăți făcut', Person.third: 'fuseseră făcut'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să fac', Person.second: 'să faci', Person.third: 'să facă'},
        Number.p: {Person.first: 'să facem', Person.second: 'să faceți', Person.third: 'să facă'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'fă',
        },
        Number.p: {
          Person.second: 'faceți',
        },
      },
    },
  },
);
RomanianVerb putea = RomanianVerb(
  infinitive: 'a putea',
  gerund: 'putând',
  participles: {
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'putut', Gender.f: 'putută', Gender.n: 'putut'},
          Number.p: {Gender.m: 'putuți', Gender.f: 'putute', Gender.n: 'putute'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'putut', Gender.f: 'putută', Gender.n: 'putut'},
          Number.p: {Gender.m: 'putuți', Gender.f: 'putute', Gender.n: 'putute'}
        },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'pot', Person.second: 'poți', Person.third: 'poate'},
        Number.p: {Person.first: 'putem', Person.second: 'puteți', Person.third: 'pot'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'puteam', Person.second: 'puteai', Person.third: 'putea'},
        Number.p: {Person.first: 'puteam', Person.second: 'puteați', Person.third: 'puteau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'am putut', Person.second: 'ai putut', Person.third: 'a putut'},
        Number.p: {Person.first: 'am putut', Person.second: 'ați putut', Person.third: 'au putut'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fusesem putut', Person.second: 'fusesi putut', Person.third: 'fusese putut'},
        Number.p: {Person.first: 'fuseserăm putut', Person.second: 'fuseserăți putut', Person.third: 'fuseseră putut'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să pot', Person.second: 'să poți', Person.third: 'să poată'},
        Number.p: {Person.first: 'să putem', Person.second: 'să puteți', Person.third: 'să poată'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'poți',
        },
        Number.p: {
          Person.second: 'puteți',
        },
      },
    },
  },
);
RomanianVerb trebui = RomanianVerb(
  infinitive: 'a trebui',
  gerund: 'trebuind',
  participles: {
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'trebuit', Gender.f: 'trebuită', Gender.n: 'trebuit'},
          Number.p: {Gender.m: 'trebuiți', Gender.f: 'trebuite', Gender.n: 'trebuite'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'trebuit', Gender.f: 'trebuită', Gender.n: 'trebuit'},
          Number.p: {Gender.m: 'trebuiți', Gender.f: 'trebuite', Gender.n: 'trebuite'}
        },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'trebuie', Person.second: 'trebuiești', Person.third: 'trebuie'},
        Number.p: {Person.first: 'trebuim', Person.second: 'trebuieți', Person.third: 'trebuiesc'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'trebuia', Person.second: 'trebuiai', Person.third: 'trebuia'},
        Number.p: {Person.first: 'trebuia', Person.second: 'trebuieai', Person.third: 'trebuiau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'am trebuit', Person.second: 'ai trebuit', Person.third: 'a trebuit'},
        Number.p: {Person.first: 'am trebuit', Person.second: 'ați trebuit', Person.third: 'au trebuit'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fusesem trebuit', Person.second: 'fusesi trebuit', Person.third: 'fusese trebuit'},
        Number.p: {Person.first: 'fuseserăm trebuit', Person.second: 'fuseserăți trebuit', Person.third: 'fuseseră trebuit'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să trebuiască', Person.second: 'să trebuiască', Person.third: 'să trebuiască'},
        Number.p: {Person.first: 'să trebuim', Person.second: 'să trebuieți', Person.third: 'să trebuiască'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'trebuiești',
        },
        Number.p: {
          Person.second: 'trebuieți',
        },
      },
    },
  },
);
RomanianVerb merge = RomanianVerb(
  infinitive: 'a merge',
  gerund: 'mergând',
  participles: {
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'mers', Gender.f: 'mersă', Gender.n: 'mers'},
          Number.p: {Gender.m: 'merși', Gender.f: 'merse', Gender.n: 'merse'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'mers', Gender.f: 'mersă', Gender.n: 'mers'},
          Number.p: {Gender.m: 'merși', Gender.f: 'merse', Gender.n: 'merse'}
        },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'merg', Person.second: 'mergi', Person.third: 'merge'},
        Number.p: {Person.first: 'mergem', Person.second: 'mergeți', Person.third: 'merg'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'mergeam', Person.second: 'mergeai', Person.third: 'mergea'},
        Number.p: {Person.first: 'mergeam', Person.second: 'mergeați', Person.third: 'mergeau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'am mers', Person.second: 'ai mers', Person.third: 'a mers'},
        Number.p: {Person.first: 'am mers', Person.second: 'ați mers', Person.third: 'au mers'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fusesem mers', Person.second: 'fusesi mers', Person.third: 'fusese mers'},
        Number.p: {Person.first: 'fuseserăm mers', Person.second: 'fuseserăți mers', Person.third: 'fuseseră mers'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să merg', Person.second: 'să mergi', Person.third: 'să meargă'},
        Number.p: {Person.first: 'să mergem', Person.second: 'să mergeți', Person.third: 'să meargă'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'mergi',
        },
        Number.p: {
          Person.second: 'mergeți',
        },
      },
    },
  },
);
RomanianVerb sti = RomanianVerb(
  infinitive: 'a ști',
  gerund: 'știind',
  participles: {
    Tense.perfectRomance: const RomanianAdjective(
      declension: {
        Case.nomacc: {
          Number.s: {Gender.m: 'știut', Gender.f: 'știută', Gender.n: 'știut'},
          Number.p: {Gender.m: 'știuți', Gender.f: 'știute', Gender.n: 'știute'}
        },
        Case.gendat: {
          Number.s: {Gender.m: 'știut', Gender.f: 'știută', Gender.n: 'știut'},
          Number.p: {Gender.m: 'știuți', Gender.f: 'știute', Gender.n: 'știute'}
        },
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'știu', Person.second: 'știi', Person.third: 'știe'},
        Number.p: {Person.first: 'știm', Person.second: 'știți', Person.third: 'știu'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'știam', Person.second: 'știai', Person.third: 'știa'},
        Number.p: {Person.first: 'știam', Person.second: 'știați', Person.third: 'știau'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'am știut', Person.second: 'ai știut', Person.third: 'a știut'},
        Number.p: {Person.first: 'am știut', Person.second: 'ați știut', Person.third: 'au știut'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fusesem știut', Person.second: 'fusesi știut', Person.third: 'fusese știut'},
        Number.p: {Person.first: 'fuseserăm știut', Person.second: 'fuseserăți știut', Person.third: 'fuseseră știut'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'să știu', Person.second: 'să știi', Person.third: 'să știe'},
        Number.p: {Person.first: 'să știm', Person.second: 'să știți', Person.third: 'să știe'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {
          Person.second: 'știi',
        },
        Number.p: {
          Person.second: 'știți',
        },
      },
    },
  },
);
