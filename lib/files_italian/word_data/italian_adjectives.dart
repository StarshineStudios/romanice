import 'package:colorguesser/core/enums.dart';

import '../italian_classes.dart';

List<ItalianAdjective> italianAdjectives = [
  romano,
  grande,
  italiano,
  piccolo,
  bello,
  giovane,
  vecchio,
  buono,
  cattivo,
  grosso,
  lungo,
  corto,
  alto,
  nuovo,
  vivo,
  morto,
  freddo,
  caldo,
];

ItalianAdjective romano = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'romano', Gender.f: 'romana'},
    Number.p: {Gender.m: 'romani', Gender.f: 'romane'}
  },
);

ItalianAdjective grande = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'grande', Gender.f: 'grande'},
    Number.p: {Gender.m: 'grandi', Gender.f: 'grandi'}
  },
);

ItalianAdjective italiano = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'italiano', Gender.f: 'italiana'},
    Number.p: {Gender.m: 'italiani', Gender.f: 'italiane'}
  },
);
ItalianAdjective piccolo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'piccolo', Gender.f: 'piccola'},
    Number.p: {Gender.m: 'piccoli', Gender.f: 'piccole'}
  },
);
ItalianAdjective bello = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'bello', Gender.f: 'bella'},
    Number.p: {Gender.m: 'belli', Gender.f: 'belle'}
  },
);
ItalianAdjective giovane = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'giovane', Gender.f: 'giovane'},
    Number.p: {Gender.m: 'giovani', Gender.f: 'giovani'}
  },
);
ItalianAdjective vecchio = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'vecchio', Gender.f: 'vecchia'},
    Number.p: {Gender.m: 'vecchi', Gender.f: 'vecchie'}
  },
);
ItalianAdjective buono = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'buono', Gender.f: 'buona'},
    Number.p: {Gender.m: 'buoni', Gender.f: 'buone'}
  },
);
ItalianAdjective cattivo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'cattivo', Gender.f: 'cattiva'},
    Number.p: {Gender.m: 'cattivi', Gender.f: 'cattive'}
  },
);
ItalianAdjective grosso = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'grosso', Gender.f: 'grossa'},
    Number.p: {Gender.m: 'grossi', Gender.f: 'grosse'}
  },
);
ItalianAdjective lungo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'lungo', Gender.f: 'lunga'},
    Number.p: {Gender.m: 'lungi', Gender.f: 'lunge'}
  },
);
ItalianAdjective corto = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'corto', Gender.f: 'corta'},
    Number.p: {Gender.m: 'corti', Gender.f: 'corte'}
  },
);
ItalianAdjective alto = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'alto', Gender.f: 'alta'},
    Number.p: {Gender.m: 'alti', Gender.f: 'alte'}
  },
);
ItalianAdjective nuovo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'nuovo', Gender.f: 'nuova'},
    Number.p: {Gender.m: 'nuovi', Gender.f: 'nuove'}
  },
);
ItalianAdjective vivo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'vivo', Gender.f: 'viva'},
    Number.p: {Gender.m: 'vivi', Gender.f: 'vive'}
  },
);
ItalianAdjective morto = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'morto', Gender.f: 'morta'},
    Number.p: {Gender.m: 'morti', Gender.f: 'morte'}
  },
);
ItalianAdjective freddo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'freddo', Gender.f: 'fredda'},
    Number.p: {Gender.m: 'freddi', Gender.f: 'fredde'}
  },
);
ItalianAdjective caldo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'caldo', Gender.f: 'calda'},
    Number.p: {Gender.m: 'caldi', Gender.f: 'calde'}
  },
);
