import '../portuguese_classes.dart';

List<PortugueseVerb> portugueseVerbs = [
  ser,
];

PortugueseVerb ser = PortugueseVerb(
  infinitive: 'ser',
  gerund: 'sendo',
  participles: {
    'past': const PortugueseAdjective(
      declension: {
        's': {'m': 'sido', 'f': 'sida'},
        'p': {'m': 'sidos', 'f': 'sidas'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'sou', '2': 'és', '3': 'é'},
        'p': {'1': 'somos', '2': 'sois', '3': 'são'},
      },
      'r imp': {
        's': {'1': 'era', '2': 'eras', '3': 'era'},
        'p': {'1': 'éramos', '2': 'éreis', '3': 'eram'},
      },
      'r perf': {
        's': {'1': 'fui', '2': 'foste', '3': 'foi'},
        'p': {'1': 'fomos', '2': 'fostes', '3': 'foram'},
      },
      'r plup': {
        's': {'1': 'fora', '2': 'foras', '3': 'fora'},
        'p': {'1': 'fôramos', '2': 'fôreis', '3': 'foram'},
      },
      'r fut': {
        's': {'1': 'serei', '2': 'serás', '3': 'será'},
        'p': {'1': 'seremos', '2': 'sereis', '3': 'serão'},
      },
      'r cond': {
        's': {'1': 'seria', '2': 'serias', '3': 'seria'},
        'p': {'1': 'seríamos', '2': 'seríeis', '3': 'seriam'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'seja', '2': 'sejas', '3': 'seja'},
        'p': {'1': 'sejamos', '2': 'sejais', '3': 'sejam'},
      },
      'r imp': {
        's': {'1': 'fosse', '2': 'fosses', '3': 'fosse'},
        'p': {'1': 'fôssemos', '2': 'fôsseis', '3': 'fossem'},
      },
      'r fut': {
        's': {'1': 'for', '2': 'fores', '3': 'for'},
        'p': {'1': 'formos', '2': 'fordes', '3': 'forem'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'sê', '3': 'seja'},
        'p': {'1': 'sejamos', '2': 'sede', '3': 'sejam'},
      },
    },
  },
);

PortugueseVerb ter = PortugueseVerb(
  infinitive: 'ter',
  gerund: 'tendo',
  participles: {
    'past': const PortugueseAdjective(
      declension: {
        's': {'m': 'tido', 'f': 'tida'},
        'p': {'m': 'tidos', 'f': 'tidas'}
      },
    ),
  },
  conjugation: {
    'ind': {
      'r pres': {
        's': {'1': 'tenho', '2': 'tens', '3': 'tem'},
        'p': {'1': 'temos', '2': 'tendes', '3': 'têm'},
      },
      'r imp': {
        's': {'1': 'tinha', '2': 'tinhas', '3': 'tinha'},
        'p': {'1': 'tínhamos', '2': 'tínheis', '3': 'tinham'},
      },
      'r perf': {
        's': {'1': 'tive', '2': 'tiveste', '3': 'teve'},
        'p': {'1': 'tivemos', '2': 'tivestes', '3': 'tiveram'},
      },
      'r plup': {
        's': {'1': 'tivera', '2': 'tiveras', '3': 'tivera'},
        'p': {'1': 'tivéramos', '2': 'tivéreis', '3': 'tiveram'},
      },
      'r fut': {
        's': {'1': 'terei', '2': 'terás', '3': 'terá'},
        'p': {'1': 'teremos', '2': 'tereis', '3': 'terão'},
      },
      'r cond': {
        's': {'1': 'teria', '2': 'terias', '3': 'teria'},
        'p': {'1': 'teríamos', '2': 'teríeis', '3': 'teriam'},
      },
    },
    'sub': {
      'r pres': {
        's': {'1': 'tenha', '2': 'tenhas', '3': 'tenha'},
        'p': {'1': 'tenhamos', '2': 'tenhais', '3': 'tenham'},
      },
      'r imp': {
        's': {'1': 'tivesse', '2': 'tivesses', '3': 'tivesse'},
        'p': {'1': 'tivéssemos', '2': 'tivésseis', '3': 'tivessem'},
      },
      'r fut': {
        's': {'1': 'tiver', '2': 'tiveres', '3': 'tiver'},
        'p': {'1': 'tivermos', '2': 'tiverdes', '3': 'tiverem'},
      },
    },
    'imp': {
      'r pres': {
        's': {'2': 'tem', '3': 'tenha'},
        'p': {'1': 'tenhamos', '2': 'tende', '3': 'tenham'},
      },
    },
  },
);
