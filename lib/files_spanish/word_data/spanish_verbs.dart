import 'package:colorguesser/core/enums.dart';

import '../spanish_classes.dart';

List<SpanishVerb> spanishVerbs = [
  ser,
];

SpanishVerb ser = SpanishVerb(
  infinitive: 'ser',
  gerund: 'siendo',
  participles: {
    //this would be weird to decline but whatever
    Tense.perfectRomance: const SpanishAdjective(
      declension: {
        Number.s: {Gender.m: 'sido', Gender.f: 'sida'},
        Number.p: {Gender.m: 'sidos', Gender.f: 'sidas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'soy', Person.second: 'eres', Person.third: 'es'},
        Number.p: {Person.first: 'somos', Person.second: 'sois', Person.third: 'son'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'era', Person.second: 'eras', Person.third: 'era'},
        Number.p: {Person.first: 'eramos', Person.second: 'erais', Person.third: 'eran'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'seré', Person.second: 'serás', Person.third: 'será'},
        Number.p: {Person.first: 'seremos', Person.second: 'seréis', Person.third: 'serán'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fui', Person.second: 'fuiste', Person.third: 'fue'},
        Number.p: {Person.first: 'fuimos', Person.second: 'fuisteis', Person.third: 'fueron'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'sería', Person.second: 'serísa', Person.third: 'sería'},
        Number.p: {Person.first: 'seríamos', Person.second: 'seríais', Person.third: 'serían'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sea', Person.second: 'seas', Person.third: 'sea'},
        Number.p: {Person.first: 'seamos', Person.second: 'seáis', Person.third: 'sean'},
      },
      Tense.imperfectSpanishRa: {
        Number.s: {Person.first: 'fuera', Person.second: 'fueras', Person.third: 'fuera'},
        Number.p: {Person.first: 'fuéramos', Person.second: 'fuerais', Person.third: 'fueran'},
      },
      Tense.imperfectSpanishSe: {
        Number.s: {Person.first: 'fuese', Person.second: 'fueses', Person.third: 'fuese'},
        Number.p: {Person.first: 'fuésemos', Person.second: 'fueseis', Person.third: 'fuesen'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'fuere', Person.second: 'fueres', Person.third: 'fuere'},
        Number.p: {Person.first: 'fuéremos', Person.second: 'fuereis', Person.third: 'fueren'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sé', Person.third: 'sea'},
        Number.p: {Person.first: 'seamos', Person.second: 'sed', Person.third: 'sean'},
      },
    },
  },
);
SpanishAuxiliaryVerb haber = SpanishAuxiliaryVerb(
  infinitive: 'haber',
  gerund: 'habiendo',
  participles: {
    Tense.perfectRomance: const SpanishAdjective(
      declension: {
        Number.s: {Gender.m: 'habido', Gender.f: 'habida'},
        Number.p: {Gender.m: 'habidos', Gender.f: 'habidas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'he', Person.second: 'has', Person.third: 'ha'},
        Number.p: {Person.first: 'hemos', Person.second: 'habéis', Person.third: 'han'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'había', Person.second: 'habías', Person.third: 'había'},
        Number.p: {Person.first: 'habíamos', Person.second: 'habíais', Person.third: 'habían'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'habré', Person.second: 'habrás', Person.third: 'habrá'},
        Number.p: {Person.first: 'habremos', Person.second: 'habréis', Person.third: 'habrán'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'hube', Person.second: 'hubiste', Person.third: 'hubo'},
        Number.p: {Person.first: 'hubimos', Person.second: 'hubisteis', Person.third: 'hubieron'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'habría', Person.second: 'habrías', Person.third: 'habría'},
        Number.p: {Person.first: 'habríamos', Person.second: 'habríais', Person.third: 'habrían'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'haya', Person.second: 'hayas', Person.third: 'haya'},
        Number.p: {Person.first: 'hayamos', Person.second: 'hayáis', Person.third: 'hayan'},
      },
      Tense.imperfectSpanishRa: {
        Number.s: {Person.first: 'hubiera', Person.second: 'hubieras', Person.third: 'hubiera'},
        Number.p: {Person.first: 'hubiéramos', Person.second: 'hubierais', Person.third: 'hubieran'},
      },
      Tense.imperfectSpanishSe: {
        Number.s: {Person.first: 'hubiese', Person.second: 'hubieses', Person.third: 'hubiese'},
        Number.p: {Person.first: 'hubiésemos', Person.second: 'hubieseis', Person.third: 'hubiesen'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'hubiere', Person.second: 'hubieres', Person.third: 'hubiere'},
        Number.p: {Person.first: 'hubiéremos', Person.second: 'hubiereis', Person.third: 'hubieren'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'he', Person.third: 'haya'},
        Number.p: {Person.first: 'hayamos', Person.second: 'habed', Person.third: 'hayan'},
      },
    },
  },
);
