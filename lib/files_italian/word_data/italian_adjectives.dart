import 'package:colorguesser/core/enums.dart';

import '../italian_classes.dart';

List<ItalianAdjective> italianAdjectives = [
  romano,
  francese,
  italiano,
  portoghese,
  rumeno,
  spagnolo,
  grande,
  piccolo,
  nuovo,
  vecchio,
  corto,
  felice,
  triste,
  bello,
  buono,
];

ItalianAdjective romano = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'romano', Gender.f: 'romana'},
    Number.p: {Gender.m: 'romani', Gender.f: 'romane'}
  },
);

ItalianAdjective francese = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'francese', Gender.f: 'francese'},
    Number.p: {Gender.m: 'francesi', Gender.f: 'francesi'}
  },
);

ItalianAdjective italiano = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'italiano', Gender.f: 'italiana'},
    Number.p: {Gender.m: 'italiani', Gender.f: 'italiane'}
  },
);

ItalianAdjective portoghese = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'portoghese', Gender.f: 'portoghese'},
    Number.p: {Gender.m: 'portoghesi', Gender.f: 'portoghesi'}
  },
);

ItalianAdjective rumeno = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'rumeno', Gender.f: 'rumena'},
    Number.p: {Gender.m: 'rumeni', Gender.f: 'rumene'}
  },
);

ItalianAdjective spagnolo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'spagnolo', Gender.f: 'spagnola'},
    Number.p: {Gender.m: 'spagnoli', Gender.f: 'spagnole'}
  },
);

ItalianAdjective grande = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'grande', Gender.f: 'grande'},
    Number.p: {Gender.m: 'grandi', Gender.f: 'grandi'}
  },
);

ItalianAdjective piccolo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'piccolo', Gender.f: 'piccola'},
    Number.p: {Gender.m: 'piccoli', Gender.f: 'piccole'}
  },
);

ItalianAdjective nuovo = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'nuovo', Gender.f: 'nuova'},
    Number.p: {Gender.m: 'nuovi', Gender.f: 'nuove'}
  },
);

ItalianAdjective vecchio = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'vecchio', Gender.f: 'vecchia'},
    Number.p: {Gender.m: 'vecchi', Gender.f: 'vecchie'}
  },
);

ItalianAdjective corto = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'corto', Gender.f: 'corta'},
    Number.p: {Gender.m: 'corti', Gender.f: 'corte'}
  },
);

ItalianAdjective felice = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'felice', Gender.f: 'felice'},
    Number.p: {Gender.m: 'felici', Gender.f: 'felici'}
  },
);

ItalianAdjective triste = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'triste', Gender.f: 'triste'},
    Number.p: {Gender.m: 'tristi', Gender.f: 'tristi'}
  },
);

ItalianAdjective bello = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'bello', Gender.f: 'bella'},
    Number.p: {Gender.m: 'belli', Gender.f: 'belle'}
  },
);

ItalianAdjective buono = const ItalianAdjective(
  declension: {
    Number.s: {Gender.m: 'buono', Gender.f: 'buona'},
    Number.p: {Gender.m: 'buoni', Gender.f: 'buone'}
  },
);
