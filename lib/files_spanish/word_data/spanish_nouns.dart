import 'package:colorguesser/core/enums.dart';

import '../spanish_classes.dart';

List<SpanishNoun> spanishNouns = [
  hombre,
  mujer,
  nino,
  nina,
  gato,
  perro,
  libro,
  arbol,
  estrella,
  edificio,
];

SpanishNoun estrella = const SpanishNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'estrella',
    Number.p: 'estrellas',
  },
);
SpanishNoun hombre = const SpanishNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'hombre',
    Number.p: 'hombres',
  },
);

SpanishNoun mujer = const SpanishNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'mujer',
    Number.p: 'mujeres',
  },
);

SpanishNoun nino = const SpanishNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'niño',
    Number.p: 'niños',
  },
);

SpanishNoun nina = const SpanishNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'niña',
    Number.p: 'niñas',
  },
);

SpanishNoun gato = const SpanishNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'gato',
    Number.p: 'gatos',
  },
);

SpanishNoun perro = const SpanishNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'perro',
    Number.p: 'perros',
  },
);

SpanishNoun libro = const SpanishNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'libro',
    Number.p: 'libros',
  },
);

SpanishNoun arbol = const SpanishNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'árbol',
    Number.p: 'árboles',
  },
);

SpanishNoun edificio = const SpanishNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'edificio',
    Number.p: 'edificios',
  },
);
