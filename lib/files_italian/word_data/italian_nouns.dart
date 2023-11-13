import '../italian_classes.dart';

List<ItalianNoun> italianNouns = [
  stella,
  braccio,
  braccio2,
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
