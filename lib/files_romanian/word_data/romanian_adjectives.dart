import 'package:colorguesser/core/enums.dart';

import '../romanian_classes.dart';

List<RomanianAdjective> romanianAdjectives = [
  romano,
];

RomanianAdjective romano = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'român', Gender.f: 'română', Gender.n: 'român'},
      Number.p: {Gender.m: 'români', Gender.f: 'române', Gender.n: 'române'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'român', Gender.f: 'române', Gender.n: 'român'},
      Number.p: {Gender.m: 'români', Gender.f: 'române', Gender.n: 'române'}
    },
    //vocative case is just same for nom
    Case.voc: {
      Number.s: {Gender.m: 'român', Gender.f: 'română', Gender.n: 'român'},
      Number.p: {Gender.m: 'români', Gender.f: 'române', Gender.n: 'române'}
    },
  },
);
