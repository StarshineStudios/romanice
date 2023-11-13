import '../french_classes.dart';

List<FrenchAdjective> frenchAdjectives = [
  romain,
];

FrenchAdjective romain = const FrenchAdjective(
  declension: {
    's': {'m': 'romain', 'f': 'romaine'},
    'p': {'m': 'romains', 'f': 'romaines'}
  },
);

FrenchAdjective grand = const FrenchAdjective(
  declension: {
    's': {'m': 'grand', 'f': 'grande'},
    'p': {'m': 'grands', 'f': 'grandes'}
  },
);
