import 'package:colorguesser/core/enums.dart';

import '../spanish_classes.dart';

List<SpanishAdjective> spanishAdjectives = [
  romano,
  frances,
  italiano,
  portugues,
  rumano,
  espanol,
  grande,
  pequeno,
  nuevo,
  viejo,
  corto,
  feliz,
  triste,
  hermoso,
  bueno,
];

SpanishAdjective romano = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'romano', Gender.f: 'romana'},
    Number.p: {Gender.m: 'romanos', Gender.f: 'romanas'}
  },
);

SpanishAdjective frances = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'francés', Gender.f: 'francesa'},
    Number.p: {Gender.m: 'franceses', Gender.f: 'francesas'}
  },
);

SpanishAdjective italiano = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'italiano', Gender.f: 'italiana'},
    Number.p: {Gender.m: 'italianos', Gender.f: 'italianas'}
  },
);

SpanishAdjective portugues = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'portugués', Gender.f: 'portuguesa'},
    Number.p: {Gender.m: 'portugueses', Gender.f: 'portuguesas'}
  },
);

SpanishAdjective rumano = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'rumano', Gender.f: 'rumana'},
    Number.p: {Gender.m: 'rumanos', Gender.f: 'rumanas'}
  },
);

SpanishAdjective espanol = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'español', Gender.f: 'española'},
    Number.p: {Gender.m: 'españoles', Gender.f: 'españolas'}
  },
);

SpanishAdjective grande = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'grande', Gender.f: 'grande'},
    Number.p: {Gender.m: 'grandes', Gender.f: 'grandes'}
  },
);

SpanishAdjective pequeno = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'pequeño', Gender.f: 'pequeña'},
    Number.p: {Gender.m: 'pequeños', Gender.f: 'pequeñas'}
  },
);

SpanishAdjective nuevo = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'nuevo', Gender.f: 'nueva'},
    Number.p: {Gender.m: 'nuevos', Gender.f: 'nuevas'}
  },
);

SpanishAdjective viejo = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'viejo', Gender.f: 'vieja'},
    Number.p: {Gender.m: 'viejos', Gender.f: 'viejas'}
  },
);

SpanishAdjective corto = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'corto', Gender.f: 'corta'},
    Number.p: {Gender.m: 'cortos', Gender.f: 'cortas'}
  },
);

SpanishAdjective feliz = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'feliz', Gender.f: 'feliz'},
    Number.p: {Gender.m: 'felices', Gender.f: 'felices'}
  },
);

SpanishAdjective triste = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'triste', Gender.f: 'triste'},
    Number.p: {Gender.m: 'tristes', Gender.f: 'tristes'}
  },
);

SpanishAdjective hermoso = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'hermoso', Gender.f: 'hermosa'},
    Number.p: {Gender.m: 'hermosos', Gender.f: 'hermosas'}
  },
);

SpanishAdjective bueno = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'bueno', Gender.f: 'buena'},
    Number.p: {Gender.m: 'buenos', Gender.f: 'buenas'}
  },
);
