import '../italian_classes.dart';

List<ItalianNoun> italianNouns = [
  stella,
  uomo,
  braccio,
  casa,
  macchina,
  cane,
  gatto,
  mela,
  libro,
  sedia,
  tavolo,
  borsa,
  albero,
  donna,
  persona,
  ragazza,
  ragazzo,
  fiore,
];

ItalianNoun stella = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'stella',
    'p': 'stelle',
  },
);

ItalianNoun uomo = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'uomo',
    'p': 'uomini',
  },
);

//literal sense of arms
ItalianNoun braccio = const ItalianNoun(
  gender: 'i',
  declension: {
    's': 'braccio',
    'p': 'braccia',
  },
);

//figurative sense of arms as in like inlets
ItalianNoun braccio2 = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'braccio',
    'p': 'bracci',
  },
);

//always one sense
ItalianNoun uovo = const ItalianNoun(
  gender: 'i',
  declension: {
    's': 'uovo',
    'p': 'uova',
  },
);

ItalianNoun casa = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'casa',
    'p': 'case',
  },
);

ItalianNoun macchina = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'macchina',
    'p': 'macchine',
  },
);

ItalianNoun cane = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'cane',
    'p': 'cani',
  },
);

ItalianNoun gatto = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'gatto',
    'p': 'gatti',
  },
);

ItalianNoun mela = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'mela',
    'p': 'mele',
  },
);

ItalianNoun libro = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'libro',
    'p': 'libri',
  },
);

ItalianNoun sedia = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'sedia',
    'p': 'sedie',
  },
);

ItalianNoun tavolo = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'tavolo',
    'p': 'tavoli',
  },
);

ItalianNoun borsa = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'borsa',
    'p': 'borse',
  },
);

ItalianNoun albero = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'albero',
    'p': 'alberi',
  },
);

ItalianNoun donna = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'donna',
    'p': 'donne',
  },
);

ItalianNoun persona = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'persona',
    'p': 'persone',
  },
);

ItalianNoun ragazza = const ItalianNoun(
  gender: 'f',
  declension: {
    's': 'ragazza',
    'p': 'ragazze',
  },
);

ItalianNoun ragazzo = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'ragazzo',
    'p': 'ragazzi',
  },
);

ItalianNoun fiore = const ItalianNoun(
  gender: 'm',
  declension: {
    's': 'fiore',
    'p': 'fiori',
  },
);
