import 'package:colorguesser/core/enums.dart';

import '../portuguese_classes.dart';

List<PortugueseAdjective> portugueseAdjectives = [
  romano,
  frances,
  italiano,
  portugues,
  romeno,
  espanhol,
  grande,
  pequeno,
  novo,
  velho,
  curto,
  feliz,
  triste,
  bonito,
  bom,
];

PortugueseAdjective romano = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'romano', Gender.f: 'romana'},
    Number.p: {Gender.m: 'romanos', Gender.f: 'romanas'}
  },
);

PortugueseAdjective frances = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'francês', Gender.f: 'francesa'},
    Number.p: {Gender.m: 'franceses', Gender.f: 'francesas'}
  },
);

PortugueseAdjective italiano = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'italiano', Gender.f: 'italiana'},
    Number.p: {Gender.m: 'italianos', Gender.f: 'italianas'}
  },
);

PortugueseAdjective portugues = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'português', Gender.f: 'portuguesa'},
    Number.p: {Gender.m: 'portugueses', Gender.f: 'portuguesas'}
  },
);

PortugueseAdjective romeno = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'romeno', Gender.f: 'romena'},
    Number.p: {Gender.m: 'romenos', Gender.f: 'romenas'}
  },
);

PortugueseAdjective espanhol = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'espanhol', Gender.f: 'espanhola'},
    Number.p: {Gender.m: 'espanhóis', Gender.f: 'espanholas'}
  },
);

PortugueseAdjective grande = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'grande', Gender.f: 'grande'},
    Number.p: {Gender.m: 'grandes', Gender.f: 'grandes'}
  },
);

PortugueseAdjective pequeno = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'pequeno', Gender.f: 'pequena'},
    Number.p: {Gender.m: 'pequenos', Gender.f: 'pequenas'}
  },
);

PortugueseAdjective novo = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'novo', Gender.f: 'nova'},
    Number.p: {Gender.m: 'novos', Gender.f: 'novas'}
  },
);

PortugueseAdjective velho = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'velho', Gender.f: 'velha'},
    Number.p: {Gender.m: 'velhos', Gender.f: 'velhas'}
  },
);

PortugueseAdjective curto = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'curto', Gender.f: 'curta'},
    Number.p: {Gender.m: 'curtos', Gender.f: 'curtas'}
  },
);

PortugueseAdjective feliz = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'feliz', Gender.f: 'feliz'},
    Number.p: {Gender.m: 'felizes', Gender.f: 'felizes'}
  },
);

PortugueseAdjective triste = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'triste', Gender.f: 'triste'},
    Number.p: {Gender.m: 'tristes', Gender.f: 'tristes'}
  },
);

PortugueseAdjective bonito = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'bonito', Gender.f: 'bonita'},
    Number.p: {Gender.m: 'bonitos', Gender.f: 'bonitas'}
  },
);

PortugueseAdjective bom = const PortugueseAdjective(
  declension: {
    Number.s: {Gender.m: 'bom', Gender.f: 'boa'},
    Number.p: {Gender.m: 'bons', Gender.f: 'boas'}
  },
);
