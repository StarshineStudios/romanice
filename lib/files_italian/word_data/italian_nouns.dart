import 'package:colorguesser/core/enums.dart';

import '../italian_classes.dart';

List<ItalianNoun> italianNouns = [
  // stella,
  // uomo,
  // braccio,
  // casa,
  // macchina,
  // cane,
  // gatto,
  // mela,
  // libro,
  // sedia,
  // tavolo,
  // borsa,
  // albero,
  // donna,
  // persona,
  // ragazza,
  // ragazzo,
  // fiore,
  uomo,
  donna,
  ragazzo,
  ragazza,
  gatto,
  cane,
  libro,
  albero,
  stella,
  edificio,
  braccio,
];

ItalianNoun uomo = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'uomo',
    Number.p: 'uomini',
  },
);

ItalianNoun donna = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'donna',
    Number.p: 'donne',
  },
);

ItalianNoun ragazzo = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'ragazzo',
    Number.p: 'ragazzi',
  },
);

ItalianNoun ragazza = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'ragazza',
    Number.p: 'ragazze',
  },
);

ItalianNoun gatto = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'gatto',
    Number.p: 'gatti',
  },
);

ItalianNoun cane = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'cane',
    Number.p: 'cani',
  },
);

ItalianNoun libro = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'libro',
    Number.p: 'libri',
  },
);

ItalianNoun albero = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'albero',
    Number.p: 'alberi',
  },
);

ItalianNoun edificio = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'edificio',
    Number.p: 'edifici',
  },
);

ItalianNoun stella = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'stella',
    Number.p: 'stelle',
  },
);

//literal sense of arms
ItalianNoun braccio = const ItalianNoun(
  gender: Gender.i,
  declension: {
    Number.s: 'braccio',
    Number.p: 'braccia',
  },
);

//figurative sense of arms as in like inlets
ItalianNoun braccio2 = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'braccio',
    Number.p: 'bracci',
  },
);

//always one sense
ItalianNoun uovo = const ItalianNoun(
  gender: Gender.i,
  declension: {
    Number.s: 'uovo',
    Number.p: 'uova',
  },
);

ItalianNoun casa = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'casa',
    Number.p: 'case',
  },
);

ItalianNoun macchina = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'macchina',
    Number.p: 'macchine',
  },
);

ItalianNoun mela = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'mela',
    Number.p: 'mele',
  },
);

ItalianNoun sedia = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'sedia',
    Number.p: 'sedie',
  },
);

ItalianNoun tavolo = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'tavolo',
    Number.p: 'tavoli',
  },
);

ItalianNoun borsa = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'borsa',
    Number.p: 'borse',
  },
);

ItalianNoun persona = const ItalianNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'persona',
    Number.p: 'persone',
  },
);

ItalianNoun fiore = const ItalianNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'fiore',
    Number.p: 'fiori',
  },
);
