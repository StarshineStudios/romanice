import 'package:colorguesser/core/enums.dart';

import '../latin_classes.dart';

List<LatinNoun> latinNouns = [
  homo,
  vir,
  femina,

  puer,
  puella,

  feles,
  canis,

  liber,
  arbor,

  stella,
  aedificium,

  bellum,
  pax,
  tempus,
  domus,
  dies,
  aqua,
  via,
  fructus,
  // Add the rest of the new nouns here
];

LatinNoun puella = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'puella',
      Number.p: 'puellae',
    },
    Case.acc: {
      Number.s: 'puellam',
      Number.p: 'puellās',
    },
    Case.gen: {
      Number.s: 'puellae',
      Number.p: 'puellārum',
    },
    Case.dat: {
      Number.s: 'puellae',
      Number.p: 'puellīs',
    },
    Case.abl: {
      Number.s: 'puellā',
      Number.p: 'puellīs',
    },
    Case.voc: {
      Number.s: 'puella',
      Number.p: 'puellae',
    },
  },
);

LatinNoun feles = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'fēlēs',
      Number.p: 'fēlēs',
    },
    Case.acc: {
      Number.s: 'fēlēs',
      Number.p: 'fēlēs',
    },
    Case.gen: {
      Number.s: 'fēlis',
      Number.p: 'fēlium',
    },
    Case.dat: {
      Number.s: 'fēlī',
      Number.p: 'fēlibus',
    },
    Case.abl: {
      Number.s: 'fēle',
      Number.p: 'fēlibus',
    },
    Case.voc: {
      Number.s: 'fēlēs',
      Number.p: 'fēlēs',
    },
  },
);

LatinNoun femina = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'fēmina',
      Number.p: 'fēminae',
    },
    Case.acc: {
      Number.s: 'fēminam',
      Number.p: 'fēminās',
    },
    Case.gen: {
      Number.s: 'fēminae',
      Number.p: 'fēminārum',
    },
    Case.dat: {
      Number.s: 'fēminae',
      Number.p: 'fēminīs',
    },
    Case.abl: {
      Number.s: 'fēminā',
      Number.p: 'fēminīs',
    },
    Case.voc: {
      Number.s: 'fēmina',
      Number.p: 'fēminae',
    },
  },
);

LatinNoun stella = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'stēlla',
      Number.p: 'stēllae',
    },
    Case.acc: {
      Number.s: 'stēllam',
      Number.p: 'stēllās',
    },
    Case.gen: {
      Number.s: 'stēllae',
      Number.p: 'stēllārum',
    },
    Case.dat: {
      Number.s: 'stēllae',
      Number.p: 'stēllīs',
    },
    Case.abl: {
      Number.s: 'stēllā',
      Number.p: 'stēllīs',
    },
    Case.voc: {
      Number.s: 'stēlla',
      Number.p: 'stēllae',
    },
  },
);

LatinNoun vir = const LatinNoun(
  gender: Gender.m,
  declension: {
    Case.nom: {
      Number.s: 'vir',
      Number.p: 'virī',
    },
    Case.acc: {
      Number.s: 'virum',
      Number.p: 'virōs',
    },
    Case.gen: {
      Number.s: 'virī',
      Number.p: 'virōrum',
    },
    Case.dat: {
      Number.s: 'virō',
      Number.p: 'virīs',
    },
    Case.abl: {
      Number.s: 'virō',
      Number.p: 'virīs',
    },
    Case.voc: {
      Number.s: 'vir',
      Number.p: 'virī',
    },
  },
);

LatinNoun puer = const LatinNoun(
  gender: Gender.m,
  declension: {
    Case.nom: {
      Number.s: 'puer',
      Number.p: 'puerī',
    },
    Case.acc: {
      Number.s: 'puerum',
      Number.p: 'puerōs',
    },
    Case.gen: {
      Number.s: 'puerī',
      Number.p: 'puerōrum',
    },
    Case.dat: {
      Number.s: 'puerō',
      Number.p: 'puerīs',
    },
    Case.abl: {
      Number.s: 'puerō',
      Number.p: 'puerīs',
    },
    Case.voc: {
      Number.s: 'puer',
      Number.p: 'puerī',
    },
  },
);

LatinNoun bellum = const LatinNoun(
  gender: Gender.n,
  declension: {
    Case.nom: {
      Number.s: 'bellum',
      Number.p: 'bella',
    },
    Case.acc: {
      Number.s: 'bellum',
      Number.p: 'bella',
    },
    Case.gen: {
      Number.s: 'bellī',
      Number.p: 'bellōrum',
    },
    Case.dat: {
      Number.s: 'bellō',
      Number.p: 'bellīs',
    },
    Case.abl: {
      Number.s: 'bellō',
      Number.p: 'bellīs',
    },
    Case.voc: {
      Number.s: 'bellum',
      Number.p: 'bella',
    },
  },
);
LatinNoun aedificium = const LatinNoun(
  gender: Gender.n,
  declension: {
    Case.nom: {
      Number.s: 'aedificium',
      Number.p: 'aedificia',
    },
    Case.acc: {
      Number.s: 'aedificium',
      Number.p: 'aedificia',
    },
    Case.gen: {
      Number.s: 'aedificiī',
      Number.p: 'aedificiōrum',
    },
    Case.dat: {
      Number.s: 'aedificiō',
      Number.p: 'aedificiīs',
    },
    Case.abl: {
      Number.s: 'aedificiō',
      Number.p: 'aedificiīs',
    },
    Case.voc: {
      Number.s: 'aedificium',
      Number.p: 'aedificia',
    },
  },
);
LatinNoun canis = const LatinNoun(
  gender: Gender.m,
  declension: {
    Case.nom: {
      Number.s: 'canis',
      Number.p: 'canēs',
    },
    Case.acc: {
      Number.s: 'canem',
      Number.p: 'canēs',
    },
    Case.gen: {
      Number.s: 'canis',
      Number.p: 'canum',
    },
    Case.dat: {
      Number.s: 'canī',
      Number.p: 'canibus',
    },
    Case.abl: {
      Number.s: 'cane',
      Number.p: 'canibus',
    },
    Case.voc: {
      Number.s: 'canis',
      Number.p: 'canēs',
    },
  },
);
LatinNoun pax = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'pāx',
      Number.p: 'pācēs',
    },
    Case.acc: {
      Number.s: 'pācem',
      Number.p: 'pācēs',
    },
    Case.gen: {
      Number.s: 'pācis',
      Number.p: 'pācum',
    },
    Case.dat: {
      Number.s: 'pācī',
      Number.p: 'pācibus',
    },
    Case.abl: {
      Number.s: 'pāce',
      Number.p: 'pācibus',
    },
    Case.voc: {
      Number.s: 'pāx',
      Number.p: 'pācēs',
    },
  },
);

LatinNoun homo = const LatinNoun(
  gender: Gender.m,
  declension: {
    Case.nom: {
      Number.s: 'homō',
      Number.p: 'hominēs',
    },
    Case.acc: {
      Number.s: 'hominem',
      Number.p: 'hominēs',
    },
    Case.gen: {
      Number.s: 'hominis',
      Number.p: 'hominum',
    },
    Case.dat: {
      Number.s: 'hominī',
      Number.p: 'hominibus',
    },
    Case.abl: {
      Number.s: 'homine',
      Number.p: 'hominibus',
    },
    Case.voc: {
      Number.s: 'homō',
      Number.p: 'hominēs',
    },
  },
);

LatinNoun tempus = const LatinNoun(
  gender: Gender.n,
  declension: {
    Case.nom: {
      Number.s: 'tempus',
      Number.p: 'tempora',
    },
    Case.acc: {
      Number.s: 'tempus',
      Number.p: 'tempora',
    },
    Case.gen: {
      Number.s: 'temporis',
      Number.p: 'temporum',
    },
    Case.dat: {
      Number.s: 'temporī',
      Number.p: 'temporibus',
    },
    Case.abl: {
      Number.s: 'tempore',
      Number.p: 'temporibus',
    },
    Case.voc: {
      Number.s: 'tempus',
      Number.p: 'tempora',
    },
  },
);

LatinNoun domus = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'domus',
      Number.p: 'domūs',
    },
    Case.acc: {
      Number.s: 'domum',
      Number.p: 'domōs',
    },
    Case.gen: {
      Number.s: 'domūs',
      Number.p: 'domuum',
    },
    Case.dat: {
      Number.s: 'domuī',
      Number.p: 'domibus',
    },
    Case.abl: {
      Number.s: 'domō',
      Number.p: 'domibus',
    },
    Case.voc: {
      Number.s: 'domus',
      Number.p: 'domūs',
    },
    Case.loc: {
      Number.s: 'domī',
      Number.p: 'domibus',
    },
  },
);

LatinNoun dies = const LatinNoun(
  gender: Gender.m,
  declension: {
    Case.nom: {
      Number.s: 'diēs',
      Number.p: 'diēs',
    },
    Case.acc: {
      Number.s: 'diem',
      Number.p: 'diēs',
    },
    Case.gen: {
      Number.s: 'diēī',
      Number.p: 'diērum',
    },
    Case.dat: {
      Number.s: 'diēī',
      Number.p: 'diēbus',
    },
    Case.abl: {
      Number.s: 'diē',
      Number.p: 'diēbus',
    },
    Case.voc: {
      Number.s: 'diēs',
      Number.p: 'diēs',
    },
  },
);

LatinNoun aqua = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'aqua',
      Number.p: 'aquae',
    },
    Case.acc: {
      Number.s: 'aquam',
      Number.p: 'aquās',
    },
    Case.gen: {
      Number.s: 'aquae',
      Number.p: 'aquārum',
    },
    Case.dat: {
      Number.s: 'aquae',
      Number.p: 'aquis',
    },
    Case.abl: {
      Number.s: 'aquā',
      Number.p: 'aquis',
    },
    Case.voc: {
      Number.s: 'aqua',
      Number.p: 'aquae',
    },
  },
);

LatinNoun via = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'via',
      Number.p: 'viae',
    },
    Case.acc: {
      Number.s: 'viam',
      Number.p: 'viās',
    },
    Case.gen: {
      Number.s: 'viae',
      Number.p: 'viārum',
    },
    Case.dat: {
      Number.s: 'viae',
      Number.p: 'viīs',
    },
    Case.abl: {
      Number.s: 'viā',
      Number.p: 'viīs',
    },
    Case.voc: {
      Number.s: 'via',
      Number.p: 'viae',
    },
  },
);

LatinNoun arbor = const LatinNoun(
  gender: Gender.f,
  declension: {
    Case.nom: {
      Number.s: 'arbor',
      Number.p: 'arborēs',
    },
    Case.acc: {
      Number.s: 'arborem',
      Number.p: 'arborēs',
    },
    Case.gen: {
      Number.s: 'arboris',
      Number.p: 'arborum',
    },
    Case.dat: {
      Number.s: 'arbori',
      Number.p: 'arboribus',
    },
    Case.abl: {
      Number.s: 'arbori',
      Number.p: 'arboribus',
    },
    Case.voc: {
      Number.s: 'arbor',
      Number.p: 'arborēs',
    },
  },
);

LatinNoun fructus = const LatinNoun(
  gender: Gender.m,
  declension: {
    Case.nom: {
      Number.s: 'frūctus',
      Number.p: 'frūctūs',
    },
    Case.acc: {
      Number.s: 'frūctum',
      Number.p: 'frūctūs',
    },
    Case.gen: {
      Number.s: 'frūctūs',
      Number.p: 'frūctuum',
    },
    Case.dat: {
      Number.s: 'frūctuī',
      Number.p: 'frūctibus',
    },
    Case.abl: {
      Number.s: 'frūctū',
      Number.p: 'frūctibus',
    },
    Case.voc: {
      Number.s: 'frūctus',
      Number.p: 'frūctūs',
    },
  },
);

LatinNoun liber = const LatinNoun(
  gender: Gender.m,
  declension: {
    Case.nom: {
      Number.s: 'liber',
      Number.p: 'librī',
    },
    Case.acc: {
      Number.s: 'librum',
      Number.p: 'librōs',
    },
    Case.gen: {
      Number.s: 'librī',
      Number.p: 'librōrum',
    },
    Case.dat: {
      Number.s: 'librō',
      Number.p: 'librīs',
    },
    Case.abl: {
      Number.s: 'librō',
      Number.p: 'librīs',
    },
    Case.voc: {
      Number.s: 'liber',
      Number.p: 'librī',
    },
  },
);

// ... Continue adding the rest of the LatinNoun definitions here in a similar format
