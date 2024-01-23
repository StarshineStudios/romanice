import '../../core/enums.dart';
import '../french_classes.dart';

List<FrenchAdjective> frenchAdjectives = [
  romain,
  francais,
  italien,
  portugais,
  roumain,
  espagnol,
  grand,
  petit,
  nouveau,
  vieux,
  court,
  heureux,
  triste,
  beau,
  bon,
];

FrenchAdjective romain = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'romain', Gender.f: 'romaine'},
    Number.p: {Gender.m: 'romains', Gender.f: 'romaines'}
  },
);
FrenchAdjective francais = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'français', Gender.f: 'française'},
    Number.p: {Gender.m: 'français', Gender.f: 'françaises'}
  },
);
FrenchAdjective italien = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'italien', Gender.f: 'italienne'},
    Number.p: {Gender.m: 'italiens', Gender.f: 'italiennes'}
  },
);
FrenchAdjective portugais = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'portugais', Gender.f: 'portugaise'},
    Number.p: {Gender.m: 'portugais', Gender.f: 'portugaises'}
  },
);
FrenchAdjective roumain = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'roumain', Gender.f: 'roumaine'},
    Number.p: {Gender.m: 'roumains', Gender.f: 'roumaines'}
  },
);
FrenchAdjective espagnol = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'espagnol', Gender.f: 'espagnole'},
    Number.p: {Gender.m: 'espagnols', Gender.f: 'espagnoles'}
  },
);
FrenchAdjective grand = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'grand', Gender.f: 'grande'},
    Number.p: {Gender.m: 'grands', Gender.f: 'grandes'}
  },
);
FrenchAdjective petit = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'petit', Gender.f: 'petite'},
    Number.p: {Gender.m: 'petits', Gender.f: 'petites'}
  },
);
FrenchAdjective nouveau = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'nouveau', Gender.f: 'nouvelle'},
    Number.p: {Gender.m: 'nouveaux', Gender.f: 'nouvelles'}
  },
);
FrenchAdjective vieux = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'vieux', Gender.f: 'vieille'},
    Number.p: {Gender.m: 'vieux', Gender.f: 'vieilles'}
  },
);

FrenchAdjective court = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'court', Gender.f: 'courte'},
    Number.p: {Gender.m: 'courts', Gender.f: 'courtes'}
  },
);
FrenchAdjective heureux = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'heureux', Gender.f: 'heureuse'},
    Number.p: {Gender.m: 'heureux', Gender.f: 'heureuses'}
  },
);
FrenchAdjective triste = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'triste', Gender.f: 'triste'},
    Number.p: {Gender.m: 'tristes', Gender.f: 'tristes'}
  },
);
FrenchAdjective beau = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'beau', Gender.f: 'belle'},
    Number.p: {Gender.m: 'beaux', Gender.f: 'belles'}
  },
);
FrenchAdjective bon = const FrenchAdjective(
  declension: {
    Number.s: {Gender.m: 'bon', Gender.f: 'bonne'},
    Number.p: {Gender.m: 'bons', Gender.f: 'bonnes'}
  },
);
