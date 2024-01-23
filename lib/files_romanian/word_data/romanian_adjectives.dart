import 'package:colorguesser/core/enums.dart';

import '../romanian_classes.dart';

List<RomanianAdjective> romanianAdjectives = [
  romano,
  francez,
  italian,
  portughez,
  roman,
  spaniol,
  mare,
  mic,
  nou,
  vechi,
  scund,
  fericit,
  trist,
  frumos,
  bun,
];

RomanianAdjective romano = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'român', Gender.f: 'română', Gender.n: 'român'},
      Number.p: {Gender.m: 'români', Gender.f: 'române', Gender.n: 'române'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'român', Gender.f: 'române', Gender.n: 'român'},
      Number.p: {Gender.m: 'români', Gender.f: 'române', Gender.n: 'române'}
    },
    //vocative case is just same for nom
    Case.voc: {
      Number.s: {Gender.m: 'român', Gender.f: 'română', Gender.n: 'român'},
      Number.p: {Gender.m: 'români', Gender.f: 'române', Gender.n: 'române'}
    },
  },
);
RomanianAdjective francez = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'francez', Gender.f: 'franceză', Gender.n: 'francez'},
      Number.p: {Gender.m: 'francezi', Gender.f: 'franceze', Gender.n: 'franceze'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'francez', Gender.f: 'franceze', Gender.n: 'francez'},
      Number.p: {Gender.m: 'francezi', Gender.f: 'franceze', Gender.n: 'franceze'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'francez', Gender.f: 'franceză', Gender.n: 'francez'},
      Number.p: {Gender.m: 'francezi', Gender.f: 'franceze', Gender.n: 'franceze'}
    },
  },
);
RomanianAdjective italian = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'italian', Gender.f: 'italiană', Gender.n: 'italian'},
      Number.p: {Gender.m: 'italieni', Gender.f: 'italiene', Gender.n: 'italiene'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'italian', Gender.f: 'italiene', Gender.n: 'italian'},
      Number.p: {Gender.m: 'italieni', Gender.f: 'italiene', Gender.n: 'italiene'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'italian', Gender.f: 'italiană', Gender.n: 'italian'},
      Number.p: {Gender.m: 'italieni', Gender.f: 'italiene', Gender.n: 'italiene'}
    },
  },
);
RomanianAdjective portughez = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'portughez', Gender.f: 'portugheză', Gender.n: 'portughez'},
      Number.p: {Gender.m: 'portughezi', Gender.f: 'portugheze', Gender.n: 'portugheze'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'portughez', Gender.f: 'portugheze', Gender.n: 'portughez'},
      Number.p: {Gender.m: 'portughezi', Gender.f: 'portugheze', Gender.n: 'portugheze'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'portughez', Gender.f: 'portugheză', Gender.n: 'portughez'},
      Number.p: {Gender.m: 'portughezi', Gender.f: 'portugheze', Gender.n: 'portugheze'}
    },
  },
);
RomanianAdjective roman = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'roman', Gender.f: 'romană', Gender.n: 'roman'},
      Number.p: {Gender.m: 'romani', Gender.f: 'romane', Gender.n: 'romane'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'roman', Gender.f: 'romane', Gender.n: 'roman'},
      Number.p: {Gender.m: 'romani', Gender.f: 'romane', Gender.n: 'romane'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'roman', Gender.f: 'romană', Gender.n: 'roman'},
      Number.p: {Gender.m: 'romani', Gender.f: 'romane', Gender.n: 'romane'}
    },
  },
);
RomanianAdjective spaniol = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'spaniol', Gender.f: 'spaniolă', Gender.n: 'spaniol'},
      Number.p: {Gender.m: 'spanioli', Gender.f: 'spaniole', Gender.n: 'spaniole'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'spaniol', Gender.f: 'spaniole', Gender.n: 'spaniol'},
      Number.p: {Gender.m: 'spanioli', Gender.f: 'spaniole', Gender.n: 'spaniole'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'spaniol', Gender.f: 'spaniolă', Gender.n: 'spaniol'},
      Number.p: {Gender.m: 'spanioli', Gender.f: 'spaniole', Gender.n: 'spaniole'}
    },
  },
);
RomanianAdjective mare = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'mare', Gender.f: 'mare', Gender.n: 'mare'},
      Number.p: {Gender.m: 'mari', Gender.f: 'mari', Gender.n: 'mari'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'mare', Gender.f: 'mari', Gender.n: 'mare'},
      Number.p: {Gender.m: 'mari', Gender.f: 'mari', Gender.n: 'mari'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'mare', Gender.f: 'mare', Gender.n: 'mare'},
      Number.p: {Gender.m: 'mari', Gender.f: 'mari', Gender.n: 'mari'}
    },
  },
);
RomanianAdjective mic = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'mic', Gender.f: 'mică', Gender.n: 'mic'},
      Number.p: {Gender.m: 'mici', Gender.f: 'mici', Gender.n: 'mici'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'mic', Gender.f: 'mici', Gender.n: 'mic'},
      Number.p: {Gender.m: 'mici', Gender.f: 'mici', Gender.n: 'mici'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'mic', Gender.f: 'mică', Gender.n: 'mic'},
      Number.p: {Gender.m: 'mici', Gender.f: 'mici', Gender.n: 'mici'}
    },
  },
);
RomanianAdjective nou = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'nou', Gender.f: 'nouă', Gender.n: 'nou'},
      Number.p: {Gender.m: 'noi', Gender.f: 'noi', Gender.n: 'noi'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'nou', Gender.f: 'noi', Gender.n: 'nou'},
      Number.p: {Gender.m: 'noi', Gender.f: 'noi', Gender.n: 'noi'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'nou', Gender.f: 'nouă', Gender.n: 'nou'},
      Number.p: {Gender.m: 'noi', Gender.f: 'noi', Gender.n: 'noi'}
    },
  },
);
RomanianAdjective vechi = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'vechi', Gender.f: 'veche', Gender.n: 'vechi'},
      Number.p: {Gender.m: 'vechi', Gender.f: 'vechi', Gender.n: 'vechi'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'vechi', Gender.f: 'vechi', Gender.n: 'vechi'},
      Number.p: {Gender.m: 'vechi', Gender.f: 'vechi', Gender.n: 'vechi'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'vechi', Gender.f: 'veche', Gender.n: 'vechi'},
      Number.p: {Gender.m: 'vechi', Gender.f: 'vechi', Gender.n: 'vechi'}
    },
  },
);
RomanianAdjective scund = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'scund', Gender.f: 'scundă', Gender.n: 'scund'},
      Number.p: {Gender.m: 'scunzi', Gender.f: 'scunde', Gender.n: 'scunde'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'scund', Gender.f: 'scunde', Gender.n: 'scund'},
      Number.p: {Gender.m: 'scunzi', Gender.f: 'scunde', Gender.n: 'scunde'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'scund', Gender.f: 'scundă', Gender.n: 'scund'},
      Number.p: {Gender.m: 'scunzi', Gender.f: 'scunde', Gender.n: 'scunde'}
    },
  },
);
RomanianAdjective fericit = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'fericit', Gender.f: 'fericită', Gender.n: 'fericit'},
      Number.p: {Gender.m: 'fericiți', Gender.f: 'fericite', Gender.n: 'fericite'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'fericit', Gender.f: 'fericite', Gender.n: 'fericit'},
      Number.p: {Gender.m: 'fericiți', Gender.f: 'fericite', Gender.n: 'fericite'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'fericit', Gender.f: 'fericită', Gender.n: 'fericit'},
      Number.p: {Gender.m: 'fericiți', Gender.f: 'fericite', Gender.n: 'fericite'}
    },
  },
);
RomanianAdjective trist = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'trist', Gender.f: 'tristă', Gender.n: 'trist'},
      Number.p: {Gender.m: 'triști', Gender.f: 'triste', Gender.n: 'triste'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'trist', Gender.f: 'triste', Gender.n: 'trist'},
      Number.p: {Gender.m: 'triști', Gender.f: 'triste', Gender.n: 'triste'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'trist', Gender.f: 'tristă', Gender.n: 'trist'},
      Number.p: {Gender.m: 'triști', Gender.f: 'triste', Gender.n: 'triste'}
    },
  },
);
RomanianAdjective frumos = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'frumos', Gender.f: 'frumoasă', Gender.n: 'frumos'},
      Number.p: {Gender.m: 'frumoși', Gender.f: 'frumoase', Gender.n: 'frumoase'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'frumos', Gender.f: 'frumoase', Gender.n: 'frumos'},
      Number.p: {Gender.m: 'frumoși', Gender.f: 'frumoase', Gender.n: 'frumoase'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'frumos', Gender.f: 'frumoasă', Gender.n: 'frumos'},
      Number.p: {Gender.m: 'frumoși', Gender.f: 'frumoase', Gender.n: 'frumoase'}
    },
  },
);
RomanianAdjective bun = const RomanianAdjective(
  declension: {
    Case.nomacc: {
      Number.s: {Gender.m: 'bun', Gender.f: 'bună', Gender.n: 'bun'},
      Number.p: {Gender.m: 'buni', Gender.f: 'bune', Gender.n: 'bune'}
    },
    Case.gendat: {
      Number.s: {Gender.m: 'bun', Gender.f: 'bune', Gender.n: 'bun'},
      Number.p: {Gender.m: 'buni', Gender.f: 'bune', Gender.n: 'bune'}
    },
    Case.voc: {
      Number.s: {Gender.m: 'bun', Gender.f: 'bună', Gender.n: 'bun'},
      Number.p: {Gender.m: 'buni', Gender.f: 'bune', Gender.n: 'bune'}
    },
  },
);
