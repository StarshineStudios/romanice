import '../romanian_classes.dart';

List<RomanianAdjective> romanianAdjectives = [
  romano,
];

RomanianAdjective romano = const RomanianAdjective(
  declension: {
    'nomacc': {
      's': {'m': 'român', 'f': 'română', 'n': 'român'},
      'p': {'m': 'români', 'f': 'române', 'n': 'române'}
    },
    'gendat': {
      's': {'m': 'român', 'f': 'române', 'n': 'român'},
      'p': {'m': 'români', 'f': 'române', 'n': 'române'}
    },
    //vocative case is just same for nom
  },
);
