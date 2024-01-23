// import 'package:colorguesser/core/constants.dart';
// import 'package:colorguesser/core/enums.dart';

// Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation = {
//   Mood.ind: {
//     Tense.presentRomance: {
//       Number.s: {Person.first: 'suis', Person.second: 'es', Person.third: 'est'},
//       Number.p: {Person.first: 'sommes', Person.second: 'êtes', Person.third: 'sont'},
//     },
//     Tense.imperfectRomance: {
//       Number.s: {Person.first: 'étais', Person.second: 'étais', Person.third: 'était'},
//       Number.p: {Person.first: 'étions', Person.second: 'étiez', Person.third: 'étaient'},
//     },
//     Tense.futureRomance: {
//       Number.s: {Person.first: 'serai', Person.second: 'seras', Person.third: 'sera'},
//       Number.p: {Person.first: 'serons', Person.second: 'serez', Person.third: 'seront'},
//     },
//     Tense.perfectRomance: {
//       Number.s: {Person.first: 'fus', Person.second: 'fus', Person.third: 'fut'},
//       Number.p: {Person.first: 'fûmes', Person.second: 'fûtes', Person.third: 'furent'},
//     },
//   },
//   Mood.con: {
//     Tense.presentRomance: {
//       Number.s: {Person.first: 'serais', Person.second: 'serais', Person.third: 'serait'},
//       Number.p: {Person.first: 'serions', Person.second: 'seriez', Person.third: 'seraient'},
//     },
//   },
//   Mood.sub: {
//     Tense.presentRomance: {
//       Number.s: {Person.first: 'sois', Person.second: 'sois', Person.third: 'soit'},
//       Number.p: {Person.first: 'soyons', Person.second: 'soyez', Person.third: 'soient'},
//     },
//     Tense.imperfectRomance: {
//       Number.s: {Person.first: 'fusse', Person.second: 'fusses', Person.third: 'fût'},
//       Number.p: {Person.first: 'fussions	', Person.second: 'fussiez', Person.third: 'fussent'},
//     },
//   },
//   Mood.imp: {
//     Tense.presentRomance: {
//       Number.s: {Person.second: 'sois'},
//       Number.p: {Person.first: 'soyons', Person.second: 'soyez'},
//     },
//   },
// };

// class Coordinate {
//   final Mood mood;
//   final Tense tense;
//   final Number number;
//   final Person person;

//   Coordinate(this.mood, this.tense, this.number, this.person);
// }

// Coordinate getRandomCoordinate(Map<Mood, Map<Tense, Map<Number, Map<Person, String>>>> conjugation) {
//   List<Coordinate> allCoordinates = [];

//   conjugation.forEach((mood, tenses) {
//     tenses.forEach((tense, numbers) {
//       numbers.forEach((number, persons) {
//         for (var person in persons.keys) {
//           allCoordinates.add(Coordinate(mood, tense, number, person));
//         }
//       });
//     });
//   });

//   // Randomly select a coordinate
//   return allCoordinates.getRandom();
// }

// Map<dynamic, int> summarizeList(List<dynamic> list) {
//   var frequencyMap = <dynamic, int>{};

//   for (var item in list) {
//     frequencyMap[item] = (frequencyMap[item] ?? 0) + 1;
//   }

//   var sortedEntries = frequencyMap.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

//   return Map<dynamic, int>.fromEntries(sortedEntries);
// }

// void main() {
//   // Assuming 'conjugation' is your nested map

//   List<String> results = [];

//   int iterations = 1000000;
//   for (int i = 0; i < iterations; i++) {
//     var randomCoordinate = getRandomCoordinate(conjugation);

//     String randomVerbForm = conjugation[randomCoordinate.mood]?[randomCoordinate.tense]?[randomCoordinate.number]?[randomCoordinate.person] ?? 'DNE';
//     results.add(randomVerbForm);
//   }
//   var summary = summarizeList(results);
//   summary.forEach((key, value) {
//     // print('$key: $value');
//   });

//   // Retrieve the string using the random coordinate

//   // print("Random Verb Form: $randomVerbForm");
// }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Stack Inside Column'),
// //         ),
// //         body: Column(
// //           children: [
// //             Container(
// //               height: 100,
// //               color: Colors.blue,
// //               child: const Center(
// //                 child: Text('Item 1'),
// //               ),
// //             ),
// //             Stack(
// //               children: [
// //                 Container(
// //                   height: 200,
// //                   color: Colors.green,
// //                   child: const Center(
// //                     child: Text('Item 2'),
// //                   ),
// //                 ),
// //                 const Positioned(
// //                   top: 10,
// //                   left: 10,
// //                   child: Text(
// //                     'Overlayed Text',
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             Container(
// //               height: 150,
// //               color: Colors.red,
// //               child: const Center(
// //                 child: Text('Item 3'),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:colorguesser/temp/romance_classes.dart';
// import 'package:flutter/material.dart';


// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: SectionWidget(
//         sections: [
//           Section(
//             sectionName: 'Section 1',
//             subsections: [
//               Subsection(
//                 subsectionName: 'Subsection A',
//                 entries: {'Key1': 'Value1', 'Key2': 'Value2'},
//               ),
//               // Add more subsections here...
//             ],
//           ),
//           // Add more sections here...
//         ],
//       ),
//     ),
//   ));
// }
