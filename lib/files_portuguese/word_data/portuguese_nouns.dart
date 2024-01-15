import 'package:colorguesser/core/enums.dart';

import '../portuguese_classes.dart';

List<PortugueseNoun> portugueseNouns = [
  estrela,
];

PortugueseNoun estrela = const PortugueseNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'estrela',
    Number.p: 'estrelas',
  },
);
