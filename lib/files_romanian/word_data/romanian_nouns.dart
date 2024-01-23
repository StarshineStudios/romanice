import 'package:colorguesser/core/enums.dart';

import '../romanian_classes.dart';

List<RomanianNoun> romanianNouns = [
  barbat,
  femeie,
  baiat,
  fata,
  pisica,
  caine,
  carte,
  copac,
  stea,
  cladire,
];

RomanianNoun barbat = const RomanianNoun(
  gender: Gender.m,
  declension: {
    Case.nomacc: {Number.s: 'bărbat', Number.p: 'bărbați'},
    Case.gendat: {Number.s: 'bărbatului', Number.p: 'bărbaților'},
    Case.voc: {Number.s: 'bărbate', Number.p: 'bărbaților'},
  },
);

RomanianNoun femeie = const RomanianNoun(
  gender: Gender.f,
  declension: {
    Case.nomacc: {Number.s: 'femeie', Number.p: 'femei'},
    Case.gendat: {Number.s: 'femeii', Number.p: 'femeilor'},
    Case.voc: {Number.s: 'femeie', Number.p: 'femeilor'},
  },
);

RomanianNoun baiat = const RomanianNoun(
  gender: Gender.m,
  declension: {
    Case.nomacc: {Number.s: 'băiat', Number.p: 'băieți'},
    Case.gendat: {Number.s: 'băiatului', Number.p: 'băieților'},
    Case.voc: {Number.s: 'băiete', Number.p: 'băieților'},
  },
);

RomanianNoun fata = const RomanianNoun(
  gender: Gender.f,
  declension: {
    Case.nomacc: {Number.s: 'fată', Number.p: 'fete'},
    Case.gendat: {Number.s: 'fetei', Number.p: 'fetelor'},
    Case.voc: {Number.s: 'fato', Number.p: 'fetelor'},
  },
);

RomanianNoun pisica = const RomanianNoun(
  gender: Gender.f,
  declension: {
    Case.nomacc: {Number.s: 'pisică', Number.p: 'pisici'},
    Case.gendat: {Number.s: 'pisicii', Number.p: 'pisicilor'},
    Case.voc: {Number.s: 'pisico', Number.p: 'pisicilor'},
  },
);

RomanianNoun caine = const RomanianNoun(
  gender: Gender.m,
  declension: {
    Case.nomacc: {Number.s: 'câine', Number.p: 'câini'},
    Case.gendat: {Number.s: 'câinelui', Number.p: 'câinilor'},
    Case.voc: {Number.s: 'câine', Number.p: 'câinilor'},
  },
);

RomanianNoun carte = const RomanianNoun(
  gender: Gender.f,
  declension: {
    Case.nomacc: {Number.s: 'carte', Number.p: 'cărți'},
    Case.gendat: {Number.s: 'cărții', Number.p: 'cărților'},
    Case.voc: {Number.s: 'carte', Number.p: 'cărților'},
  },
);

RomanianNoun copac = const RomanianNoun(
  gender: Gender.m,
  declension: {
    Case.nomacc: {Number.s: 'copac', Number.p: 'copaci'},
    Case.gendat: {Number.s: 'copacului', Number.p: 'copacilor'},
    Case.voc: {Number.s: 'copac', Number.p: 'copacilor'},
  },
);

RomanianNoun stea = const RomanianNoun(
  gender: Gender.f,
  declension: {
    Case.nomacc: {Number.s: 'stea', Number.p: 'stele'},
    Case.gendat: {Number.s: 'stelei', Number.p: 'stelelor'},
    Case.voc: {Number.s: 'steo', Number.p: 'stelelor'},
  },
);

RomanianNoun cladire = const RomanianNoun(
  gender: Gender.f,
  declension: {
    Case.nomacc: {Number.s: 'clădire', Number.p: 'clădiri'},
    Case.gendat: {Number.s: 'clădirii', Number.p: 'clădirilor'},
    Case.voc: {Number.s: 'clădire', Number.p: 'clădirilor'},
  },
);
