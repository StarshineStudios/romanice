import 'package:colorguesser/core/enums.dart';

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
