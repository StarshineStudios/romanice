import 'package:colorguesser/core/enums.dart';
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
  rectus,
  liber,
  latus,
];

LatinAdjective romanus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'rōmānus', Gender.f: 'rōmāna', Gender.n: 'rōmānum'},
      Number.p: {Gender.m: 'rōmānī', Gender.f: 'rōmānae', Gender.n: 'rōmāna'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'rōmānum', Gender.f: 'rōmānam', Gender.n: 'rōmānum'},
      Number.p: {Gender.m: 'rōmānōs', Gender.f: 'rōmānās', Gender.n: 'rōmāna'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'rōmānī', Gender.f: 'rōmānae', Gender.n: 'rōmānī'},
      Number.p: {Gender.m: 'rōmānōrum', Gender.f: 'rōmānārum', Gender.n: 'rōmānōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'rōmānō', Gender.f: 'rōmānae', Gender.n: 'rōmānō'},
      Number.p: {Gender.m: 'rōmānīs', Gender.f: 'rōmānīs', Gender.n: 'rōmānīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'rōmānō', Gender.f: 'rōmānā', Gender.n: 'rōmānō'},
      Number.p: {Gender.m: 'rōmānīs', Gender.f: 'rōmānīs', Gender.n: 'rōmānīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'rōmāne', Gender.f: 'rōmāna', Gender.n: 'rōmānum'},
      Number.p: {Gender.m: 'rōmānī', Gender.f: 'rōmānae', Gender.n: 'rōmāna'}
    },
  },
);
LatinAdjective novus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'novus', Gender.f: 'nova', Gender.n: 'novum'},
      Number.p: {Gender.m: 'novī', Gender.f: 'novae', Gender.n: 'nova'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'novum', Gender.f: 'novam', Gender.n: 'novum'},
      Number.p: {Gender.m: 'novōs', Gender.f: 'novās', Gender.n: 'nova'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'novī', Gender.f: 'novae', Gender.n: 'novī'},
      Number.p: {Gender.m: 'novōrum', Gender.f: 'novārum', Gender.n: 'novōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'novō', Gender.f: 'novae', Gender.n: 'novō'},
      Number.p: {Gender.m: 'novīs', Gender.f: 'novīs', Gender.n: 'novīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'novō', Gender.f: 'novā', Gender.n: 'novō'},
      Number.p: {Gender.m: 'novīs', Gender.f: 'novīs', Gender.n: 'novīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'nove', Gender.f: 'nova', Gender.n: 'novum'},
      Number.p: {Gender.m: 'novī', Gender.f: 'novae', Gender.n: 'nova'}
    },
  },
);

LatinAdjective bonus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'bonus', Gender.f: 'bona', Gender.n: 'bonum'},
      Number.p: {Gender.m: 'bonī', Gender.f: 'bonae', Gender.n: 'bona'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'bonum', Gender.f: 'bonam', Gender.n: 'bonum'},
      Number.p: {Gender.m: 'bonōs', Gender.f: 'bonās', Gender.n: 'bona'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'bonī', Gender.f: 'bonae', Gender.n: 'bonī'},
      Number.p: {Gender.m: 'bonōrum', Gender.f: 'bonārum', Gender.n: 'bonōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'bonō', Gender.f: 'bonae', Gender.n: 'bonō'},
      Number.p: {Gender.m: 'bonīs', Gender.f: 'bonīs', Gender.n: 'bonīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'bonō', Gender.f: 'bonā', Gender.n: 'bonō'},
      Number.p: {Gender.m: 'bonīs', Gender.f: 'bonīs', Gender.n: 'bonīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'bōne', Gender.f: 'bona', Gender.n: 'bonum'},
      Number.p: {Gender.m: 'bonī', Gender.f: 'bonae', Gender.n: 'bona'}
    },
  },
);
LatinAdjective magnus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'magnus', Gender.f: 'magna', Gender.n: 'magnum'},
      Number.p: {Gender.m: 'magnī', Gender.f: 'magnae', Gender.n: 'magna'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'magnum', Gender.f: 'magnam', Gender.n: 'magnum'},
      Number.p: {Gender.m: 'magnōs', Gender.f: 'magnās', Gender.n: 'magna'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'magnī', Gender.f: 'magnae', Gender.n: 'magnī'},
      Number.p: {Gender.m: 'magnōrum', Gender.f: 'magnārum', Gender.n: 'magnōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'magnō', Gender.f: 'magnae', Gender.n: 'magnō'},
      Number.p: {Gender.m: 'magnīs', Gender.f: 'magnīs', Gender.n: 'magnīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'magnō', Gender.f: 'magnā', Gender.n: 'magnō'},
      Number.p: {Gender.m: 'magnīs', Gender.f: 'magnīs', Gender.n: 'magnīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'magne', Gender.f: 'magna', Gender.n: 'magnum'},
      Number.p: {Gender.m: 'magnī', Gender.f: 'magnae', Gender.n: 'magna'}
    },
  },
);
LatinAdjective multus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'multus', Gender.f: 'multa', Gender.n: 'multum'},
      Number.p: {Gender.m: 'multī', Gender.f: 'multae', Gender.n: 'multa'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'multum', Gender.f: 'multam', Gender.n: 'multum'},
      Number.p: {Gender.m: 'multōs', Gender.f: 'multās', Gender.n: 'multa'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'multī', Gender.f: 'multae', Gender.n: 'multī'},
      Number.p: {Gender.m: 'multōrum', Gender.f: 'multārum', Gender.n: 'multōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'multō', Gender.f: 'multae', Gender.n: 'multō'},
      Number.p: {Gender.m: 'multīs', Gender.f: 'multīs', Gender.n: 'multīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'multō', Gender.f: 'multā', Gender.n: 'multō'},
      Number.p: {Gender.m: 'multīs', Gender.f: 'multīs', Gender.n: 'multīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'multe', Gender.f: 'multa', Gender.n: 'multum'},
      Number.p: {Gender.m: 'multī', Gender.f: 'multae', Gender.n: 'multa'}
    },
  },
);

LatinAdjective pulcher = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'pulcher', Gender.f: 'pulchra', Gender.n: 'pulchrum'},
      Number.p: {Gender.m: 'pulchrī', Gender.f: 'pulchrae', Gender.n: 'pulchra'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'pulchrum', Gender.f: 'pulchram', Gender.n: 'pulchrum'},
      Number.p: {Gender.m: 'pulchrōs', Gender.f: 'pulchrās', Gender.n: 'pulchra'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'pulchrī', Gender.f: 'pulchrae', Gender.n: 'pulchrī'},
      Number.p: {Gender.m: 'pulchrōrum', Gender.f: 'pulchrārum', Gender.n: 'pulchrōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'pulchrō', Gender.f: 'pulchrae', Gender.n: 'pulchrō'},
      Number.p: {Gender.m: 'pulchrīs', Gender.f: 'pulchrīs', Gender.n: 'pulchrīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'pulchrō', Gender.f: 'pulchrā', Gender.n: 'pulchrō'},
      Number.p: {Gender.m: 'pulchrīs', Gender.f: 'pulchrīs', Gender.n: 'pulchrīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'pulcher', Gender.f: 'pulchra', Gender.n: 'pulchrum'},
      Number.p: {Gender.m: 'pulchrī', Gender.f: 'pulchrae', Gender.n: 'pulchra'}
    }
  },
);

LatinAdjective parvus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'parvus', Gender.f: 'parva', Gender.n: 'parvum'},
      Number.p: {Gender.m: 'parvī', Gender.f: 'parvae', Gender.n: 'parva'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'parvum', Gender.f: 'parvam', Gender.n: 'parvum'},
      Number.p: {Gender.m: 'parvōs', Gender.f: 'parvās', Gender.n: 'parva'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'parvī', Gender.f: 'parvae', Gender.n: 'parvī'},
      Number.p: {Gender.m: 'parvōrum', Gender.f: 'parvārum', Gender.n: 'parvōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'parvō', Gender.f: 'parvae', Gender.n: 'parvō'},
      Number.p: {Gender.m: 'parvīs', Gender.f: 'parvīs', Gender.n: 'parvīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'parvō', Gender.f: 'parvā', Gender.n: 'parvō'},
      Number.p: {Gender.m: 'parvīs', Gender.f: 'parvīs', Gender.n: 'parvīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'parve', Gender.f: 'parva', Gender.n: 'parvum'},
      Number.p: {Gender.m: 'parvī', Gender.f: 'parvae', Gender.n: 'parva'}
    }
  },
);

LatinAdjective fortis = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'fortis', Gender.f: 'fortis', Gender.n: 'forte'},
      Number.p: {Gender.m: 'fortēs', Gender.f: 'fortēs', Gender.n: 'fortia'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'fortem', Gender.f: 'fortem', Gender.n: 'forte'},
      Number.p: {Gender.m: 'fortēs', Gender.f: 'fortēs', Gender.n: 'fortia'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'fortis', Gender.f: 'fortis', Gender.n: 'fortis'},
      Number.p: {Gender.m: 'fortium', Gender.f: 'fortium', Gender.n: 'fortium'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'fortī', Gender.f: 'fortī', Gender.n: 'fortī'},
      Number.p: {Gender.m: 'fortibus', Gender.f: 'fortibus', Gender.n: 'fortibus'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'fortī', Gender.f: 'fortī', Gender.n: 'fortī'},
      Number.p: {Gender.m: 'fortibus', Gender.f: 'fortibus', Gender.n: 'fortibus'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'fortis', Gender.f: 'fortis', Gender.n: 'forte'},
      Number.p: {Gender.m: 'fortēs', Gender.f: 'fortēs', Gender.n: 'fortia'}
    }
  },
);

LatinAdjective latus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'latus', Gender.f: 'lata', Gender.n: 'latum'},
      Number.p: {Gender.m: 'latī', Gender.f: 'latae', Gender.n: 'lata'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'latum', Gender.f: 'latam', Gender.n: 'latum'},
      Number.p: {Gender.m: 'latōs', Gender.f: 'latās', Gender.n: 'lata'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'latī', Gender.f: 'latae', Gender.n: 'latī'},
      Number.p: {Gender.m: 'latōrum', Gender.f: 'latārum', Gender.n: 'latōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'latō', Gender.f: 'latae', Gender.n: 'latō'},
      Number.p: {Gender.m: 'latīs', Gender.f: 'latīs', Gender.n: 'latīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'latō', Gender.f: 'latā', Gender.n: 'latō'},
      Number.p: {Gender.m: 'latīs', Gender.f: 'latīs', Gender.n: 'latīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'late', Gender.f: 'lata', Gender.n: 'latum'},
      Number.p: {Gender.m: 'latī', Gender.f: 'latae', Gender.n: 'lata'}
    }
  },
);
LatinAdjective celer = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'celer', Gender.f: 'celer', Gender.n: 'celere'},
      Number.p: {Gender.m: 'celerēs', Gender.f: 'celerēs', Gender.n: 'celeria'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'celerem', Gender.f: 'celerem', Gender.n: 'celere'},
      Number.p: {Gender.m: 'celerēs', Gender.f: 'celerēs', Gender.n: 'celeria'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'celeris', Gender.f: 'celeris', Gender.n: 'celeris'},
      Number.p: {Gender.m: 'celerium', Gender.f: 'celerium', Gender.n: 'celerium'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'celerī', Gender.f: 'celerī', Gender.n: 'celerī'},
      Number.p: {Gender.m: 'celeribus', Gender.f: 'celeribus', Gender.n: 'celeribus'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'celerī', Gender.f: 'celerī', Gender.n: 'celerī'},
      Number.p: {Gender.m: 'celeribus', Gender.f: 'celeribus', Gender.n: 'celeribus'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'celer', Gender.f: 'celer', Gender.n: 'celere'},
      Number.p: {Gender.m: 'celerēs', Gender.f: 'celerēs', Gender.n: 'celeria'}
    }
  },
);
LatinAdjective altus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'altus', Gender.f: 'alta', Gender.n: 'altum'},
      Number.p: {Gender.m: 'altī', Gender.f: 'altae', Gender.n: 'alta'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'altum', Gender.f: 'altam', Gender.n: 'altum'},
      Number.p: {Gender.m: 'altōs', Gender.f: 'altās', Gender.n: 'alta'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'altī', Gender.f: 'altae', Gender.n: 'altī'},
      Number.p: {Gender.m: 'altōrum', Gender.f: 'altārum', Gender.n: 'altōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'altō', Gender.f: 'altae', Gender.n: 'altō'},
      Number.p: {Gender.m: 'altīs', Gender.f: 'altīs', Gender.n: 'altīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'altō', Gender.f: 'altā', Gender.n: 'altō'},
      Number.p: {Gender.m: 'altīs', Gender.f: 'altīs', Gender.n: 'altīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'alte', Gender.f: 'alta', Gender.n: 'altum'},
      Number.p: {Gender.m: 'altī', Gender.f: 'altae', Gender.n: 'alta'}
    }
  },
);
LatinAdjective gravis = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'gravis', Gender.f: 'gravis', Gender.n: 'grave'},
      Number.p: {Gender.m: 'gravēs', Gender.f: 'gravēs', Gender.n: 'gravia'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'gravem', Gender.f: 'gravem', Gender.n: 'grave'},
      Number.p: {Gender.m: 'gravēs', Gender.f: 'gravēs', Gender.n: 'gravia'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'gravis', Gender.f: 'gravis', Gender.n: 'gravis'},
      Number.p: {Gender.m: 'gravium', Gender.f: 'gravium', Gender.n: 'gravium'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'gravī', Gender.f: 'gravī', Gender.n: 'gravī'},
      Number.p: {Gender.m: 'gravis', Gender.f: 'gravis', Gender.n: 'gravis'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'gravī', Gender.f: 'gravī', Gender.n: 'gravī'},
      Number.p: {Gender.m: 'gravis', Gender.f: 'gravis', Gender.n: 'gravis'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'gravis', Gender.f: 'gravis', Gender.n: 'grave'},
      Number.p: {Gender.m: 'gravēs', Gender.f: 'gravēs', Gender.n: 'gravia'}
    }
  },
);
LatinAdjective brevis = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'brevis', Gender.f: 'brevis', Gender.n: 'breve'},
      Number.p: {Gender.m: 'brevēs', Gender.f: 'brevēs', Gender.n: 'brevia'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'brevem', Gender.f: 'brevem', Gender.n: 'breve'},
      Number.p: {Gender.m: 'brevēs', Gender.f: 'brevēs', Gender.n: 'brevia'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'brevis', Gender.f: 'brevis', Gender.n: 'brevis'},
      Number.p: {Gender.m: 'brevium', Gender.f: 'brevium', Gender.n: 'brevium'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'brevī', Gender.f: 'brevī', Gender.n: 'brevī'},
      Number.p: {Gender.m: 'brevibus', Gender.f: 'brevibus', Gender.n: 'brevibus'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'brevī', Gender.f: 'brevī', Gender.n: 'brevī'},
      Number.p: {Gender.m: 'brevibus', Gender.f: 'brevibus', Gender.n: 'brevibus'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'brevis', Gender.f: 'brevis', Gender.n: 'breve'},
      Number.p: {Gender.m: 'brevēs', Gender.f: 'brevēs', Gender.n: 'brevia'}
    }
  },
);
LatinAdjective acer = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'acer', Gender.f: 'acer', Gender.n: 'acre'},
      Number.p: {Gender.m: 'acrēs', Gender.f: 'acrēs', Gender.n: 'acria'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'acrem', Gender.f: 'acrem', Gender.n: 'acre'},
      Number.p: {Gender.m: 'acrēs', Gender.f: 'acrēs', Gender.n: 'acria'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'acris', Gender.f: 'acris', Gender.n: 'acris'},
      Number.p: {Gender.m: 'acrium', Gender.f: 'acrium', Gender.n: 'acrium'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'acrī', Gender.f: 'acrī', Gender.n: 'acrī'},
      Number.p: {Gender.m: 'acribus', Gender.f: 'acribus', Gender.n: 'acribus'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'acrī', Gender.f: 'acrī', Gender.n: 'acrī'},
      Number.p: {Gender.m: 'acribus', Gender.f: 'acribus', Gender.n: 'acribus'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'acer', Gender.f: 'acer', Gender.n: 'acre'},
      Number.p: {Gender.m: 'acrēs', Gender.f: 'acrēs', Gender.n: 'acria'}
    }
  },
);
LatinAdjective dulcis = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'dulcis', Gender.f: 'dulcis', Gender.n: 'dulce'},
      Number.p: {Gender.m: 'dulcēs', Gender.f: 'dulcēs', Gender.n: 'dulcia'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'dulcem', Gender.f: 'dulcem', Gender.n: 'dulce'},
      Number.p: {Gender.m: 'dulcēs', Gender.f: 'dulcēs', Gender.n: 'dulcia'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'dulcis', Gender.f: 'dulcis', Gender.n: 'dulcis'},
      Number.p: {Gender.m: 'dulcium', Gender.f: 'dulcium', Gender.n: 'dulcium'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'dulcī', Gender.f: 'dulcī', Gender.n: 'dulcī'},
      Number.p: {Gender.m: 'dulcibus', Gender.f: 'dulcibus', Gender.n: 'dulcibus'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'dulcī', Gender.f: 'dulcī', Gender.n: 'dulcī'},
      Number.p: {Gender.m: 'dulcibus', Gender.f: 'dulcibus', Gender.n: 'dulcibus'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'dulcis', Gender.f: 'dulcis', Gender.n: 'dulce'},
      Number.p: {Gender.m: 'dulcēs', Gender.f: 'dulcēs', Gender.n: 'dulcia'}
    }
  },
);
LatinAdjective longus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'longus', Gender.f: 'longa', Gender.n: 'longum'},
      Number.p: {Gender.m: 'longī', Gender.f: 'longae', Gender.n: 'longa'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'longum', Gender.f: 'longam', Gender.n: 'longum'},
      Number.p: {Gender.m: 'longōs', Gender.f: 'longās', Gender.n: 'longa'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'longī', Gender.f: 'longae', Gender.n: 'longī'},
      Number.p: {Gender.m: 'longōrum', Gender.f: 'longārum', Gender.n: 'longōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'longō', Gender.f: 'longae', Gender.n: 'longō'},
      Number.p: {Gender.m: 'longīs', Gender.f: 'longīs', Gender.n: 'longīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'longō', Gender.f: 'longā', Gender.n: 'longō'},
      Number.p: {Gender.m: 'longīs', Gender.f: 'longīs', Gender.n: 'longīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'longe', Gender.f: 'longa', Gender.n: 'longum'},
      Number.p: {Gender.m: 'longī', Gender.f: 'longae', Gender.n: 'longa'}
    }
  },
);
LatinAdjective curvus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'curvus', Gender.f: 'curva', Gender.n: 'curvum'},
      Number.p: {Gender.m: 'curvī', Gender.f: 'curvae', Gender.n: 'curva'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'curvum', Gender.f: 'curvam', Gender.n: 'curvum'},
      Number.p: {Gender.m: 'curvōs', Gender.f: 'curvās', Gender.n: 'curva'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'curvī', Gender.f: 'curvae', Gender.n: 'curvī'},
      Number.p: {Gender.m: 'curvōrum', Gender.f: 'curvārum', Gender.n: 'curvōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'curvō', Gender.f: 'curvae', Gender.n: 'curvō'},
      Number.p: {Gender.m: 'curvīs', Gender.f: 'curvīs', Gender.n: 'curvīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'curvō', Gender.f: 'curvā', Gender.n: 'curvō'},
      Number.p: {Gender.m: 'curvīs', Gender.f: 'curvīs', Gender.n: 'curvīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'curve', Gender.f: 'curva', Gender.n: 'curvum'},
      Number.p: {Gender.m: 'curvī', Gender.f: 'curvae', Gender.n: 'curva'}
    }
  },
);
LatinAdjective liber = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'līber', Gender.f: 'lībera', Gender.n: 'līberum'},
      Number.p: {Gender.m: 'līberī', Gender.f: 'līberae', Gender.n: 'lībera'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'līberum', Gender.f: 'līberam', Gender.n: 'līberum'},
      Number.p: {Gender.m: 'līberōs', Gender.f: 'līberās', Gender.n: 'lībera'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'līberī', Gender.f: 'līberae', Gender.n: 'līberī'},
      Number.p: {Gender.m: 'līberōrum', Gender.f: 'līberārum', Gender.n: 'līberōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'līberō', Gender.f: 'līberae', Gender.n: 'līberō'},
      Number.p: {Gender.m: 'līberīs', Gender.f: 'līberīs', Gender.n: 'līberīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'līberō', Gender.f: 'līberā', Gender.n: 'līberō'},
      Number.p: {Gender.m: 'līberīs', Gender.f: 'līberīs', Gender.n: 'līberīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'līber', Gender.f: 'lībera', Gender.n: 'līberum'},
      Number.p: {Gender.m: 'līberī', Gender.f: 'līberae', Gender.n: 'lībera'}
    }
  },
);
LatinAdjective rectus = const LatinAdjective(
  declension: {
    Case.nom: {
      Number.s: {Gender.m: 'rectus', Gender.f: 'recta', Gender.n: 'rectum'},
      Number.p: {Gender.m: 'rectī', Gender.f: 'rectae', Gender.n: 'recta'}
    },
    Case.acc: {
      Number.s: {Gender.m: 'rectum', Gender.f: 'rectam', Gender.n: 'rectum'},
      Number.p: {Gender.m: 'rectōs', Gender.f: 'rectās', Gender.n: 'recta'}
    },
    Case.gen: {
      Number.s: {Gender.m: 'rectī', Gender.f: 'rectae', Gender.n: 'rectī'},
      Number.p: {Gender.m: 'rectōrum', Gender.f: 'rectārum', Gender.n: 'rectōrum'}
    },
    Case.dat: {
      Number.s: {Gender.m: 'rectō', Gender.f: 'rectae', Gender.n: 'rectō'},
      Number.p: {Gender.m: 'rectīs', Gender.f: 'rectīs', Gender.n: 'rectīs'}
    },
    Case.abl: {
      Number.s: {Gender.m: 'rectō', Gender.f: 'rectā', Gender.n: 'rectō'},
      Number.p: {Gender.m: 'rectīs', Gender.f: 'rectīs', Gender.n: 'rectīs'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'recte', Gender.f: 'recta', Gender.n: 'rectum'},
      Number.p: {Gender.m: 'rectī', Gender.f: 'rectae', Gender.n: 'recta'}
    }
  },
);
