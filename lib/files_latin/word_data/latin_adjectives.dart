import 'package:colorguesser/files_latin/latin_classes.dart';

List<LatinAdjective> latinAdjectives = [
  romanus,
  novus,
  bonus,
  magnus,
  multus,
  altus,
  gravis,
  brevis,
  acer,
  dulcis,
  longus,
  curvus,
  novus,
  rectus,
  liber,
  latus,
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

LatinAdjective pulcher = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'pulcher', 'f': 'pulchra', 'n': 'pulchrum'},
      'p': {'m': 'pulchrī', 'f': 'pulchrae', 'n': 'pulchra'}
    },
    'acc': {
      's': {'m': 'pulchrum', 'f': 'pulchram', 'n': 'pulchrum'},
      'p': {'m': 'pulchrōs', 'f': 'pulchrās', 'n': 'pulchra'}
    },
    'gen': {
      's': {'m': 'pulchrī', 'f': 'pulchrae', 'n': 'pulchrī'},
      'p': {'m': 'pulchrōrum', 'f': 'pulchrārum', 'n': 'pulchrōrum'}
    },
    'dat': {
      's': {'m': 'pulchrō', 'f': 'pulchrae', 'n': 'pulchrō'},
      'p': {'m': 'pulchrīs', 'f': 'pulchrīs', 'n': 'pulchrīs'}
    },
    'abl': {
      's': {'m': 'pulchrō', 'f': 'pulchrā', 'n': 'pulchrō'},
      'p': {'m': 'pulchrīs', 'f': 'pulchrīs', 'n': 'pulchrīs'}
    },
    'voc': {
      's': {'m': 'pulcher', 'f': 'pulchra', 'n': 'pulchrum'},
      'p': {'m': 'pulchrī', 'f': 'pulchrae', 'n': 'pulchra'}
    }
  },
);

LatinAdjective parvus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'parvus', 'f': 'parva', 'n': 'parvum'},
      'p': {'m': 'parvī', 'f': 'parvae', 'n': 'parva'}
    },
    'acc': {
      's': {'m': 'parvum', 'f': 'parvam', 'n': 'parvum'},
      'p': {'m': 'parvōs', 'f': 'parvās', 'n': 'parva'}
    },
    'gen': {
      's': {'m': 'parvī', 'f': 'parvae', 'n': 'parvī'},
      'p': {'m': 'parvōrum', 'f': 'parvārum', 'n': 'parvōrum'}
    },
    'dat': {
      's': {'m': 'parvō', 'f': 'parvae', 'n': 'parvō'},
      'p': {'m': 'parvīs', 'f': 'parvīs', 'n': 'parvīs'}
    },
    'abl': {
      's': {'m': 'parvō', 'f': 'parvā', 'n': 'parvō'},
      'p': {'m': 'parvīs', 'f': 'parvīs', 'n': 'parvīs'}
    },
    'voc': {
      's': {'m': 'parve', 'f': 'parva', 'n': 'parvum'},
      'p': {'m': 'parvī', 'f': 'parvae', 'n': 'parva'}
    }
  },
);

LatinAdjective fortis = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'fortis', 'f': 'fortis', 'n': 'forte'},
      'p': {'m': 'fortēs', 'f': 'fortēs', 'n': 'fortia'}
    },
    'acc': {
      's': {'m': 'fortem', 'f': 'fortem', 'n': 'forte'},
      'p': {'m': 'fortēs', 'f': 'fortēs', 'n': 'fortia'}
    },
    'gen': {
      's': {'m': 'fortis', 'f': 'fortis', 'n': 'fortis'},
      'p': {'m': 'fortium', 'f': 'fortium', 'n': 'fortium'}
    },
    'dat': {
      's': {'m': 'fortī', 'f': 'fortī', 'n': 'fortī'},
      'p': {'m': 'fortibus', 'f': 'fortibus', 'n': 'fortibus'}
    },
    'abl': {
      's': {'m': 'fortī', 'f': 'fortī', 'n': 'fortī'},
      'p': {'m': 'fortibus', 'f': 'fortibus', 'n': 'fortibus'}
    },
    'voc': {
      's': {'m': 'fortis', 'f': 'fortis', 'n': 'forte'},
      'p': {'m': 'fortēs', 'f': 'fortēs', 'n': 'fortia'}
    }
  },
);

LatinAdjective latus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'latus', 'f': 'lata', 'n': 'latum'},
      'p': {'m': 'latī', 'f': 'latae', 'n': 'lata'}
    },
    'acc': {
      's': {'m': 'latum', 'f': 'latam', 'n': 'latum'},
      'p': {'m': 'latōs', 'f': 'latās', 'n': 'lata'}
    },
    'gen': {
      's': {'m': 'latī', 'f': 'latae', 'n': 'latī'},
      'p': {'m': 'latōrum', 'f': 'latārum', 'n': 'latōrum'}
    },
    'dat': {
      's': {'m': 'latō', 'f': 'latae', 'n': 'latō'},
      'p': {'m': 'latīs', 'f': 'latīs', 'n': 'latīs'}
    },
    'abl': {
      's': {'m': 'latō', 'f': 'latā', 'n': 'latō'},
      'p': {'m': 'latīs', 'f': 'latīs', 'n': 'latīs'}
    },
    'voc': {
      's': {'m': 'late', 'f': 'lata', 'n': 'latum'},
      'p': {'m': 'latī', 'f': 'latae', 'n': 'lata'}
    }
  },
);
LatinAdjective celer = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'celer', 'f': 'celer', 'n': 'celere'},
      'p': {'m': 'celerēs', 'f': 'celerēs', 'n': 'celeria'}
    },
    'acc': {
      's': {'m': 'celerem', 'f': 'celerem', 'n': 'celere'},
      'p': {'m': 'celerēs', 'f': 'celerēs', 'n': 'celeria'}
    },
    'gen': {
      's': {'m': 'celeris', 'f': 'celeris', 'n': 'celeris'},
      'p': {'m': 'celerium', 'f': 'celerium', 'n': 'celerium'}
    },
    'dat': {
      's': {'m': 'celerī', 'f': 'celerī', 'n': 'celerī'},
      'p': {'m': 'celeribus', 'f': 'celeribus', 'n': 'celeribus'}
    },
    'abl': {
      's': {'m': 'celerī', 'f': 'celerī', 'n': 'celerī'},
      'p': {'m': 'celeribus', 'f': 'celeribus', 'n': 'celeribus'}
    },
    'voc': {
      's': {'m': 'celer', 'f': 'celer', 'n': 'celere'},
      'p': {'m': 'celerēs', 'f': 'celerēs', 'n': 'celeria'}
    }
  },
);
LatinAdjective altus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'altus', 'f': 'alta', 'n': 'altum'},
      'p': {'m': 'altī', 'f': 'altae', 'n': 'alta'}
    },
    'acc': {
      's': {'m': 'altum', 'f': 'altam', 'n': 'altum'},
      'p': {'m': 'altōs', 'f': 'altās', 'n': 'alta'}
    },
    'gen': {
      's': {'m': 'altī', 'f': 'altae', 'n': 'altī'},
      'p': {'m': 'altōrum', 'f': 'altārum', 'n': 'altōrum'}
    },
    'dat': {
      's': {'m': 'altō', 'f': 'altae', 'n': 'altō'},
      'p': {'m': 'altīs', 'f': 'altīs', 'n': 'altīs'}
    },
    'abl': {
      's': {'m': 'altō', 'f': 'altā', 'n': 'altō'},
      'p': {'m': 'altīs', 'f': 'altīs', 'n': 'altīs'}
    },
    'voc': {
      's': {'m': 'alte', 'f': 'alta', 'n': 'altum'},
      'p': {'m': 'altī', 'f': 'altae', 'n': 'alta'}
    }
  },
);
LatinAdjective gravis = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'gravis', 'f': 'gravis', 'n': 'grave'},
      'p': {'m': 'gravēs', 'f': 'gravēs', 'n': 'gravia'}
    },
    'acc': {
      's': {'m': 'gravem', 'f': 'gravem', 'n': 'grave'},
      'p': {'m': 'gravēs', 'f': 'gravēs', 'n': 'gravia'}
    },
    'gen': {
      's': {'m': 'gravis', 'f': 'gravis', 'n': 'gravis'},
      'p': {'m': 'gravium', 'f': 'gravium', 'n': 'gravium'}
    },
    'dat': {
      's': {'m': 'gravī', 'f': 'gravī', 'n': 'gravī'},
      'p': {'m': 'gravis', 'f': 'gravis', 'n': 'gravis'}
    },
    'abl': {
      's': {'m': 'gravī', 'f': 'gravī', 'n': 'gravī'},
      'p': {'m': 'gravis', 'f': 'gravis', 'n': 'gravis'}
    },
    'voc': {
      's': {'m': 'gravis', 'f': 'gravis', 'n': 'grave'},
      'p': {'m': 'gravēs', 'f': 'gravēs', 'n': 'gravia'}
    }
  },
);
LatinAdjective brevis = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'brevis', 'f': 'brevis', 'n': 'breve'},
      'p': {'m': 'brevēs', 'f': 'brevēs', 'n': 'brevia'}
    },
    'acc': {
      's': {'m': 'brevem', 'f': 'brevem', 'n': 'breve'},
      'p': {'m': 'brevēs', 'f': 'brevēs', 'n': 'brevia'}
    },
    'gen': {
      's': {'m': 'brevis', 'f': 'brevis', 'n': 'brevis'},
      'p': {'m': 'brevium', 'f': 'brevium', 'n': 'brevium'}
    },
    'dat': {
      's': {'m': 'brevī', 'f': 'brevī', 'n': 'brevī'},
      'p': {'m': 'brevibus', 'f': 'brevibus', 'n': 'brevibus'}
    },
    'abl': {
      's': {'m': 'brevī', 'f': 'brevī', 'n': 'brevī'},
      'p': {'m': 'brevibus', 'f': 'brevibus', 'n': 'brevibus'}
    },
    'voc': {
      's': {'m': 'brevis', 'f': 'brevis', 'n': 'breve'},
      'p': {'m': 'brevēs', 'f': 'brevēs', 'n': 'brevia'}
    }
  },
);
LatinAdjective acer = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'acer', 'f': 'acer', 'n': 'acre'},
      'p': {'m': 'acrēs', 'f': 'acrēs', 'n': 'acria'}
    },
    'acc': {
      's': {'m': 'acrem', 'f': 'acrem', 'n': 'acre'},
      'p': {'m': 'acrēs', 'f': 'acrēs', 'n': 'acria'}
    },
    'gen': {
      's': {'m': 'acris', 'f': 'acris', 'n': 'acris'},
      'p': {'m': 'acrium', 'f': 'acrium', 'n': 'acrium'}
    },
    'dat': {
      's': {'m': 'acrī', 'f': 'acrī', 'n': 'acrī'},
      'p': {'m': 'acribus', 'f': 'acribus', 'n': 'acribus'}
    },
    'abl': {
      's': {'m': 'acrī', 'f': 'acrī', 'n': 'acrī'},
      'p': {'m': 'acribus', 'f': 'acribus', 'n': 'acribus'}
    },
    'voc': {
      's': {'m': 'acer', 'f': 'acer', 'n': 'acre'},
      'p': {'m': 'acrēs', 'f': 'acrēs', 'n': 'acria'}
    }
  },
);
LatinAdjective dulcis = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'dulcis', 'f': 'dulcis', 'n': 'dulce'},
      'p': {'m': 'dulcēs', 'f': 'dulcēs', 'n': 'dulcia'}
    },
    'acc': {
      's': {'m': 'dulcem', 'f': 'dulcem', 'n': 'dulce'},
      'p': {'m': 'dulcēs', 'f': 'dulcēs', 'n': 'dulcia'}
    },
    'gen': {
      's': {'m': 'dulcis', 'f': 'dulcis', 'n': 'dulcis'},
      'p': {'m': 'dulcium', 'f': 'dulcium', 'n': 'dulcium'}
    },
    'dat': {
      's': {'m': 'dulcī', 'f': 'dulcī', 'n': 'dulcī'},
      'p': {'m': 'dulcibus', 'f': 'dulcibus', 'n': 'dulcibus'}
    },
    'abl': {
      's': {'m': 'dulcī', 'f': 'dulcī', 'n': 'dulcī'},
      'p': {'m': 'dulcibus', 'f': 'dulcibus', 'n': 'dulcibus'}
    },
    'voc': {
      's': {'m': 'dulcis', 'f': 'dulcis', 'n': 'dulce'},
      'p': {'m': 'dulcēs', 'f': 'dulcēs', 'n': 'dulcia'}
    }
  },
);
LatinAdjective longus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'longus', 'f': 'longa', 'n': 'longum'},
      'p': {'m': 'longī', 'f': 'longae', 'n': 'longa'}
    },
    'acc': {
      's': {'m': 'longum', 'f': 'longam', 'n': 'longum'},
      'p': {'m': 'longōs', 'f': 'longās', 'n': 'longa'}
    },
    'gen': {
      's': {'m': 'longī', 'f': 'longae', 'n': 'longī'},
      'p': {'m': 'longōrum', 'f': 'longārum', 'n': 'longōrum'}
    },
    'dat': {
      's': {'m': 'longō', 'f': 'longae', 'n': 'longō'},
      'p': {'m': 'longīs', 'f': 'longīs', 'n': 'longīs'}
    },
    'abl': {
      's': {'m': 'longō', 'f': 'longā', 'n': 'longō'},
      'p': {'m': 'longīs', 'f': 'longīs', 'n': 'longīs'}
    },
    'voc': {
      's': {'m': 'longe', 'f': 'longa', 'n': 'longum'},
      'p': {'m': 'longī', 'f': 'longae', 'n': 'longa'}
    }
  },
);
LatinAdjective curvus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'curvus', 'f': 'curva', 'n': 'curvum'},
      'p': {'m': 'curvī', 'f': 'curvae', 'n': 'curva'}
    },
    'acc': {
      's': {'m': 'curvum', 'f': 'curvam', 'n': 'curvum'},
      'p': {'m': 'curvōs', 'f': 'curvās', 'n': 'curva'}
    },
    'gen': {
      's': {'m': 'curvī', 'f': 'curvae', 'n': 'curvī'},
      'p': {'m': 'curvōrum', 'f': 'curvārum', 'n': 'curvōrum'}
    },
    'dat': {
      's': {'m': 'curvō', 'f': 'curvae', 'n': 'curvō'},
      'p': {'m': 'curvīs', 'f': 'curvīs', 'n': 'curvīs'}
    },
    'abl': {
      's': {'m': 'curvō', 'f': 'curvā', 'n': 'curvō'},
      'p': {'m': 'curvīs', 'f': 'curvīs', 'n': 'curvīs'}
    },
    'voc': {
      's': {'m': 'curve', 'f': 'curva', 'n': 'curvum'},
      'p': {'m': 'curvī', 'f': 'curvae', 'n': 'curva'}
    }
  },
);
LatinAdjective liber = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'liber', 'f': 'libera', 'n': 'liberum'},
      'p': {'m': 'liberī', 'f': 'liberae', 'n': 'libera'}
    },
    'acc': {
      's': {'m': 'liberum', 'f': 'liberam', 'n': 'liberum'},
      'p': {'m': 'liberōs', 'f': 'liberās', 'n': 'libera'}
    },
    'gen': {
      's': {'m': 'liberī', 'f': 'liberae', 'n': 'liberī'},
      'p': {'m': 'liberōrum', 'f': 'liberārum', 'n': 'liberōrum'}
    },
    'dat': {
      's': {'m': 'liberō', 'f': 'liberae', 'n': 'liberō'},
      'p': {'m': 'liberīs', 'f': 'liberīs', 'n': 'liberīs'}
    },
    'abl': {
      's': {'m': 'liberō', 'f': 'liberā', 'n': 'liberō'},
      'p': {'m': 'liberīs', 'f': 'liberīs', 'n': 'liberīs'}
    },
    'voc': {
      's': {'m': 'liber', 'f': 'libera', 'n': 'liberum'},
      'p': {'m': 'liberī', 'f': 'liberae', 'n': 'libera'}
    }
  },
);
LatinAdjective rectus = const LatinAdjective(
  declension: {
    'nom': {
      's': {'m': 'rectus', 'f': 'recta', 'n': 'rectum'},
      'p': {'m': 'rectī', 'f': 'rectae', 'n': 'recta'}
    },
    'acc': {
      's': {'m': 'rectum', 'f': 'rectam', 'n': 'rectum'},
      'p': {'m': 'rectōs', 'f': 'rectās', 'n': 'recta'}
    },
    'gen': {
      's': {'m': 'rectī', 'f': 'rectae', 'n': 'rectī'},
      'p': {'m': 'rectōrum', 'f': 'rectārum', 'n': 'rectōrum'}
    },
    'dat': {
      's': {'m': 'rectō', 'f': 'rectae', 'n': 'rectō'},
      'p': {'m': 'rectīs', 'f': 'rectīs', 'n': 'rectīs'}
    },
    'abl': {
      's': {'m': 'rectō', 'f': 'rectā', 'n': 'rectō'},
      'p': {'m': 'rectīs', 'f': 'rectīs', 'n': 'rectīs'}
    },
    'voc': {
      's': {'m': 'recte', 'f': 'recta', 'n': 'rectum'},
      'p': {'m': 'rectī', 'f': 'rectae', 'n': 'recta'}
    }
  },
);
