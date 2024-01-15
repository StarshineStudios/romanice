import 'package:colorguesser/core/enums.dart';

import '../portuguese_classes.dart';

List<PortugueseAdjective> portugueseAdjectives = [
  romano,
];

PortugueseAdjective romano = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'romano', Gender.f: 'romana'},
    Number.p: {Gender.m: 'romanos', Gender.f: 'romanas'}
  },
);
PortugueseAdjective bonito = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'bonito', Gender.f: 'bonita'},
    Number.p: {Gender.m: 'bonitos', Gender.f: 'bonitas'}
  },
);
