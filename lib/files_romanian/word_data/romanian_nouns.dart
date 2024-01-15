import 'package:colorguesser/core/enums.dart';

import '../romanian_classes.dart';

List<RomanianNoun> romanianNouns = [
  stea,
];

RomanianNoun stea = const RomanianNoun(
  gender: Gender.f,
  declension: {
    Case.nomacc: {Number.s: 'stea', Number.p: 'stele'},
    Case.gendat: {Number.s: 'stele', Number.p: 'stele'},
    Case.voc: {Number.s: 'stea', Number.p: 'stelelor'},
  },
);
