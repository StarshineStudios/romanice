import 'constants.dart';

List<LatinVerb> irregularVerbs = [
// sum
  LatinVerb(
    participles: {
      'futureActive': const LatinAdjective(
        declension: {
          'nom': {
            's': {'m': 'futūrus', 'f': 'futura', 'n': 'futurum'},
            'p': {'m': 'futūrī', 'f': 'futūrae', 'n': 'futūra'}
          },
          'acc': {
            's': {'m': 'futurum', 'f': 'futuram', 'n': 'futurum'},
            'p': {'m': 'futūrōs', 'f': 'futūrās', 'n': 'futūra'}
          },
          'gen': {
            's': {'m': 'futūrī', 'f': 'futurae', 'n': 'futūrī'},
            'p': {'m': 'futūrōrum', 'f': 'futūrārum', 'n': 'futūrōrum'}
          },
          'dat': {
            's': {'m': 'futūrō', 'f': 'futurae', 'n': 'futūrō'},
            'p': {'m': 'futūrīs', 'f': 'futūrīs', 'n': 'futūrīs'}
          },
          'abl': {
            's': {'m': 'futūrō', 'f': 'futūrā', 'n': 'futūrō'},
            'p': {'m': 'futūrīs', 'f': 'futūrīs', 'n': 'futūrīs'}
          },
          'voc': {
            's': {'m': 'futūre', 'f': 'futura', 'n': 'futurum'},
            'p': {'m': 'futūrī', 'f': 'futūrae', 'n': 'futūra'}
          },
        },
      ),
    },
    conjugation: {
      'ind': {
        'act': {
          'pres': {
            's': {'1': 'sum', '2': 'es', '3': 'est'},
            'p': {'1': 'sumus', '2': 'estis', '3': 'sunt'},
          },
          'imp': {
            's': {'1': 'eram', '2': 'erās', '3': 'erat'},
            'p': {'1': 'erāmus', '2': 'erātis', '3': 'erant'},
          },
          'fut': {
            's': {'1': 'erō', '2': 'eris', '3': 'erit'},
            'p': {'1': 'erāmus', '2': 'erātis', '3': 'erunt'},
          },
          'perf': {
            's': {'1': 'fuī', '2': 'fuistī', '3': 'fuit'},
            'p': {'1': 'fuimus', '2': 'fuistis', '3': 'fuērunt'},
          },
          'plup': {
            's': {'1': 'fueram', '2': 'fuerās', '3': 'fuerat'},
            'p': {'1': 'fuerāmus', '2': 'fuerātis', '3': 'fuerant'},
          },
          'futp': {
            's': {'1': 'fuerō', '2': 'fueris', '3': 'fuerit'},
            'p': {'1': 'fuerimus', '2': 'fueritis', '3': 'fuerint'},
          },
        },
      },
      'sub': {
        'act': {
          'pres': {
            's': {'1': 'sim', '2': 'sīs', '3': 'sit'},
            'p': {'1': 'sīmus', '2': 'sītis', '3': 'sint'},
          },
          'imp': {
            's': {'1': 'essem', '2': 'essēs', '3': 'esset'},
            'p': {'1': 'essēmus', '2': 'essētis', '3': 'essent'},
          },
          'impArchaic': {
            's': {'1': 'forem', '2': 'forēs', '3': 'foret'},
            'p': {'1': 'forēmus', '2': 'forētis', '3': 'forent'},
          },
          'perf': {
            's': {'1': 'fuerim', '2': 'fuerīs', '3': 'fuerit'},
            'p': {'1': 'fuerīmus', '2': 'fuerītis', '3': 'fuerint'},
          },
          'plup': {
            's': {'1': 'fuissem', '2': 'fuissēs', '3': 'fuisset'},
            'p': {'1': 'fuissēmus', '2': 'fuissētis', '3': 'fuissent'},
          },
        },
      },
      'imp': {
        'act': {
          'pres': {
            's': {'2': 'es'},
            'p': {'2': 'este'}
          },
          'fut': {
            's': {'2': 'estō', '3': 'estō'},
            'p': {'2': 'estōte', '3': 'suntō'}
          },
        },
      },
    },
  )
// possum
// eō
// volō
// nōlō
// mālō
// ferō
// fīō
// edō
// dō
// inquam
];

// class latinNoun {

//   final List<List<String>> declension;

//   latinNoun()

// }
