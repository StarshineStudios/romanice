import '../italian_classes.dart';

List<ItalianAdjective> italianAdjectives = [
  romano,
];

ItalianAdjective romano = const ItalianAdjective(
  declension: {
    's': {'m': 'romano', 'f': 'romana'},
    'p': {'m': 'romani', 'f': 'romane'}
  },
);

ItalianAdjective grande = const ItalianAdjective(
  declension: {
    's': {'m': 'grande', 'f': 'grande'},
    'p': {'m': 'grandi', 'f': 'grandi'}
  },
);

ItalianAdjective italiano = const ItalianAdjective(
  declension: {
    's': {'m': 'italiano', 'f': 'italiana'},
    'p': {'m': 'italiani', 'f': 'italiane'}
  },
);
