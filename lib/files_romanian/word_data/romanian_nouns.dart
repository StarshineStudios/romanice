import '../romanian_classes.dart';

List<RomanianNoun> romanianNouns = [
  stea,
];

RomanianNoun stea = const RomanianNoun(
  gender: 'f',
  declension: {
    'nomacc': {
      's': 'stea',
      'p': 'stele',
    },
    'gendat': {
      's': 'stele',
      'p': 'stele',
    },
    'voc': {
      's': 'stea',
      'p': 'stelelor',
    },
  },
);
