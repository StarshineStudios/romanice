import '../portuguese_classes.dart';

List<PortugueseAdjective> portugueseAdjectives = [
  romano,
];

PortugueseAdjective romano = const PortugueseAdjective(
  declension: {
    's': {'m': 'romano', 'f': 'romana'},
    'p': {'m': 'romanos', 'f': 'romanas'}
  },
);
PortugueseAdjective bonito = const PortugueseAdjective(
  declension: {
    's': {'m': 'bonito', 'f': 'bonita'},
    'p': {'m': 'bonitos', 'f': 'bonitas'}
  },
);
