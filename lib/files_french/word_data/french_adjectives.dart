import '../../core/enums.dart';
import '../french_classes.dart';

List<FrenchAdjective> frenchAdjectives = [
  romain,
  grand, // Before the noun
  petit, // Before the noun
  beau, // Before the noun
  jeune, // Before the noun
  vieux, // Before the noun
  bon, // Before the noun
  mauvais, // Before the noun
  gros, // Before the noun
  long, // Before the noun
  court, // Before the noun
  haut, // Before the noun
  nouveau, // Before the noun
  vivant,
  mort, // Before the noun
  froid, // Before the noun
  chaud, // Before the noun
];

FrenchAdjective romain = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'romain', Gender.f: 'romaine'},
    Number.p: {Gender.m: 'romains', Gender.f: 'romaines'}
  },
);

FrenchAdjective grand = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'grand', Gender.f: 'grande'},
    Number.p: {Gender.m: 'grands', Gender.f: 'grandes'}
  },
);
FrenchAdjective petit = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'petit', Gender.f: 'petite'},
    Number.p: {Gender.m: 'petits', Gender.f: 'petites'}
  },
);
FrenchAdjective beau = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'beau', Gender.f: 'belle'},
    Number.p: {Gender.m: 'beaux', Gender.f: 'belles'}
  },
);
FrenchAdjective jeune = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'jeune', Gender.f: 'jeune'},
    Number.p: {Gender.m: 'jeunes', Gender.f: 'jeunes'}
  },
);
FrenchAdjective vieux = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'vieux', Gender.f: 'vieille'},
    Number.p: {Gender.m: 'vieux', Gender.f: 'vieilles'}
  },
);
FrenchAdjective bon = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'bon', Gender.f: 'bonne'},
    Number.p: {Gender.m: 'bons', Gender.f: 'bonnes'}
  },
);
FrenchAdjective mauvais = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'mauvais', Gender.f: 'mauvaise'},
    Number.p: {Gender.m: 'mauvais', Gender.f: 'mauvaises'}
  },
);
FrenchAdjective gros = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'gros', Gender.f: 'grosse'},
    Number.p: {Gender.m: 'gros', Gender.f: 'grosses'}
  },
);
FrenchAdjective long = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'long', Gender.f: 'longue'},
    Number.p: {Gender.m: 'longs', Gender.f: 'longues'}
  },
);
FrenchAdjective court = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'court', Gender.f: 'courte'},
    Number.p: {Gender.m: 'courts', Gender.f: 'courtes'}
  },
);
FrenchAdjective haut = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'haut', Gender.f: 'haute'},
    Number.p: {Gender.m: 'hauts', Gender.f: 'hautes'}
  },
);
FrenchAdjective nouveau = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'nouveau', Gender.f: 'nouvelle'},
    Number.p: {Gender.m: 'nouveaux', Gender.f: 'nouvelles'}
  },
);
FrenchAdjective vivant = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'vivant', Gender.f: 'vivante'},
    Number.p: {Gender.m: 'vivants', Gender.f: 'vivantes'}
  },
);
FrenchAdjective mort = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'mort', Gender.f: 'morte'},
    Number.p: {Gender.m: 'morts', Gender.f: 'mortes'}
  },
);
FrenchAdjective froid = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'froid', Gender.f: 'froide'},
    Number.p: {Gender.m: 'froids', Gender.f: 'froides'}
  },
);
FrenchAdjective chaud = const FrenchAdjective(
  before: true,
  declension: {
    Number.s: {Gender.m: 'chaud', Gender.f: 'chaude'},
    Number.p: {Gender.m: 'chauds', Gender.f: 'chaudes'}
  },
);
