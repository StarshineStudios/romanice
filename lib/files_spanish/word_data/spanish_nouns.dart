import 'package:colorguesser/core/enums.dart';

import '../spanish_classes.dart';

List<SpanishNoun> spanishNouns = [
  estrella,
];

SpanishNoun estrella = const SpanishNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'estrella',
    Number.p: 'estrellas',
  },
);
