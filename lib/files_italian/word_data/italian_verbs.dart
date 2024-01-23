import 'package:colorguesser/core/enums.dart';

import '../italian_classes.dart';

List<ItalianVerb> italianVerbs = [
  essere,
  avere,
  amare,
  vedere,
  fare,
  volere,
  potere,
  dovere,
  andare,
  sapere,
];
ItalianVerb essere = ItalianVerb(
  infinitive: 'èssere',
  auxiliaryVerb: essere2,
  gerund: 'essèndo',
  participles: {
    //this would be weird to decline but whatever
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'stàto', Gender.f: 'stàta'},
        Number.p: {Gender.m: 'stàti', Gender.f: 'stàte'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sono', Person.second: 'sei', Person.third: 'è'},
        Number.p: {Person.first: 'siamo', Person.second: 'siete', Person.third: 'sono'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'ero', Person.second: 'eri', Person.third: 'era'},
        Number.p: {Person.first: 'eravamo', Person.second: 'eravate', Person.third: 'erano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'sarò', Person.second: 'sarai', Person.third: 'sarà'},
        Number.p: {Person.first: 'saremo', Person.second: 'sarete', Person.third: 'saranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fui', Person.second: 'fosti', Person.third: 'fu'},
        Number.p: {Person.first: 'fummo', Person.second: 'foste', Person.third: 'furono'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sarò', Person.second: 'sarai', Person.third: 'sarà'},
        Number.p: {Person.first: 'saremo', Person.second: 'sarete', Person.third: 'saranno'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sia', Person.second: 'sia', Person.third: 'sia'},
        Number.p: {Person.first: 'siamo', Person.second: 'siate', Person.third: 'siano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fossi', Person.second: 'fossi', Person.third: 'fosse'},
        Number.p: {Person.first: 'fossimo', Person.second: 'foste', Person.third: 'fossero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sii', Person.third: 'sia'},
        Number.p: {Person.first: 'siamo', Person.second: 'siate', Person.third: 'siano'},
      },
    },
  },
);

ItalianAuxiliaryVerb essere2 = ItalianAuxiliaryVerb(
  infinitive: 'èssere',
  gerund: 'essèndo',
  participles: {
    //this would be weird to decline but whatever
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'stàto', Gender.f: 'stàta'},
        Number.p: {Gender.m: 'stàti', Gender.f: 'stàte'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sono', Person.second: 'sei', Person.third: 'è'},
        Number.p: {Person.first: 'siamo', Person.second: 'siete', Person.third: 'sono'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'ero', Person.second: 'eri', Person.third: 'era'},
        Number.p: {Person.first: 'eravamo', Person.second: 'eravate', Person.third: 'erano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'sarò', Person.second: 'sarai', Person.third: 'sarà'},
        Number.p: {Person.first: 'saremo', Person.second: 'sarete', Person.third: 'saranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fui', Person.second: 'fosti', Person.third: 'fu'},
        Number.p: {Person.first: 'fummo', Person.second: 'foste', Person.third: 'furono'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sarò', Person.second: 'sarai', Person.third: 'sarà'},
        Number.p: {Person.first: 'saremo', Person.second: 'sarete', Person.third: 'saranno'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sia', Person.second: 'sia', Person.third: 'sia'},
        Number.p: {Person.first: 'siamo', Person.second: 'siate', Person.third: 'siano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fossi', Person.second: 'fossi', Person.third: 'fosse'},
        Number.p: {Person.first: 'fossimo', Person.second: 'foste', Person.third: 'fossero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sii', Person.third: 'sia'},
        Number.p: {Person.first: 'siamo', Person.second: 'siate', Person.third: 'siano'},
      },
    },
  },
);
ItalianVerb avere = ItalianVerb(
  infinitive: 'avere',
  auxiliaryVerb: avere2, // Assuming 'avere2' is defined similar to 'essere2' for auxiliary usage
  gerund: 'avendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'avuto', Gender.f: 'avuta'},
        Number.p: {Gender.m: 'avuti', Gender.f: 'avute'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'ho', Person.second: 'hai', Person.third: 'ha'},
        Number.p: {Person.first: 'abbiamo', Person.second: 'avete', Person.third: 'hanno'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'avevo', Person.second: 'avevi', Person.third: 'aveva'},
        Number.p: {Person.first: 'avevamo', Person.second: 'avevate', Person.third: 'avevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'avrò', Person.second: 'avrai', Person.third: 'avrà'},
        Number.p: {Person.first: 'avremo', Person.second: 'avrete', Person.third: 'avranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'ebbi', Person.second: 'avesti', Person.third: 'ebbe'},
        Number.p: {Person.first: 'avemmo', Person.second: 'aveste', Person.third: 'ebbero'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'avrei', Person.second: 'avresti', Person.third: 'avrebbe'},
        Number.p: {Person.first: 'avremmo', Person.second: 'avreste', Person.third: 'avrebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'abbia', Person.second: 'abbia', Person.third: 'abbia'},
        Number.p: {Person.first: 'abbiamo', Person.second: 'abbiate', Person.third: 'abbiano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'avessi', Person.second: 'avessi', Person.third: 'avesse'},
        Number.p: {Person.first: 'avessimo', Person.second: 'aveste', Person.third: 'avessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'abbi'},
        Number.p: {Person.first: 'abbiamo', Person.second: 'abbiate'},
      },
    },
  },
);

ItalianAuxiliaryVerb avere2 = ItalianAuxiliaryVerb(
  infinitive: 'avere',
  gerund: 'avendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'avuto', Gender.f: 'avuta'},
        Number.p: {Gender.m: 'avuti', Gender.f: 'avute'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'ho', Person.second: 'hai', Person.third: 'ha'},
        Number.p: {Person.first: 'abbiamo', Person.second: 'avete', Person.third: 'hanno'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'avevo', Person.second: 'avevi', Person.third: 'aveva'},
        Number.p: {Person.first: 'avevamo', Person.second: 'avevate', Person.third: 'avevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'avrò', Person.second: 'avrai', Person.third: 'avrà'},
        Number.p: {Person.first: 'avremo', Person.second: 'avrete', Person.third: 'avranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'ebbi', Person.second: 'avesti', Person.third: 'ebbe'},
        Number.p: {Person.first: 'avemmo', Person.second: 'aveste', Person.third: 'ebbero'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'avrei', Person.second: 'avresti', Person.third: 'avrebbe'},
        Number.p: {Person.first: 'avremmo', Person.second: 'avreste', Person.third: 'avrebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'abbia', Person.second: 'abbia', Person.third: 'abbia'},
        Number.p: {Person.first: 'abbiamo', Person.second: 'abbiate', Person.third: 'abbiano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'avessi', Person.second: 'avessi', Person.third: 'avesse'},
        Number.p: {Person.first: 'avessimo', Person.second: 'aveste', Person.third: 'avessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'abbi'},
        Number.p: {Person.first: 'abbiamo', Person.second: 'abbiate'},
      },
    },
  },
);
ItalianVerb amare = ItalianVerb(
  infinitive: 'amare',
  auxiliaryVerb: avere2, // Using 'avere2' as the auxiliary
  gerund: 'amando',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'amato', Gender.f: 'amata'},
        Number.p: {Gender.m: 'amati', Gender.f: 'amate'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'amo', Person.second: 'ami', Person.third: 'ama'},
        Number.p: {Person.first: 'amiamo', Person.second: 'amate', Person.third: 'amano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'amavo', Person.second: 'amavi', Person.third: 'amava'},
        Number.p: {Person.first: 'amavamo', Person.second: 'amavate', Person.third: 'amavano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'amerò', Person.second: 'amerai', Person.third: 'amerà'},
        Number.p: {Person.first: 'ameremo', Person.second: 'amerete', Person.third: 'ameranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'amai', Person.second: 'amasti', Person.third: 'amò'},
        Number.p: {Person.first: 'amammo', Person.second: 'amaste', Person.third: 'amarono'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'amerei', Person.second: 'ameresti', Person.third: 'amerebbe'},
        Number.p: {Person.first: 'ameremmo', Person.second: 'amereste', Person.third: 'amerebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'ami', Person.second: 'ami', Person.third: 'ami'},
        Number.p: {Person.first: 'amiamo', Person.second: 'amiato', Person.third: 'amino'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'amassi', Person.second: 'amassi', Person.third: 'amasse'},
        Number.p: {Person.first: 'amassimo', Person.second: 'amaste', Person.third: 'amassero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'ama'},
        Number.p: {Person.first: 'amiamo', Person.second: 'amate'},
      },
    },
  },
);
ItalianVerb vedere = ItalianVerb(
  infinitive: 'vedere',
  auxiliaryVerb: avere2, // Using 'avere2' as the auxiliary
  gerund: 'vedendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'visto', Gender.f: 'vista'},
        Number.p: {Gender.m: 'visti', Gender.f: 'viste'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vedo', Person.second: 'vedi', Person.third: 'vede'},
        Number.p: {Person.first: 'vediamo', Person.second: 'vedete', Person.third: 'vedono'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'vedevo', Person.second: 'vedevi', Person.third: 'vedeva'},
        Number.p: {Person.first: 'vedevamo', Person.second: 'vedevate', Person.third: 'vedevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'vedrò', Person.second: 'vedrai', Person.third: 'vedrà'},
        Number.p: {Person.first: 'vedremo', Person.second: 'vedrete', Person.third: 'vedranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'vidi', Person.second: 'vedesti', Person.third: 'vide'},
        Number.p: {Person.first: 'vedemmo', Person.second: 'vedeste', Person.third: 'viderono'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vedrei', Person.second: 'vedresti', Person.third: 'vedrebbe'},
        Number.p: {Person.first: 'vedremmo', Person.second: 'vedreste', Person.third: 'vedrebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'veda', Person.second: 'veda', Person.third: 'veda'},
        Number.p: {Person.first: 'vediamo', Person.second: 'vediate', Person.third: 'vedano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'vedessi', Person.second: 'vedessi', Person.third: 'vedesse'},
        Number.p: {Person.first: 'vedessimo', Person.second: 'vedeste', Person.third: 'vedessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'vedi'},
        Number.p: {Person.first: 'vediamo', Person.second: 'vediate'},
      },
    },
  },
);
ItalianVerb fare = ItalianVerb(
  infinitive: 'fare',
  auxiliaryVerb: avere2, // Using 'avere2' as the auxiliary
  gerund: 'facendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'fatto', Gender.f: 'fatta'},
        Number.p: {Gender.m: 'fatti', Gender.f: 'fatte'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'faccio', Person.second: 'fai', Person.third: 'fa'},
        Number.p: {Person.first: 'facciamo', Person.second: 'fate', Person.third: 'fanno'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'facevo', Person.second: 'facevi', Person.third: 'faceva'},
        Number.p: {Person.first: 'facevamo', Person.second: 'facevate', Person.third: 'facevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'farò', Person.second: 'farai', Person.third: 'farà'},
        Number.p: {Person.first: 'faremo', Person.second: 'farete', Person.third: 'faranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'feci', Person.second: 'facesti', Person.third: 'fece'},
        Number.p: {Person.first: 'facemmo', Person.second: 'faceste', Person.third: 'fecero'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'farei', Person.second: 'faresti', Person.third: 'farebbe'},
        Number.p: {Person.first: 'faremmo', Person.second: 'fareste', Person.third: 'farebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'faccia', Person.second: 'faccia', Person.third: 'faccia'},
        Number.p: {Person.first: 'facciamo', Person.second: 'facciate', Person.third: 'facciano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'facessi', Person.second: 'facessi', Person.third: 'facesse'},
        Number.p: {Person.first: 'facessimo', Person.second: 'faceste', Person.third: 'facessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'fai'},
        Number.p: {Person.first: 'facciamo', Person.second: 'fate'},
      },
    },
  },
);
ItalianVerb volere = ItalianVerb(
  infinitive: 'volere',
  auxiliaryVerb: avere2, // Using 'avere2' as the auxiliary
  gerund: 'volendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'voluto', Gender.f: 'voluta'},
        Number.p: {Gender.m: 'voluti', Gender.f: 'volute'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'voglio', Person.second: 'vuoi', Person.third: 'vuole'},
        Number.p: {Person.first: 'vogliamo', Person.second: 'volete', Person.third: 'vogliono'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'volevo', Person.second: 'volevi', Person.third: 'voleva'},
        Number.p: {Person.first: 'volevamo', Person.second: 'volevate', Person.third: 'volevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'vorro', Person.second: 'vorrai', Person.third: 'vorra'},
        Number.p: {Person.first: 'vorremo', Person.second: 'vorrete', Person.third: 'vorranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'volli', Person.second: 'volsti', Person.third: 'volle'},
        Number.p: {Person.first: 'vollimmo', Person.second: 'volleste', Person.third: 'vollero'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vorrei', Person.second: 'vorresti', Person.third: 'vorrebbe'},
        Number.p: {Person.first: 'vorremmo', Person.second: 'vorreste', Person.third: 'vorrebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'voglia', Person.second: 'voglia', Person.third: 'voglia'},
        Number.p: {Person.first: 'vogliamo', Person.second: 'vogliate', Person.third: 'vogliano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'volessi', Person.second: 'volessi', Person.third: 'volesse'},
        Number.p: {Person.first: 'volessimo', Person.second: 'voleste', Person.third: 'volessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'vuoi'},
        Number.p: {Person.first: 'vogliamo', Person.second: 'volete'},
      },
    },
  },
);
ItalianVerb potere = ItalianVerb(
  infinitive: 'potere',
  auxiliaryVerb: avere2, // Using 'avere2' as the auxiliary
  gerund: 'potendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'potuto', Gender.f: 'potuta'},
        Number.p: {Gender.m: 'potuti', Gender.f: 'potute'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'posso', Person.second: 'puoi', Person.third: 'può'},
        Number.p: {Person.first: 'possiamo', Person.second: 'potete', Person.third: 'possono'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'potevo', Person.second: 'potevi', Person.third: 'poteva'},
        Number.p: {Person.first: 'potevamo', Person.second: 'potevate', Person.third: 'potevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'potrò', Person.second: 'potrai', Person.third: 'potrà'},
        Number.p: {Person.first: 'potremo', Person.second: 'potrete', Person.third: 'potranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'potei', Person.second: 'potesti', Person.third: 'poté'},
        Number.p: {Person.first: 'potemmo', Person.second: 'poteste', Person.third: 'poterono'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'potrei', Person.second: 'potresti', Person.third: 'potrebbe'},
        Number.p: {Person.first: 'potremmo', Person.second: 'potreste', Person.third: 'potrebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'possa', Person.second: 'possa', Person.third: 'possa'},
        Number.p: {Person.first: 'possiamo', Person.second: 'possiate', Person.third: 'possano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'potessi', Person.second: 'potessi', Person.third: 'potesse'},
        Number.p: {Person.first: 'potessimo', Person.second: 'poteste', Person.third: 'potessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'puoi'},
        Number.p: {Person.first: 'possiamo', Person.second: 'potete'},
      },
    },
  },
);
ItalianVerb dovere = ItalianVerb(
  infinitive: 'dovere',
  auxiliaryVerb: avere2, // Using 'avere2' as the auxiliary
  gerund: 'dovendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'dovuto', Gender.f: 'dovuta'},
        Number.p: {Gender.m: 'dovuti', Gender.f: 'dovute'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'devo', Person.second: 'devi', Person.third: 'deve'},
        Number.p: {Person.first: 'dobbiamo', Person.second: 'dovete', Person.third: 'devono'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'dovevo', Person.second: 'dovevi', Person.third: 'doveva'},
        Number.p: {Person.first: 'dovevamo', Person.second: 'dovevate', Person.third: 'dovevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'dovrò', Person.second: 'dovrai', Person.third: 'dovrà'},
        Number.p: {Person.first: 'dovremo', Person.second: 'dovrete', Person.third: 'dovranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'dovetti', Person.second: 'dovesti', Person.third: 'dovette'},
        Number.p: {Person.first: 'dovemmo', Person.second: 'doveste', Person.third: 'dovettero'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'dovrei', Person.second: 'dovresti', Person.third: 'dovrebbe'},
        Number.p: {Person.first: 'dovremmo', Person.second: 'dovreste', Person.third: 'dovrebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'debba', Person.second: 'debba', Person.third: 'debba'},
        Number.p: {Person.first: 'dobbiamo', Person.second: 'dobbiate', Person.third: 'debbano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'dovessi', Person.second: 'dovessi', Person.third: 'dovesse'},
        Number.p: {Person.first: 'dovessimo', Person.second: 'doveste', Person.third: 'dovessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'devi'},
        Number.p: {Person.first: 'dobbiamo', Person.second: 'dovete'},
      },
    },
  },
);
ItalianVerb andare = ItalianVerb(
  infinitive: 'andare',
  auxiliaryVerb: essere2, // Using 'essere2' as the auxiliary
  gerund: 'andando',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'andato', Gender.f: 'andata'},
        Number.p: {Gender.m: 'andati', Gender.f: 'andate'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vado', Person.second: 'vai', Person.third: 'va'},
        Number.p: {Person.first: 'andiamo', Person.second: 'andate', Person.third: 'vanno'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'andavo', Person.second: 'andavi', Person.third: 'andava'},
        Number.p: {Person.first: 'andavamo', Person.second: 'andavate', Person.third: 'andavano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'andrò', Person.second: 'andrai', Person.third: 'andrà'},
        Number.p: {Person.first: 'andremo', Person.second: 'andrete', Person.third: 'andranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'andai', Person.second: 'andasti', Person.third: 'andò'},
        Number.p: {Person.first: 'andammo', Person.second: 'andaste', Person.third: 'andarono'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'andrei', Person.second: 'andresti', Person.third: 'andrebbe'},
        Number.p: {Person.first: 'andremmo', Person.second: 'andreste', Person.third: 'andrebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vada', Person.second: 'vada', Person.third: 'vada'},
        Number.p: {Person.first: 'andiamo', Person.second: 'andiate', Person.third: 'vadano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'andassi', Person.second: 'andassi', Person.third: 'andasse'},
        Number.p: {Person.first: 'andassimo', Person.second: 'andaste', Person.third: 'andassero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'vai'},
        Number.p: {Person.first: 'andiamo', Person.second: 'andate'},
      },
    },
  },
);
ItalianVerb sapere = ItalianVerb(
  infinitive: 'sapere',
  auxiliaryVerb: avere2, // Using 'avere2' as the auxiliary
  gerund: 'sapendo',
  participles: {
    Tense.perfectRomance: const ItalianAdjective(
      declension: {
        Number.s: {Gender.m: 'saputo', Gender.f: 'saputa'},
        Number.p: {Gender.m: 'saputi', Gender.f: 'sapute'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'so', Person.second: 'sai', Person.third: 'sa'},
        Number.p: {Person.first: 'sappiamo', Person.second: 'sapete', Person.third: 'sanno'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'sapevo', Person.second: 'sapevi', Person.third: 'sapeva'},
        Number.p: {Person.first: 'sapevamo', Person.second: 'sapevate', Person.third: 'sapevano'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'saprò', Person.second: 'saprai', Person.third: 'saprà'},
        Number.p: {Person.first: 'sapremo', Person.second: 'saprete', Person.third: 'sapranno'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'seppi', Person.second: 'seppisti', Person.third: 'seppé'},
        Number.p: {Person.first: 'seppimo', Person.second: 'seppiste', Person.third: 'seppero'},
      },
    },
    Mood.con: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'saprei', Person.second: 'saresti', Person.third: 'sarebbe'},
        Number.p: {Person.first: 'sapremmo', Person.second: 'sareste', Person.third: 'sarebbero'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sappia', Person.second: 'sappia', Person.third: 'sappia'},
        Number.p: {Person.first: 'sappiamo', Person.second: 'sappiate', Person.third: 'sappiano'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'sapessi', Person.second: 'sapessi', Person.third: 'sapesse'},
        Number.p: {Person.first: 'sapessimo', Person.second: 'sapeste', Person.third: 'sapessero'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sai'},
        Number.p: {Person.first: 'sappiamo', Person.second: 'sapete'},
      },
    },
  },
);
