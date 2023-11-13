// import '../latin_classes.dart';

// const Map<String, Map<String, Map<String, String>>> defaultAdjectiveDeclension = {
//   'nom': {
//     's': {'m': 'rōmānicus', 'f': 'rōmānica', 'n': 'rōmānicum'},
//     'p': {'m': 'rōmānicī', 'f': 'rōmānicae', 'n': 'rōmānica'}
//   },
//   'acc': {
//     's': {'m': 'rōmānicum', 'f': 'rōmānicam', 'n': 'rōmānicum'},
//     'p': {'m': 'rōmānicōs', 'f': 'rōmānicās', 'n': 'rōmānica'}
//   },
//   'gen': {
//     's': {'m': 'rōmānicī', 'f': 'rōmānicae', 'n': 'rōmānicī'},
//     'p': {'m': 'rōmānicōrum', 'f': 'rōmānicārum', 'n': 'rōmānicōrum'}
//   },
//   'dat': {
//     's': {'m': 'rōmānicō', 'f': 'rōmānicae', 'n': 'rōmānicō'},
//     'p': {'m': 'rōmānicīs', 'f': 'rōmānicīs', 'n': 'rōmānicīs'}
//   },
//   'abl': {
//     's': {'m': 'rōmānicō', 'f': 'rōmānicā', 'n': 'rōmānicō'},
//     'p': {'m': 'rōmānicīs', 'f': 'rōmānicīs', 'n': 'rōmānicīs'}
//   },
//   'voc': {
//     's': {'m': 'rōmānice', 'f': 'rōmānica', 'n': 'rōmānicum'},
//     'p': {'m': 'rōmānicī', 'f': 'rōmānicae', 'n': 'rōmānica'}
//   },
// };

// const Map<String, Map<String, String>> defaultNounDeclension = {
//   'nom': {
//     's': 'stēlla',
//     'p': 'stēllae',
//   },
//   'acc': {
//     's': 'stēllam',
//     'p': 'stēllās',
//   },
//   'gen': {
//     's': 'stēllae',
//     'p': 'stēllārum',
//   },
//   'dat': {
//     's': 'stēllae',
//     'p': 'stēllīs',
//   },
//   'abl': {
//     's': 'stēllā',
//     'p': 'stēllīs',
//   },
//   'voc': {
//     's': 'stēlla',
//     'p': 'stēllae',
//   },
// };

// const Map<String, String> defaultVerbInfinitives = {
//   'presentActive': 'amāre',
//   'perfectActive': 'amāvisse',
//   'presentPassive': 'amārī',
// };

// const Map<String, LatinAdjective> defaultVerbParticiples = {
//   'presentActive': LatinAdjective(
//     declension: {
//       'nom': {
//         's': {'m': 'amāns', 'f': 'amāns', 'n': 'amāns'},
//         'p': {'m': 'amantēs', 'f': 'amantēs', 'n': 'amantia'}
//       },
//       'acc': {
//         's': {'m': 'amantem', 'f': 'amantem', 'n': 'amāns'},
//         'p': {'m': 'amantēs', 'f': 'amantēs', 'n': 'amantia'}
//       },
//       'gen': {
//         's': {'m': 'amantis', 'f': 'amantis', 'n': 'amantis'},
//         'p': {'m': 'amantium', 'f': 'amantium', 'n': 'amantium'}
//       },
//       'dat': {
//         's': {'m': 'amantī', 'f': 'amantī', 'n': 'amantī'},
//         'p': {'m': 'amantibus', 'f': 'amantibus', 'n': 'amantibus'}
//       },
//       'abl': {
//         's': {'m': 'amante', 'f': 'amante', 'n': 'amante'},
//         'p': {'m': 'amantibus', 'f': 'amantibus', 'n': 'amantibus'}
//       },
//       'voc': {
//         's': {'m': 'amāns', 'f': 'amāns', 'n': 'amāns'},
//         'p': {'m': 'amantēs', 'f': 'amantēs', 'n': 'amantia'}
//       },
//     },
//   ),
//   'futureActive': LatinAdjective(
//     declension: {
//       'nom': {
//         's': {'m': 'amātūrus', 'f': 'amātūra', 'n': 'amātūrum'},
//         'p': {'m': 'amātūrī', 'f': 'amātūrae', 'n': 'amātūra'}
//       },
//       'acc': {
//         's': {'m': 'amātūrum', 'f': 'amātūram', 'n': 'amātūrum'},
//         'p': {'m': 'amātūrōs', 'f': 'amātūrās', 'n': 'amātūra'}
//       },
//       'gen': {
//         's': {'m': 'amātūrī', 'f': 'amātūrae', 'n': 'amātūrī'},
//         'p': {'m': 'amātūrōrum', 'f': 'amātūrārum', 'n': 'amātūrōrum'}
//       },
//       'dat': {
//         's': {'m': 'amātūrō', 'f': 'amātūrae', 'n': 'amātūrō'},
//         'p': {'m': 'amātūrīs', 'f': 'amātūrīs', 'n': 'amātūrīs'}
//       },
//       'abl': {
//         's': {'m': 'amātūrō', 'f': 'amātūrā', 'n': 'amātūrō'},
//         'p': {'m': 'amātūrīs', 'f': 'amātūrīs', 'n': 'amātūrīs'}
//       },
//       'voc': {
//         's': {'m': 'amātūre', 'f': 'amātūra', 'n': 'amātūrum'},
//         'p': {'m': 'amātūrī', 'f': 'amātūrae', 'n': 'amātūra'}
//       },
//     },
//   ),
//   'perfectPassive': LatinAdjective(
//     declension: {
//       'nom': {
//         's': {'m': 'amātus', 'f': 'amāta', 'n': 'amātum'},
//         'p': {'m': 'amātī', 'f': 'amātae', 'n': 'amāta'}
//       },
//       'acc': {
//         's': {'m': 'amātum', 'f': 'amātam', 'n': 'amātum'},
//         'p': {'m': 'amātōs', 'f': 'amātās', 'n': 'amāta'}
//       },
//       'gen': {
//         's': {'m': 'amātī', 'f': 'amātae', 'n': 'amātī'},
//         'p': {'m': 'amātōrum', 'f': 'amātārum', 'n': 'amātōrum'}
//       },
//       'dat': {
//         's': {'m': 'amātō', 'f': 'amātae', 'n': 'amātō'},
//         'p': {'m': 'amātīs', 'f': 'amātīs', 'n': 'amātīs'}
//       },
//       'abl': {
//         's': {'m': 'amātō', 'f': 'amātā', 'n': 'amātō'},
//         'p': {'m': 'amātīs', 'f': 'amātīs', 'n': 'amātīs'}
//       },
//       'voc': {
//         's': {'m': 'amāte', 'f': 'amāta', 'n': 'amātum'},
//         'p': {'m': 'amātī', 'f': 'amātae', 'n': 'amāta'}
//       },
//     },
//   ),
//   'futurePassive': LatinAdjective(
//     declension: {
//       'nom': {
//         's': {'m': 'amandus', 'f': 'amanda', 'n': 'amandum'},
//         'p': {'m': 'amandī', 'f': 'amandae', 'n': 'amanda'}
//       },
//       'acc': {
//         's': {'m': 'amandum', 'f': 'amandam', 'n': 'amandum'},
//         'p': {'m': 'amandōs', 'f': 'amandās', 'n': 'amanda'}
//       },
//       'gen': {
//         's': {'m': 'amandī', 'f': 'amandae', 'n': 'amandī'},
//         'p': {'m': 'amandōrum', 'f': 'amandārum', 'n': 'amandōrum'}
//       },
//       'dat': {
//         's': {'m': 'amandō', 'f': 'amandae', 'n': 'amandō'},
//         'p': {'m': 'amandīs', 'f': 'amandīs', 'n': 'amandīs'}
//       },
//       'abl': {
//         's': {'m': 'amandō', 'f': 'amandā', 'n': 'amandō'},
//         'p': {'m': 'amandīs', 'f': 'amandīs', 'n': 'amandīs'}
//       },
//       'voc': {
//         's': {'m': 'amande', 'f': 'amanda', 'n': 'amandum'},
//         'p': {'m': 'amandī', 'f': 'amandae', 'n': 'amanda'}
//       },
//     },
//   ),
// };

// const Map<String, Map<String, Map<String, Map<String, Map<String, String>>>>> defaultVerbConjugation = {
//   'ind': {
//     'act': {
//       'pres': {
//         's': {'1': 'amō', '2': 'amās', '3': 'amat'},
//         'p': {'1': 'amāmus', '2': 'amātis', '3': 'amant'},
//       },
//       'imp': {
//         's': {'1': 'amābam', '2': 'amābās', '3': 'amābat'},
//         'p': {'1': 'amābāmus', '2': 'amābātis', '3': 'amābant'},
//       },
//       'fut': {
//         's': {'1': 'amābō', '2': 'amābis', '3': 'amābit'},
//         'p': {'1': 'amābimus', '2': 'amābitis', '3': 'amābunt'},
//       },
//       'perf': {
//         's': {'1': 'amāvī', '2': 'amāvistī', '3': 'amāvit'},
//         'p': {'1': 'amāvimus', '2': 'amāvistis', '3': 'amāvērunt'},
//       },
//       'plup': {
//         's': {'1': 'amāveram', '2': 'amāverās', '3': 'amāverat'},
//         'p': {'1': 'amāverāmus', '2': 'amāverātis', '3': 'amāverant'},
//       },
//       'futp': {
//         's': {'1': 'amāvero', '2': 'amāveris', '3': 'amāverit'},
//         'p': {'1': 'amāverimus', '2': 'amāveritis', '3': 'amāverint'},
//       },
//     },
//     'pas': {
//       'pres': {
//         's': {'1': 'amor', '2': 'amāris', '3': 'amātur'},
//         'p': {'1': 'amāmur', '2': 'amāminī', '3': 'amantur'},
//       },
//       'imp': {
//         's': {'1': 'amābar', '2': 'amābāris', '3': 'amābātur'},
//         'p': {'1': 'amābāmur', '2': 'amābāminī', '3': 'amābantur'},
//       },
//       'fut': {
//         's': {'1': 'amābor', '2': 'amāberis', '3': 'amābitur'},
//         'p': {'1': 'amābimur', '2': 'amābiminī', '3': 'amābuntur'},
//       },

//       //gender dependant
//       'perf': {
//         's': {'1': 'amātus sum', '2': 'amātus es', '3': 'amātus est'},
//         'p': {'1': 'amātī sumus', '2': 'amātī estis', '3': 'amātī sunt'},
//       },
//       'plup': {
//         's': {'1': 'amātus eram', '2': 'amātus erās', '3': 'amātus erat'},
//         'p': {'1': 'amātī erāmus', '2': 'amātī erātis', '3': 'amātī erant'},
//       },
//       'futp': {
//         's': {'1': 'amātus ero', '2': 'amātus eris', '3': 'amātus erit'},
//         'p': {'1': 'amātī erimus', '2': 'amātī eritis', '3': 'amātī erunt'},
//       },
//       //gender dependant
//     },
//   },
//   'sub': {
//     'act': {
//       'pres': {
//         's': {'1': 'amem', '2': 'amēs', '3': 'amet'},
//         'p': {'1': 'amēmus', '2': 'amētis', '3': 'ament'},
//       },
//       'imp': {
//         's': {'1': 'amārem', '2': 'amārēs', '3': 'amāret'},
//         'p': {'1': 'amārēmus', '2': 'amārētis', '3': 'amārent'},
//       },
//       'perf': {
//         's': {'1': 'amāverim', '2': 'amāveris', '3': 'amāverit'},
//         'p': {'1': 'amāverimus', '2': 'amāveritis', '3': 'amāverint'},
//       },
//       'plup': {
//         's': {'1': 'amāvissem', '2': 'amāvissēs', '3': 'amāvisset'},
//         'p': {'1': 'amāvissēmus', '2': 'amāvissētis', '3': 'amāvissent'},
//       },
//     },
//     'pas': {
//       'pres': {
//         's': {'1': 'amer', '2': 'amēris', '3': 'amētur'},
//         'p': {'1': 'amēmur', '2': 'amēminī', '3': 'amentur'},
//       },
//       'imp': {
//         's': {'1': 'amārer', '2': 'amārēris', '3': 'amārētur'},
//         'p': {'1': 'amārēmur', '2': 'amārēminī', '3': 'amārentur'},
//       },
//       //gender dependant
//       'perf': {
//         's': {'1': 'amātus sim', '2': 'amātus sis', '3': 'amātus sit'},
//         'p': {'1': 'amātī simus', '2': 'amātī sitis', '3': 'amātī sint'},
//       },
//       'plup': {
//         's': {'1': 'amātus essem', '2': 'amātus essēs', '3': 'amātus esset'},
//         'p': {'1': 'amātī essēmus', '2': 'amātī essētis', '3': 'amātī essent'},
//       },
//       //gender dependant
//     },
//   },
//   'imp': {
//     'act': {
//       'pres': {
//         's': {'2': 'amā'},
//         'p': {'2': 'amāte'}
//       },
//       'fut': {
//         's': {'2': 'amātō', '3': 'amātō'},
//         'p': {'2': 'amātōte', '3': 'amantō'}
//       },
//     },
//     'pas': {
//       'pres': {
//         's': {'2': 'amāre'},
//         'p': {'2': 'amāminī'}
//       },
//       'fut': {
//         's': {'2': 'amātor', '3': 'amātor'},
//         'p': {'3': 'amantor'}
//       },
//     },
//   },
// };
