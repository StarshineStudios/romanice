import '../latin_classes.dart';

List<LatinNoun> latinNouns = [
  stella,
  puer,
  bellum,
  pax,
  homo,
  tempus,
  domus,
  dies,
  aqua,
  via,
  arbor,
  fructus,
  liber,
  // Add the rest of the new nouns here
];

LatinNoun stella = const LatinNoun(
  gender: 'f',
  declension: {
    'nom': {
      's': 'stēlla',
      'p': 'stēllae',
    },
    'acc': {
      's': 'stēllam',
      'p': 'stēllās',
    },
    'gen': {
      's': 'stēllae',
      'p': 'stēllārum',
    },
    'dat': {
      's': 'stēllae',
      'p': 'stēllīs',
    },
    'abl': {
      's': 'stēllā',
      'p': 'stēllīs',
    },
    'voc': {
      's': 'stēlla',
      'p': 'stēllae',
    },
  },
);

LatinNoun puer = const LatinNoun(
  gender: 'm',
  declension: {
    'nom': {
      's': 'puer',
      'p': 'puerī',
    },
    'acc': {
      's': 'puerum',
      'p': 'puerōs',
    },
    'gen': {
      's': 'puerī',
      'p': 'puerōrum',
    },
    'dat': {
      's': 'puerō',
      'p': 'puerīs',
    },
    'abl': {
      's': 'puerō',
      'p': 'puerīs',
    },
    'voc': {
      's': 'puer',
      'p': 'puerī',
    },
  },
);

LatinNoun bellum = const LatinNoun(
  gender: 'n',
  declension: {
    'nom': {
      's': 'bellum',
      'p': 'bella',
    },
    'acc': {
      's': 'bellum',
      'p': 'bella',
    },
    'gen': {
      's': 'bellī',
      'p': 'bellōrum',
    },
    'dat': {
      's': 'bellō',
      'p': 'bellīs',
    },
    'abl': {
      's': 'bellō',
      'p': 'bellīs',
    },
    'voc': {
      's': 'bellum',
      'p': 'bella',
    },
  },
);

LatinNoun pax = const LatinNoun(
  gender: 'f',
  declension: {
    'nom': {
      's': 'pāx',
      'p': 'pācēs',
    },
    'acc': {
      's': 'pācem',
      'p': 'pācēs',
    },
    'gen': {
      's': 'pācis',
      'p': 'pācum',
    },
    'dat': {
      's': 'pācī',
      'p': 'pācibus',
    },
    'abl': {
      's': 'pāce',
      'p': 'pācibus',
    },
    'voc': {
      's': 'pāx',
      'p': 'pācēs',
    },
  },
);

LatinNoun homo = const LatinNoun(
  gender: 'm',
  declension: {
    'nom': {
      's': 'homō',
      'p': 'hominēs',
    },
    'acc': {
      's': 'hominem',
      'p': 'hominēs',
    },
    'gen': {
      's': 'hominis',
      'p': 'hominum',
    },
    'dat': {
      's': 'hominī',
      'p': 'hominibus',
    },
    'abl': {
      's': 'homine',
      'p': 'hominibus',
    },
    'voc': {
      's': 'homō',
      'p': 'hominēs',
    },
  },
);

LatinNoun tempus = const LatinNoun(
  gender: 'n',
  declension: {
    'nom': {
      's': 'tempus',
      'p': 'tempora',
    },
    'acc': {
      's': 'tempus',
      'p': 'tempora',
    },
    'gen': {
      's': 'temporis',
      'p': 'temporum',
    },
    'dat': {
      's': 'temporī',
      'p': 'temporibus',
    },
    'abl': {
      's': 'tempore',
      'p': 'temporibus',
    },
    'voc': {
      's': 'tempus',
      'p': 'tempora',
    },
  },
);

LatinNoun domus = const LatinNoun(
  gender: 'f',
  declension: {
    'nom': {
      's': 'domus',
      'p': 'domūs',
    },
    'acc': {
      's': 'domum',
      'p': 'domōs',
    },
    'gen': {
      's': 'domūs',
      'p': 'domuum',
    },
    'dat': {
      's': 'domuī',
      'p': 'domibus',
    },
    'abl': {
      's': 'domō',
      'p': 'domibus',
    },
    'voc': {
      's': 'domus',
      'p': 'domūs',
    },
    'loc': {
      's': 'domī',
      'p': 'domibus',
    },
  },
);

LatinNoun dies = const LatinNoun(
  gender: 'm',
  declension: {
    'nom': {
      's': 'diēs',
      'p': 'diēs',
    },
    'acc': {
      's': 'diem',
      'p': 'diēs',
    },
    'gen': {
      's': 'diēī',
      'p': 'diērum',
    },
    'dat': {
      's': 'diēī',
      'p': 'diēbus',
    },
    'abl': {
      's': 'diē',
      'p': 'diēbus',
    },
    'voc': {
      's': 'diēs',
      'p': 'diēs',
    },
  },
);

LatinNoun aqua = const LatinNoun(
  gender: 'f',
  declension: {
    'nom': {
      's': 'aqua',
      'p': 'aquae',
    },
    'acc': {
      's': 'aquam',
      'p': 'aquās',
    },
    'gen': {
      's': 'aquae',
      'p': 'aquārum',
    },
    'dat': {
      's': 'aquae',
      'p': 'aquis',
    },
    'abl': {
      's': 'aquā',
      'p': 'aquis',
    },
    'voc': {
      's': 'aqua',
      'p': 'aquae',
    },
  },
);

LatinNoun via = const LatinNoun(
  gender: 'f',
  declension: {
    'nom': {
      's': 'via',
      'p': 'viae',
    },
    'acc': {
      's': 'viam',
      'p': 'viās',
    },
    'gen': {
      's': 'viae',
      'p': 'viārum',
    },
    'dat': {
      's': 'viae',
      'p': 'viīs',
    },
    'abl': {
      's': 'viā',
      'p': 'viīs',
    },
    'voc': {
      's': 'via',
      'p': 'viae',
    },
  },
);

LatinNoun arbor = const LatinNoun(
  gender: 'f',
  declension: {
    'nom': {
      's': 'arbor',
      'p': 'arborēs',
    },
    'acc': {
      's': 'arborem',
      'p': 'arborēs',
    },
    'gen': {
      's': 'arboris',
      'p': 'arborum',
    },
    'dat': {
      's': 'arbori',
      'p': 'arboribus',
    },
    'abl': {
      's': 'arbori',
      'p': 'arboribus',
    },
    'voc': {
      's': 'arbor',
      'p': 'arborēs',
    },
  },
);

LatinNoun fructus = const LatinNoun(
  gender: 'm',
  declension: {
    'nom': {
      's': 'fructus',
      'p': 'fructūs',
    },
    'acc': {
      's': 'fructum',
      'p': 'fructūs',
    },
    'gen': {
      's': 'fructūs',
      'p': 'fructuum',
    },
    'dat': {
      's': 'fructuī',
      'p': 'fructibus',
    },
    'abl': {
      's': 'fructū',
      'p': 'fructibus',
    },
    'voc': {
      's': 'fructus',
      'p': 'fructūs',
    },
  },
);

LatinNoun liber = const LatinNoun(
  gender: 'm',
  declension: {
    'nom': {
      's': 'liber',
      'p': 'librī',
    },
    'acc': {
      's': 'librum',
      'p': 'librōs',
    },
    'gen': {
      's': 'librī',
      'p': 'librōrum',
    },
    'dat': {
      's': 'librō',
      'p': 'librīs',
    },
    'abl': {
      's': 'librō',
      'p': 'librīs',
    },
    'voc': {
      's': 'liber',
      'p': 'librī',
    },
  },
);

// ... Continue adding the rest of the LatinNoun definitions here in a similar format
