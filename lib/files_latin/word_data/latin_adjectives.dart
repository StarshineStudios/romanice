import 'package:colorguesser/files_latin/latin_classes.dart';

List<LatinAdjective> latinAdjectives = [
  romanus,
  novus,
  bonus,
  magnus,
  multus,
];

LatinAdjective romanus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'rōmānus', 'f': 'rōmāna', 'n': 'rōmānum'},
      'p': {'m': 'rōmānī', 'f': 'rōmānae', 'n': 'rōmāna'}
    },
    'acc': {
      's': {'m': 'rōmānum', 'f': 'rōmānam', 'n': 'rōmānum'},
      'p': {'m': 'rōmānōs', 'f': 'rōmānās', 'n': 'rōmāna'}
    },
    'gen': {
      's': {'m': 'rōmānī', 'f': 'rōmānae', 'n': 'rōmānī'},
      'p': {'m': 'rōmānōrum', 'f': 'rōmānārum', 'n': 'rōmānōrum'}
    },
    'dat': {
      's': {'m': 'rōmānō', 'f': 'rōmānae', 'n': 'rōmānō'},
      'p': {'m': 'rōmānīs', 'f': 'rōmānīs', 'n': 'rōmānīs'}
    },
    'abl': {
      's': {'m': 'rōmānō', 'f': 'rōmānā', 'n': 'rōmānō'},
      'p': {'m': 'rōmānīs', 'f': 'rōmānīs', 'n': 'rōmānīs'}
    },
    'voc': {
      's': {'m': 'rōmāne', 'f': 'rōmāna', 'n': 'rōmānum'},
      'p': {'m': 'rōmānī', 'f': 'rōmānae', 'n': 'rōmāna'}
    },
  },
);
LatinAdjective novus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'novus', 'f': 'nova', 'n': 'novum'},
      'p': {'m': 'novī', 'f': 'novae', 'n': 'nova'}
    },
    'acc': {
      's': {'m': 'novum', 'f': 'novam', 'n': 'novum'},
      'p': {'m': 'novōs', 'f': 'novās', 'n': 'nova'}
    },
    'gen': {
      's': {'m': 'novī', 'f': 'novae', 'n': 'novī'},
      'p': {'m': 'novōrum', 'f': 'novārum', 'n': 'novōrum'}
    },
    'dat': {
      's': {'m': 'novō', 'f': 'novae', 'n': 'novō'},
      'p': {'m': 'novīs', 'f': 'novīs', 'n': 'novīs'}
    },
    'abl': {
      's': {'m': 'novō', 'f': 'novā', 'n': 'novō'},
      'p': {'m': 'novīs', 'f': 'novīs', 'n': 'novīs'}
    },
    'voc': {
      's': {'m': 'nove', 'f': 'nova', 'n': 'novum'},
      'p': {'m': 'novī', 'f': 'novae', 'n': 'nova'}
    },
  },
);

LatinAdjective bonus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'bonus', 'f': 'bona', 'n': 'bonum'},
      'p': {'m': 'bonī', 'f': 'bonae', 'n': 'bona'}
    },
    'acc': {
      's': {'m': 'bonum', 'f': 'bonam', 'n': 'bonum'},
      'p': {'m': 'bonōs', 'f': 'bonās', 'n': 'bona'}
    },
    'gen': {
      's': {'m': 'bonī', 'f': 'bonae', 'n': 'bonī'},
      'p': {'m': 'bonōrum', 'f': 'bonārum', 'n': 'bonōrum'}
    },
    'dat': {
      's': {'m': 'bonō', 'f': 'bonae', 'n': 'bonō'},
      'p': {'m': 'bonīs', 'f': 'bonīs', 'n': 'bonīs'}
    },
    'abl': {
      's': {'m': 'bonō', 'f': 'bonā', 'n': 'bonō'},
      'p': {'m': 'bonīs', 'f': 'bonīs', 'n': 'bonīs'}
    },
    'voc': {
      's': {'m': 'bōne', 'f': 'bona', 'n': 'bonum'},
      'p': {'m': 'bonī', 'f': 'bonae', 'n': 'bona'}
    },
  },
);
LatinAdjective magnus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'magnus', 'f': 'magna', 'n': 'magnum'},
      'p': {'m': 'magnī', 'f': 'magnae', 'n': 'magna'}
    },
    'acc': {
      's': {'m': 'magnum', 'f': 'magnam', 'n': 'magnum'},
      'p': {'m': 'magnōs', 'f': 'magnās', 'n': 'magna'}
    },
    'gen': {
      's': {'m': 'magnī', 'f': 'magnae', 'n': 'magnī'},
      'p': {'m': 'magnōrum', 'f': 'magnārum', 'n': 'magnōrum'}
    },
    'dat': {
      's': {'m': 'magnō', 'f': 'magnae', 'n': 'magnō'},
      'p': {'m': 'magnīs', 'f': 'magnīs', 'n': 'magnīs'}
    },
    'abl': {
      's': {'m': 'magnō', 'f': 'magnā', 'n': 'magnō'},
      'p': {'m': 'magnīs', 'f': 'magnīs', 'n': 'magnīs'}
    },
    'voc': {
      's': {'m': 'magne', 'f': 'magna', 'n': 'magnum'},
      'p': {'m': 'magnī', 'f': 'magnae', 'n': 'magna'}
    },
  },
);
LatinAdjective multus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'multus', 'f': 'multa', 'n': 'multum'},
      'p': {'m': 'multī', 'f': 'multae', 'n': 'multa'}
    },
    'acc': {
      's': {'m': 'multum', 'f': 'multam', 'n': 'multum'},
      'p': {'m': 'multōs', 'f': 'multās', 'n': 'multa'}
    },
    'gen': {
      's': {'m': 'multī', 'f': 'multae', 'n': 'multī'},
      'p': {'m': 'multōrum', 'f': 'multārum', 'n': 'multōrum'}
    },
    'dat': {
      's': {'m': 'multō', 'f': 'multae', 'n': 'multō'},
      'p': {'m': 'multīs', 'f': 'multīs', 'n': 'multīs'}
    },
    'abl': {
      's': {'m': 'multō', 'f': 'multā', 'n': 'multō'},
      'p': {'m': 'multīs', 'f': 'multīs', 'n': 'multīs'}
    },
    'voc': {
      's': {'m': 'multe', 'f': 'multa', 'n': 'multum'},
      'p': {'m': 'multī', 'f': 'multae', 'n': 'multa'}
    },
  },
);


// LatinAdjective novus = LatinAdjective(
//   declension: {
//     'nom': {
//       's': {'m': '', 'f': '', 'n': ''},
//       'p': {'m': '', 'f': '', 'n': ''}
//     },
//     'acc': {
//       's': {'m': '', 'f': '', 'n': ''},
//       'p': {'m': '', 'f': '', 'n': ''}
//     },
//     'gen': {
//       's': {'m': '', 'f': '', 'n': ''},
//       'p': {'m': '', 'f': '', 'n': ''}
//     },
//     'dat': {
//       's': {'m': '', 'f': '', 'n': ''},
//       'p': {'m': '', 'f': '', 'n': ''}
//     },
//     'abl': {
//       's': {'m': '', 'f': '', 'n': ''},
//       'p': {'m': '', 'f': '', 'n': ''}
//     },
//     'voc': {
//       's': {'m': '', 'f': '', 'n': ''},
//       'p': {'m': '', 'f': '', 'n': ''}
//     },
//   },
// );
