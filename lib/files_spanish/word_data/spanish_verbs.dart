import '../spanish_classes.dart';

List<SpanishVerb> spanishVerbs = [
  ser,
];

SpanishVerb ser = SpanishVerb(
  infinitive: 'ser',
  gerund: 'siendo',
  participles: {
    //this would be weird to decline but whatever
    'past': const SpanishAdjective(
      declension: {
        's': {'m': 'sido', 'f': 'sida'},
        'p': {'m': 'sidos', 'f': 'sidas'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'soy', '2': 'eres', '3': 'es'},
        'p': {'1': 'somos', '2': 'sois', '3': 'son'},
      },
      'r imp': {
        's': {'1': 'era', '2': 'eras', '3': 'era'},
        'p': {'1': 'eramos', '2': 'erais', '3': 'eran'},
      },
      'r fut': {
        's': {'1': 'seré', '2': 'serás', '3': 'será'},
        'p': {'1': 'seremos', '2': 'seréis', '3': 'serán'},
      },
      'r perf': {
        's': {'1': 'fui', '2': 'fuiste', '3': 'fue'},
        'p': {'1': 'fuimos', '2': 'fuisteis', '3': 'fueron'},
      },
      'r  cond': {
        's': {'1': 'sería', '2': 'serísa', '3': 'sería'},
        'p': {'1': 'seríamos', '2': 'seríais', '3': 'serían'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'sea', '2': 'seas', '3': 'sea'},
        'p': {'1': 'seamos', '2': 'seáis', '3': 'sean'},
      },
      'r imp ra': {
        's': {'1': 'fuera', '2': 'fueras', '3': 'fuera'},
        'p': {'1': 'fuéramos', '2': 'fuerais', '3': 'fueran'},
      },
      'r imp se': {
        's': {'1': 'fuese', '2': 'fueses', '3': 'fuese'},
        'p': {'1': 'fuésemos', '2': 'fueseis', '3': 'fuesen'},
      },
      'r imp se': {
        's': {'1': 'fuere', '2': 'fueres', '3': 'fuere'},
        'p': {'1': 'fuéremos', '2': 'fuereis', '3': 'fueren'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'sé', '3': 'sea'},
        'p': {'1': 'seamos', '2': 'sed', '3': 'sean'},
      },
    },
  },
);
SpanishAuxiliaryVerb haber = SpanishAuxiliaryVerb(
  infinitive: 'haber',
  gerund: 'habiendo',
  participles: {
    'past': const SpanishAdjective(
      declension: {
        's': {'m': 'habido', 'f': 'habida'},
        'p': {'m': 'habidos', 'f': 'habidas'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'he', '2': 'has', '3': 'ha'},
        'p': {'1': 'hemos', '2': 'habéis', '3': 'han'},
      },
      'r imp': {
        's': {'1': 'había', '2': 'habías', '3': 'había'},
        'p': {'1': 'habíamos', '2': 'habíais', '3': 'habían'},
      },
      'r fut': {
        's': {'1': 'habré', '2': 'habrás', '3': 'habrá'},
        'p': {'1': 'habremos', '2': 'habréis', '3': 'habrán'},
      },
      'r perf': {
        's': {'1': 'hube', '2': 'hubiste', '3': 'hubo'},
        'p': {'1': 'hubimos', '2': 'hubisteis', '3': 'hubieron'},
      },
      'r  cond': {
        's': {'1': 'habría', '2': 'habrías', '3': 'habría'},
        'p': {'1': 'habríamos', '2': 'habríais', '3': 'habrían'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'haya', '2': 'hayas', '3': 'haya'},
        'p': {'1': 'hayamos', '2': 'hayáis', '3': 'hayan'},
      },
      'r imp ra': {
        's': {'1': 'hubiera', '2': 'hubieras', '3': 'hubiera'},
        'p': {'1': 'hubiéramos', '2': 'hubierais', '3': 'hubieran'},
      },
      'r imp se': {
        's': {'1': 'hubiese', '2': 'hubieses', '3': 'hubiese'},
        'p': {'1': 'hubiésemos', '2': 'hubieseis', '3': 'hubiesen'},
      },
      'r imp se': {
        's': {'1': 'hubiere', '2': 'hubieres', '3': 'hubiere'},
        'p': {'1': 'hubiéremos', '2': 'hubiereis', '3': 'hubieren'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'he', '3': 'haya'},
        'p': {'1': 'hayamos', '2': 'habed', '3': 'hayan'},
      },
    },
  },
);
