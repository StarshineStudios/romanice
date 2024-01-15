import 'package:colorguesser/core/enums.dart';

import '../spanish_classes.dart';

List<SpanishAdjective> spanishAdjectives = [
  romano,
];

SpanishAdjective romano = const SpanishAdjective(
  declension: {
    Number.s: {Gender.m: 'romano', Gender.f: 'romana'},
    Number.p: {Gender.m: 'romanos', Gender.f: 'romanas'}
  },
);
