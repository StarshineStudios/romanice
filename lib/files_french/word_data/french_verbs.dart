import '../../core/enums.dart';
import '../french_classes.dart';

List<FrenchVerb> frenchVerbs = [
  etre,
  avoir,
  aimer,
  voir,
  faire,
  vouloir,
  pouvoir,
  devoir,
  aller,
  savoir,
];

// parler,
// demander,
// venir,
FrenchVerb etre = FrenchVerb(
  infinitive: 'être',
  auxiliaryVerb: avoir2,
  participles: {
    //this would be weird to decline but whatever
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'étant', Gender.f: 'étant'},
        Number.p: {Gender.m: 'étants', Gender.f: 'étants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'été', Gender.f: 'été'},
        Number.p: {Gender.m: 'été', Gender.f: 'été'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'suis', Person.second: 'es', Person.third: 'est'},
        Number.p: {Person.first: 'sommes', Person.second: 'êtes', Person.third: 'sont'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'étais', Person.second: 'étais', Person.third: 'était'},
        Number.p: {Person.first: 'étions', Person.second: 'étiez', Person.third: 'étaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'serai', Person.second: 'seras', Person.third: 'sera'},
        Number.p: {Person.first: 'serons', Person.second: 'serez', Person.third: 'seront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fus', Person.second: 'fus', Person.third: 'fut'},
        Number.p: {Person.first: 'fûmes', Person.second: 'fûtes', Person.third: 'furent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'serais', Person.second: 'serais', Person.third: 'serait'},
        Number.p: {Person.first: 'serions', Person.second: 'seriez', Person.third: 'seraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sois', Person.second: 'sois', Person.third: 'soit'},
        Number.p: {Person.first: 'soyons', Person.second: 'soyez', Person.third: 'soient'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fusse', Person.second: 'fusses', Person.third: 'fût'},
        Number.p: {Person.first: 'fussions	', Person.second: 'fussiez', Person.third: 'fussent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sois'},
        Number.p: {Person.first: 'soyons', Person.second: 'soyez'},
      },
    },
  },
);

FrenchAuxiliaryVerb etre2 = FrenchAuxiliaryVerb(
  infinitive: 'être',
  participles: {
    //this would be weird to decline but whatever
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'étant', Gender.f: 'étant'},
        Number.p: {Gender.m: 'étants', Gender.f: 'étants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'été', Gender.f: 'été'},
        Number.p: {Gender.m: 'été', Gender.f: 'été'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'suis', Person.second: 'es', Person.third: 'est'},
        Number.p: {Person.first: 'sommes', Person.second: 'êtes', Person.third: 'sont'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'étais', Person.second: 'étais', Person.third: 'était'},
        Number.p: {Person.first: 'étions', Person.second: 'étiez', Person.third: 'étaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'serai', Person.second: 'seras', Person.third: 'sera'},
        Number.p: {Person.first: 'serons', Person.second: 'serez', Person.third: 'seront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fus', Person.second: 'fus', Person.third: 'fut'},
        Number.p: {Person.first: 'fûmes', Person.second: 'fûtes', Person.third: 'furent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'serais', Person.second: 'serais', Person.third: 'serait'},
        Number.p: {Person.first: 'serions', Person.second: 'seriez', Person.third: 'seraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sois', Person.second: 'sois', Person.third: 'soit'},
        Number.p: {Person.first: 'soyons', Person.second: 'soyez', Person.third: 'soient'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fusse', Person.second: 'fusses', Person.third: 'fût'},
        Number.p: {Person.first: 'fussions	', Person.second: 'fussiez', Person.third: 'fussent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sois'},
        Number.p: {Person.first: 'soyons', Person.second: 'soyez'},
      },
    },
  },
);

FrenchVerb avoir = FrenchVerb(
  infinitive: 'avoir',
  auxiliaryVerb: avoir2,
  participles: {
    //this would be weird to decline but whatever
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'ayant', Gender.f: 'ayant'},
        Number.p: {Gender.m: 'ayants', Gender.f: 'ayants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'eu', Gender.f: 'eue'},
        Number.p: {Gender.m: 'eus', Gender.f: 'eues'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'ai', Person.second: 'as', Person.third: 'a'},
        Number.p: {Person.first: 'avons', Person.second: 'avez', Person.third: 'ont'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'avais', Person.second: 'avais', Person.third: 'avait'},
        Number.p: {Person.first: 'avions', Person.second: 'aviez', Person.third: 'avaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'aurai', Person.second: 'auras', Person.third: 'aura'},
        Number.p: {Person.first: 'aurons', Person.second: 'aurez', Person.third: 'auront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'eus', Person.second: 'eus', Person.third: 'eut'},
        Number.p: {Person.first: 'eûmes', Person.second: 'eûtes', Person.third: 'eurent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aurais', Person.second: 'aurais', Person.third: 'aurait'},
        Number.p: {Person.first: 'aurions', Person.second: 'auriez', Person.third: 'auraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aie', Person.second: 'aies', Person.third: 'ait'},
        Number.p: {Person.first: 'ayons', Person.second: 'ayez', Person.third: 'aient'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'eusse', Person.second: 'eusses', Person.third: 'eût'},
        Number.p: {Person.first: 'eussions	', Person.second: 'eussiez', Person.third: 'eussent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'aie'},
        Number.p: {Person.first: 'ayons', Person.second: 'ayez'},
      },
    },
  },
);

FrenchAuxiliaryVerb avoir2 = FrenchAuxiliaryVerb(
  infinitive: 'avoir',
  participles: {
    //this would be weird to decline but whatever
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'ayant', Gender.f: 'ayant'},
        Number.p: {Gender.m: 'ayants', Gender.f: 'ayants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'eu', Gender.f: 'eue'},
        Number.p: {Gender.m: 'eus', Gender.f: 'eues'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'ai', Person.second: 'as', Person.third: 'a'},
        Number.p: {Person.first: 'avons', Person.second: 'avez', Person.third: 'ont'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'avais', Person.second: 'avais', Person.third: 'avait'},
        Number.p: {Person.first: 'avions', Person.second: 'aviez', Person.third: 'avaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'aurai', Person.second: 'auras', Person.third: 'aura'},
        Number.p: {Person.first: 'aurons', Person.second: 'aurez', Person.third: 'auront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'eus', Person.second: 'eus', Person.third: 'eut'},
        Number.p: {Person.first: 'eûmes', Person.second: 'eûtes', Person.third: 'eurent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aurais', Person.second: 'aurais', Person.third: 'aurait'},
        Number.p: {Person.first: 'aurions', Person.second: 'auriez', Person.third: 'auraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aie', Person.second: 'aies', Person.third: 'ait'},
        Number.p: {Person.first: 'ayons', Person.second: 'ayez', Person.third: 'aient'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'eusse', Person.second: 'eusses', Person.third: 'eût'},
        Number.p: {Person.first: 'eussions	', Person.second: 'eussiez', Person.third: 'eussent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'aie'},
        Number.p: {Person.first: 'ayons', Person.second: 'ayez'},
      },
    },
  },
);
FrenchVerb aimer = FrenchVerb(
  infinitive: 'aimer',
  auxiliaryVerb: avoir2, // Assuming 'avoir' is previously defined as it's generally used as the auxiliary for 'aimer'
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'aimant', Gender.f: 'aimant'},
        Number.p: {Gender.m: 'aimants', Gender.f: 'aimants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'aimé', Gender.f: 'aimée'},
        Number.p: {Gender.m: 'aimés', Gender.f: 'aimées'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aime', Person.second: 'aimes', Person.third: 'aime'},
        Number.p: {Person.first: 'aimons', Person.second: 'aimez', Person.third: 'aiment'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'aimais', Person.second: 'aimais', Person.third: 'aimait'},
        Number.p: {Person.first: 'aimions', Person.second: 'aimiez', Person.third: 'aimaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'aimerai', Person.second: 'aimeras', Person.third: 'aimera'},
        Number.p: {Person.first: 'aimerons', Person.second: 'aimerez', Person.third: 'aimeront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'aimai', Person.second: 'aimas', Person.third: 'aima'},
        Number.p: {Person.first: 'aimâmes', Person.second: 'aimâtes', Person.third: 'aimèrent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aimerais', Person.second: 'aimerais', Person.third: 'aimerait'},
        Number.p: {Person.first: 'aimerions', Person.second: 'aimeriez', Person.third: 'aimeraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aime', Person.second: 'aimes', Person.third: 'aime'},
        Number.p: {Person.first: 'aimions', Person.second: 'aimiez', Person.third: 'aiment'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'aimasse', Person.second: 'aimasses', Person.third: 'aimât'},
        Number.p: {Person.first: 'aimassions', Person.second: 'aimassiez', Person.third: 'aimassent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'aime'},
        Number.p: {Person.first: 'aimons', Person.second: 'aimez'},
      },
    },
  },
);
FrenchVerb voir = FrenchVerb(
  infinitive: 'voir',
  auxiliaryVerb: avoir2, // 'avoir' is the auxiliary verb for 'voir'
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'voyant', Gender.f: 'voyant'},
        Number.p: {Gender.m: 'voyants', Gender.f: 'voyants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'vu', Gender.f: 'vue'},
        Number.p: {Gender.m: 'vus', Gender.f: 'vues'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vois', Person.second: 'vois', Person.third: 'voit'},
        Number.p: {Person.first: 'voyons', Person.second: 'voyez', Person.third: 'voient'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'voyais', Person.second: 'voyais', Person.third: 'voyait'},
        Number.p: {Person.first: 'voyions', Person.second: 'voyiez', Person.third: 'voyaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'verrai', Person.second: 'verras', Person.third: 'verra'},
        Number.p: {Person.first: 'verrons', Person.second: 'verrez', Person.third: 'verront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'vis', Person.second: 'vis', Person.third: 'vit'},
        Number.p: {Person.first: 'vîmes', Person.second: 'vîtes', Person.third: 'virent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'verrais', Person.second: 'verrais', Person.third: 'verrait'},
        Number.p: {Person.first: 'verrions', Person.second: 'verriez', Person.third: 'verraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'voie', Person.second: 'voies', Person.third: 'voie'},
        Number.p: {Person.first: 'voyions', Person.second: 'voyiez', Person.third: 'voient'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'visse', Person.second: 'visses', Person.third: 'vît'},
        Number.p: {Person.first: 'vissions', Person.second: 'vissiez', Person.third: 'vissent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'vois'},
        Number.p: {Person.first: 'voyons', Person.second: 'voyez'},
      },
    },
  },
);
FrenchVerb devoir = FrenchVerb(
  infinitive: 'devoir',
  auxiliaryVerb: avoir2, // 'avoir' is the auxiliary verb for 'devoir'
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'devant', Gender.f: 'devant'},
        Number.p: {Gender.m: 'devants', Gender.f: 'devants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'dû', Gender.f: 'due'},
        Number.p: {Gender.m: 'dus', Gender.f: 'dues'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'dois', Person.second: 'dois', Person.third: 'doit'},
        Number.p: {Person.first: 'devons', Person.second: 'devez', Person.third: 'doivent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'devais', Person.second: 'devais', Person.third: 'devait'},
        Number.p: {Person.first: 'devions', Person.second: 'deviez', Person.third: 'devaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'devrai', Person.second: 'devras', Person.third: 'devra'},
        Number.p: {Person.first: 'devrons', Person.second: 'devrez', Person.third: 'devront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'dus', Person.second: 'dus', Person.third: 'dut'},
        Number.p: {Person.first: 'dûmes', Person.second: 'dûtes', Person.third: 'durent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'devrais', Person.second: 'devrais', Person.third: 'devrait'},
        Number.p: {Person.first: 'devrions', Person.second: 'devriez', Person.third: 'devraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'doive', Person.second: 'doives', Person.third: 'doive'},
        Number.p: {Person.first: 'devions', Person.second: 'deviez', Person.third: 'doivent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'dusse', Person.second: 'dusses', Person.third: 'dût'},
        Number.p: {Person.first: 'dussions', Person.second: 'dussiez', Person.third: 'dussent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'dois'},
        Number.p: {Person.first: 'devons', Person.second: 'devez'},
      },
    },
  },
);

FrenchVerb aller = FrenchVerb(
  infinitive: 'aller',
  auxiliaryVerb: etre2, // Aller is one of the few verbs that uses 'être' as its auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'allant', Gender.f: 'allant'},
        Number.p: {Gender.m: 'allants', Gender.f: 'allants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'allé', Gender.f: 'allée'},
        Number.p: {Gender.m: 'allés', Gender.f: 'allées'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vais', Person.second: 'vas', Person.third: 'va'},
        Number.p: {Person.first: 'allons', Person.second: 'allez', Person.third: 'vont'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'allais', Person.second: 'allais', Person.third: 'allait'},
        Number.p: {Person.first: 'allions', Person.second: 'alliez', Person.third: 'allaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'irai', Person.second: 'iras', Person.third: 'ira'},
        Number.p: {Person.first: 'irons', Person.second: 'irez', Person.third: 'iront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'allai', Person.second: 'allas', Person.third: 'alla'},
        Number.p: {Person.first: 'allâmes', Person.second: 'allâtes', Person.third: 'allèrent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'irais', Person.second: 'irais', Person.third: 'irait'},
        Number.p: {Person.first: 'irions', Person.second: 'iriez', Person.third: 'iraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'aille', Person.second: 'ailles', Person.third: 'aille'},
        Number.p: {Person.first: 'allions', Person.second: 'alliez', Person.third: 'aillent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'allasse', Person.second: 'allasses', Person.third: 'allât'},
        Number.p: {Person.first: 'allassions', Person.second: 'allassiez', Person.third: 'allassent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'va'},
        Number.p: {Person.first: 'allons', Person.second: 'allez'},
      },
    },
  },
);

FrenchVerb pouvoir = FrenchVerb(
  infinitive: 'pouvoir',
  auxiliaryVerb: avoir2, // Most verbs, including pouvoir, use avoir as their auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'pouvant', Gender.f: 'pouvant'},
        Number.p: {Gender.m: 'pouvants', Gender.f: 'pouvants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'pu', Gender.f: 'pu'},
        Number.p: {Gender.m: 'pus', Gender.f: 'pus'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'peux', Person.second: 'peux', Person.third: 'peut'},
        Number.p: {Person.first: 'pouvons', Person.second: 'pouvez', Person.third: 'peuvent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'pouvais', Person.second: 'pouvais', Person.third: 'pouvait'},
        Number.p: {Person.first: 'pouvions', Person.second: 'pouviez', Person.third: 'pouvaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'pourrai', Person.second: 'pourras', Person.third: 'pourra'},
        Number.p: {Person.first: 'pourrons', Person.second: 'pourrez', Person.third: 'pourront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'pus', Person.second: 'pus', Person.third: 'put'},
        Number.p: {Person.first: 'pûmes', Person.second: 'pûtes', Person.third: 'purent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'pourrais', Person.second: 'pourrais', Person.third: 'pourrait'},
        Number.p: {Person.first: 'pourrions', Person.second: 'pourriez', Person.third: 'pourraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'puisse', Person.second: 'puisses', Person.third: 'puisse'},
        Number.p: {Person.first: 'puissions', Person.second: 'puissiez', Person.third: 'puissent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'pusse', Person.second: 'pusses', Person.third: 'pût'},
        Number.p: {Person.first: 'pussions', Person.second: 'pussiez', Person.third: 'pussent'},
      },
    },
    // No imperative form for 'pouvoir'
  },
);

FrenchVerb vouloir = FrenchVerb(
  infinitive: 'vouloir',
  auxiliaryVerb: avoir2, // Vouloir uses avoir as its auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'voulant', Gender.f: 'voulant'},
        Number.p: {Gender.m: 'voulants', Gender.f: 'voulants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'voulu', Gender.f: 'voulu'},
        Number.p: {Gender.m: 'voulus', Gender.f: 'voulus'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'veux', Person.second: 'veux', Person.third: 'veut'},
        Number.p: {Person.first: 'voulons', Person.second: 'voulez', Person.third: 'veulent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'voulais', Person.second: 'voulais', Person.third: 'voulait'},
        Number.p: {Person.first: 'voulions', Person.second: 'vouliez', Person.third: 'voulaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'voudrai', Person.second: 'voudras', Person.third: 'voudra'},
        Number.p: {Person.first: 'voudrons', Person.second: 'voudrez', Person.third: 'voudront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'voulus', Person.second: 'voulus', Person.third: 'voulut'},
        Number.p: {Person.first: 'voulûmes', Person.second: 'voulûtes', Person.third: 'voulurent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'voudrais', Person.second: 'voudrais', Person.third: 'voudrait'},
        Number.p: {Person.first: 'voudrions', Person.second: 'voudriez', Person.third: 'voudraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'veuille', Person.second: 'veuilles', Person.third: 'veuille'},
        Number.p: {Person.first: 'voulions', Person.second: 'vouliez', Person.third: 'veuillent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'voulusse', Person.second: 'voulusses', Person.third: 'voulût'},
        Number.p: {Person.first: 'voulussions', Person.second: 'voulussiez', Person.third: 'voulussent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'veux'},
        Number.p: {Person.first: 'voulons', Person.second: 'voulez'},
      },
    },
  },
);

FrenchVerb faire = FrenchVerb(
  infinitive: 'faire',
  auxiliaryVerb: avoir2, // Faire uses avoir as its auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'faisant', Gender.f: 'faisant'},
        Number.p: {Gender.m: 'faisants', Gender.f: 'faisants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'fait', Gender.f: 'faite'},
        Number.p: {Gender.m: 'faits', Gender.f: 'faites'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'fais', Person.second: 'fais', Person.third: 'fait'},
        Number.p: {Person.first: 'faisons', Person.second: 'faites', Person.third: 'font'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'faisais', Person.second: 'faisais', Person.third: 'faisait'},
        Number.p: {Person.first: 'faisions', Person.second: 'faisiez', Person.third: 'faisaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'ferai', Person.second: 'feras', Person.third: 'fera'},
        Number.p: {Person.first: 'ferons', Person.second: 'ferez', Person.third: 'feront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fis', Person.second: 'fis', Person.third: 'fit'},
        Number.p: {Person.first: 'fîmes', Person.second: 'fîtes', Person.third: 'firent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'ferais', Person.second: 'ferais', Person.third: 'ferait'},
        Number.p: {Person.first: 'ferions', Person.second: 'feriez', Person.third: 'feraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'fasse', Person.second: 'fasses', Person.third: 'fasse'},
        Number.p: {Person.first: 'fassions', Person.second: 'fassiez', Person.third: 'fassent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fisse', Person.second: 'fisses', Person.third: 'fît'},
        Number.p: {Person.first: 'fissions', Person.second: 'fissiez', Person.third: 'fissent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'fais'},
        Number.p: {Person.first: 'faisons', Person.second: 'faites'},
      },
    },
  },
);

FrenchVerb parler = FrenchVerb(
  infinitive: 'parler',
  auxiliaryVerb: avoir2, // Parler uses avoir as its auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'parlant', Gender.f: 'parlant'},
        Number.p: {Gender.m: 'parlants', Gender.f: 'parlants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'parlé', Gender.f: 'parlée'},
        Number.p: {Gender.m: 'parlés', Gender.f: 'parlées'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'parle', Person.second: 'parles', Person.third: 'parle'},
        Number.p: {Person.first: 'parlons', Person.second: 'parlez', Person.third: 'parlent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'parlais', Person.second: 'parlais', Person.third: 'parlait'},
        Number.p: {Person.first: 'parlions', Person.second: 'parliez', Person.third: 'parlaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'parlerai', Person.second: 'parleras', Person.third: 'parlera'},
        Number.p: {Person.first: 'parlerons', Person.second: 'parlerez', Person.third: 'parleront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'parlai', Person.second: 'parlas', Person.third: 'parla'},
        Number.p: {Person.first: 'parlâmes', Person.second: 'parlâtes', Person.third: 'parlèrent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'parlerais', Person.second: 'parlerais', Person.third: 'parlerait'},
        Number.p: {Person.first: 'parlerions', Person.second: 'parleriez', Person.third: 'parleraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'parle', Person.second: 'parles', Person.third: 'parle'},
        Number.p: {Person.first: 'parlions', Person.second: 'parliez', Person.third: 'parlent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'parlasse', Person.second: 'parlasses', Person.third: 'parlât'},
        Number.p: {Person.first: 'parlassions', Person.second: 'parlassiez', Person.third: 'parlassent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'parle'},
        Number.p: {Person.first: 'parlons', Person.second: 'parlez'},
      },
    },
  },
);

FrenchVerb demander = FrenchVerb(
  infinitive: 'demander',
  auxiliaryVerb: avoir2, // Demander uses avoir as its auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'demandant', Gender.f: 'demandant'},
        Number.p: {Gender.m: 'demandants', Gender.f: 'demandants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'demandé', Gender.f: 'demandée'},
        Number.p: {Gender.m: 'demandés', Gender.f: 'demandées'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'demande', Person.second: 'demandes', Person.third: 'demande'},
        Number.p: {Person.first: 'demandons', Person.second: 'demandez', Person.third: 'demandent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'demandais', Person.second: 'demandais', Person.third: 'demandait'},
        Number.p: {Person.first: 'demandions', Person.second: 'demandiez', Person.third: 'demandaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'demanderai', Person.second: 'demanderas', Person.third: 'demandera'},
        Number.p: {Person.first: 'demanderons', Person.second: 'demanderez', Person.third: 'demanderont'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'demandai', Person.second: 'demandas', Person.third: 'demanda'},
        Number.p: {Person.first: 'demandâmes', Person.second: 'demandâtes', Person.third: 'demandèrent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'demanderais', Person.second: 'demanderais', Person.third: 'demanderait'},
        Number.p: {Person.first: 'demanderions', Person.second: 'demanderiez', Person.third: 'demanderaient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'demande', Person.second: 'demandes', Person.third: 'demande'},
        Number.p: {Person.first: 'demandions', Person.second: 'demandiez', Person.third: 'demandent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'demandasse', Person.second: 'demandasses', Person.third: 'demandât'},
        Number.p: {Person.first: 'demandassions', Person.second: 'demandassiez', Person.third: 'demandassent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'demande'},
        Number.p: {Person.first: 'demandons', Person.second: 'demandez'},
      },
    },
  },
);

FrenchVerb savoir = FrenchVerb(
  infinitive: 'savoir',
  auxiliaryVerb: avoir2, // Savoir uses avoir as its auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'sachant', Gender.f: 'sachant'},
        Number.p: {Gender.m: 'sachants', Gender.f: 'sachants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'su', Gender.f: 'su'},
        Number.p: {Gender.m: 'sus', Gender.f: 'sus'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sais', Person.second: 'sais', Person.third: 'sait'},
        Number.p: {Person.first: 'savons', Person.second: 'savez', Person.third: 'savent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'savais', Person.second: 'savais', Person.third: 'savait'},
        Number.p: {Person.first: 'savions', Person.second: 'saviez', Person.third: 'savaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'saurai', Person.second: 'sauras', Person.third: 'saura'},
        Number.p: {Person.first: 'saurons', Person.second: 'saurez', Person.third: 'sauront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'sus', Person.second: 'sus', Person.third: 'sut'},
        Number.p: {Person.first: 'sûmes', Person.second: 'sûtes', Person.third: 'surent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'saurais', Person.second: 'saurais', Person.third: 'saurait'},
        Number.p: {Person.first: 'saurions', Person.second: 'sauriez', Person.third: 'sauraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sache', Person.second: 'saches', Person.third: 'sache'},
        Number.p: {Person.first: 'sachions', Person.second: 'sachiez', Person.third: 'sachent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'susse', Person.second: 'susses', Person.third: 'sût'},
        Number.p: {Person.first: 'sussions', Person.second: 'sussiez', Person.third: 'sussent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sache'},
        Number.p: {Person.first: 'sachons', Person.second: 'sachez'},
      },
    },
  },
);

FrenchVerb venir = FrenchVerb(
  infinitive: 'venir',
  auxiliaryVerb: etre2, // Venir uses être as its auxiliary in compound tenses
  participles: {
    Tense.presentRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'venant', Gender.f: 'venant'},
        Number.p: {Gender.m: 'venants', Gender.f: 'venants'}
      },
    ),
    Tense.perfectRomance: const FrenchAdjective(
      declension: {
        Number.s: {Gender.m: 'venu', Gender.f: 'venue'},
        Number.p: {Gender.m: 'venus', Gender.f: 'venues'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'viens', Person.second: 'viens', Person.third: 'vient'},
        Number.p: {Person.first: 'venons', Person.second: 'venez', Person.third: 'viennent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'venais', Person.second: 'venais', Person.third: 'venait'},
        Number.p: {Person.first: 'venions', Person.second: 'veniez', Person.third: 'venaient'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'viendrai', Person.second: 'viendras', Person.third: 'viendra'},
        Number.p: {Person.first: 'viendrons', Person.second: 'viendrez', Person.third: 'viendront'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'vins', Person.second: 'vins', Person.third: 'vint'},
        Number.p: {Person.first: 'vînmes', Person.second: 'vîntes', Person.third: 'vinrent'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'viendrais', Person.second: 'viendrais', Person.third: 'viendrait'},
        Number.p: {Person.first: 'viendrions', Person.second: 'viendriez', Person.third: 'viendraient'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vienne', Person.second: 'viennes', Person.third: 'vienne'},
        Number.p: {Person.first: 'venions', Person.second: 'veniez', Person.third: 'viennent'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'vinsse', Person.second: 'vinsses', Person.third: 'vînt'},
        Number.p: {Person.first: 'vinssions', Person.second: 'vinssiez', Person.third: 'vinssent'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'viens'},
        Number.p: {Person.first: 'venons', Person.second: 'venez'},
      },
    },
  },
);
