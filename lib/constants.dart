import 'dart:math';

import 'defaults.dart';

import 'package:flutter/material.dart';

import 'verbs_latin.dart';

const Color darkColor = Color.fromRGBO(119, 107, 93, 1);

const Color mediumColor = Color.fromRGBO(176, 166, 149, 1);
const Color fadedColor = Color.fromRGBO(170, 167, 162, 1);

const Color lightColor = Color.fromRGBO(235, 227, 213, 1);

const Color almostWhiteColor = Color.fromRGBO(243, 238, 234, 1);

const generalBoxName = 'generalBoxString';
List<Locale> supportedLocales = const [
  Locale('en'),
  Locale('fi'), //this is actually latin, I just cant use la for some dumb reason
  Locale('es'),
  Locale('it'),
  Locale('fr'),
  Locale('pt'),
  Locale('ro'),
];

// List<String> supportedLocaleCodes = [
//   'en',

//   'fi', //this is actually latin, I just cant use la for some dumb reason
//   'es',
//   'it',
//   'fr',
//   'pt',
//   'ro',
// ];

Locale ifSupported(Locale locale) {
  if (supportedLocales.contains(locale)) {
    return locale;
  }
  return const Locale('en');
}

// String ifSupportedString(String localeCode) {
//   if (supportedLocaleCodes.contains(localeCode)) {
//     return localeCode;
//   }
//   return 'en';
// }

class NiceButton extends StatefulWidget {
  final Color color;
  final Color inactiveColor;
  final double borderRadius;
  final double height;
  final Widget child;
  final VoidCallback onPressed;
  final bool active;
  const NiceButton({
    super.key,
    this.color = almostWhiteColor,
    this.inactiveColor = fadedColor,
    this.borderRadius = 4.0,
    this.height = 6,
    this.active = true,
    required this.child,
    required this.onPressed,
  });

  @override
  State<NiceButton> createState() => _NiceButtonState();
}

//https://stackoverflow.com/a/67989242
extension ColorBrightness on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}

class _NiceButtonState extends State<NiceButton> {
  double _paddingTop = 0;
  late double _paddingBottom = widget.height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() {
        _paddingTop = widget.height;
        _paddingBottom = 0;
      }),
      onTapUp: (_) => setState(() {
        _paddingTop = 0;
        _paddingBottom = widget.height;

        if (widget.active) {
          widget.onPressed();
        }
      }),
      child: AnimatedContainer(
        padding: EdgeInsets.only(top: _paddingTop),
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: const Color.fromARGB(0, 0, 0, 0), //transparent
          borderRadius: BorderRadius.circular(10),
        ),
        child: AnimatedContainer(
          padding: EdgeInsets.only(bottom: _paddingBottom),
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: widget.active ? widget.color.darken() : widget.inactiveColor.darken(),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: widget.active ? widget.color : widget.inactiveColor,
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

class LatinAdjective {
  final Map<String, Map<String, Map<String, String>>> declension;
  const LatinAdjective(
      {
      //default value for tests and such
      this.declension = defaultAdjectiveDeclension});

  String declineAdjective(String c, String n, String g) {
    return declension[c]?[n]?[g] ?? 'does not exist';
  }
}

class LatinNoun {
  final Map<String, Map<String, String>> declension;
  final String gender;
  const LatinNoun(
      {required this.gender,
      //default value for tests and such
      this.declension = defaultNounDeclension});

  String declineAdjective(String c, String n, String g) {
    return declension[c]?[n] ?? 'DNE';
  }
}

class LatinVerb {
  Map<String, String> infinitives;
  Map<String, LatinAdjective> participles;
  Map<String, Map<String, Map<String, Map<String, Map<String, String>>>>> conjugation;

  LatinVerb({
    this.infinitives = defaultVerbInfinitives,
    this.participles = defaultVerbParticiples,
    this.conjugation = defaultVerbConjugation,
  });

  String conjugateVerb(String m, String v, String t, String n, String p, {String g = 'm'}) {
    if (v == 'pas' && (t == 'perf' || t == 'plup' || t == 'futp')) {
      //then it is gender dependant

      String participle = participles['perfectPassive']?.declineAdjective('com', n, g) ?? 'DNE'; //perfect passive does not exist
      String formOfSum = latinVerbs[0].conjugateVerb(m, 'act', t, n, p);

      if (participle == 'DNE' || formOfSum == 'DNE') {
        return 'DNE';
      }
      return '$participle $formOfSum';
    }
    return conjugation[m]?[v]?[t]?[n]?[p] ?? 'DNE';
  }
}

class Question {
  String lemma;
  // String definition; //This can be added later
  List<String> demands;
  String prompt;
  String answer;
  Question({required this.lemma, required this.demands, required this.prompt, required this.answer});
  @override
  String toString() {
    return 'lemma: $lemma, demands: $demands, prompt: $prompt, answer: $answer';
  }
}

List<String> latinNumbers = ['singular', 'plural'];
List<String> latinGenders = ['neuter', 'masculine', 'feminine'];
List<String> latinCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative'];
List<String> latinFullCases = ['nominative', 'accusative', 'genitive', 'dative', 'ablative', 'vocative', 'locative'];

List<String> latinMoods = ['indicative', 'subjunctive'];

List<String> latinShortNumbers = ['s', 'p'];
List<String> latinShortGenders = ['m', 'f', 'n'];
List<String> latinShortCases = ['nom', 'acc', 'gen', 'dat', 'abl', 'voc'];
List<String> latinShortFullCases = ['nom', 'acc', 'gen', 'dat', 'abl', 'voc', 'loc'];
List<String> latinShortMoods = ['ind', 'sub', 'imp'];
List<String> latinShortVoices = ['act', 'pas'];
List<String> latinShortTenses = ['pres', 'imp', 'fut', 'perf', 'plup', 'futp'];

List<String> latinShortPersons = ['1', '2', '3'];

Question getLatinVerbQuestion() {
  final _random = new Random();

  //
  LatinVerb randomVerb = latinVerbs[_random.nextInt(latinVerbs.length)];

  String randomMood = latinShortMoods[_random.nextInt(latinShortMoods.length)];
  String randomVoice = latinShortVoices[_random.nextInt(latinShortVoices.length)];
  String randomTense = latinShortTenses[_random.nextInt(latinShortTenses.length)];
  String randomNumber = latinShortNumbers[_random.nextInt(latinShortNumbers.length)];
  String randomPerson = latinShortPersons[_random.nextInt(latinShortPersons.length)];
  String randomGender = latinShortGenders[_random.nextInt(latinShortGenders.length)];

  void initConjugation() {
    randomMood = latinShortMoods[_random.nextInt(latinShortMoods.length)];
    randomVoice = latinShortVoices[_random.nextInt(latinShortVoices.length)];
    randomTense = latinShortTenses[_random.nextInt(latinShortTenses.length)];
    randomNumber = latinShortNumbers[_random.nextInt(latinShortNumbers.length)];
    randomPerson = latinShortPersons[_random.nextInt(latinShortPersons.length)];
    randomGender = latinShortGenders[_random.nextInt(latinShortGenders.length)];
  }

  while (randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender) == 'DNE') {
    initConjugation();
    print('$randomMood, $randomVoice, $randomTense, $randomNumber, $randomPerson, $randomGender does not work');
  }

  String lemma = randomVerb.infinitives['presentActive'] ?? 'something went terribly wrong';
  List<String> demands = [randomTense, randomMood, randomVoice];
  String prompt = getSubject(randomMood, randomNumber, randomPerson, randomGender);
  String answer = randomVerb.conjugateVerb(randomMood, randomVoice, randomTense, randomNumber, randomPerson, g: randomGender);

  return Question(lemma: lemma, demands: demands, prompt: prompt, answer: answer);
}

String getSubject(String mood, String number, String person, String gender) {
  String getThirdPersonSubject(String number, String gender) {
    final _random = new Random();
    String result = '';

    Map<String, Map<String, List<String>>> subjects = {
      's': {
        'm': ['Marcus', 'Antonius', 'Is'],
        'f': ['Helena', 'Livia', 'Ea'],
        'n': ['Animal', 'Templum'],
      },
      'p': {
        'm': ['Senatores', 'Multi'],
        'f': ['Feminae', 'Puellae'],
        'n': ['Animalia', 'Templa'],
      },
    };

    List<String> listToChooseFrom = subjects[number]?[gender] ?? ['DNE'];

    return listToChooseFrom[_random.nextInt(listToChooseFrom.length)];
  }

  if (number == 's') {
    if (person == '1') {
      return 'Egō';
    } else if (person == '2') {
      return 'Tū';
    } else if (person == '3') {
      return getThirdPersonSubject(number, gender);
    }
  } else if (number == 'p') {
    if (person == '1') {
      return 'Nōs';
    } else if (person == '2') {
      return 'Vōs';
    } else if (person == '3') {
      return getThirdPersonSubject(number, gender);
    }
  }

  //Tu, audi! etc
  if (mood == 'imp') {}
  //FIX LATER
  return 'DNE';
}

void main() {
  print('lol');
  print(latinVerbs[0].conjugateVerb('ind', 'act', 'pres', 'p', '3'));
  Question thing = getLatinVerbQuestion();
  print(thing.toString());

  print('lol');
  // Example usage:

  // final randomQuestion = getRandomQuestion(spanishVerbs, spanishSubjects);
  // print("Prompt: ${randomQuestion.prompt}");
  // print("Answer: ${randomQuestion.answer}");
}


//OLD STUFF
//////////////////////////////////////////////////////////////////////
// const List<List<Map<String, List<String>>>> spanishVerbs = [
//   // SER

//   [
//     //NON FINITE FORMS
//     {
//       'infinitive': ['ser'],
//       'gerund': ['siendo'],
//       'pastParticiple': ['sido', 'sida', 'sidos', 'sidas']
//     },
//     //PROPER FORMS
//     {
//       // Indicative
//       'indicativePresent': ['soy', 'eres', 'es', 'somos', 'sois', 'son'],
//       'indicativeImperfect': ['era', 'eras', 'era', 'éramos', 'erais', 'eran'],
//       'indicativePreterite': ['fui', 'fuiste', 'fue', 'fuimos', 'fuisteis', 'fueron'],
//       'indicativeFuture': ['seré', 'serás', 'será', 'seremos', 'seréis', 'serán'],
//       'indicativeConditional': ['sería', 'serías', 'sería', 'seríamos', 'seríais', 'serían'],

//       // Subjunctive
//       'subjunctivePresent': ['sea', 'seas', 'sea', 'seamos', 'seáis', 'sean'],
//       'subjunctiveImperfectRa': ['fuera', 'fueras', 'fuera', 'fuéramos', 'fuerais', 'fueran'],
//       'subjunctiveImperfectSe': ['fuese', 'fueses', 'fuese', 'fuésemos', 'fueseis', 'fuesen'],
//       'subjunctiveFuture': ['fuere', 'fueres', 'fuere', 'fuéremos', 'fuereis', 'fueren'],
//     },
//     //COMPOUND FORMS
//     {}
//   ],

//   // ESTAR
//   [
//     {
//       'infinitive': ['estar'],
//     },
//     {
//       // Indicative
//       'indicativePresent': ['estoy', 'estás', 'está', 'estamos', 'estáis', 'están'],
//       'indicativeImperfect': ['estaba', 'estabas', 'estaba', 'estábamos', 'estabais', 'estaban'],
//       'indicativePreterite': ['estuve', 'estuviste', 'estuvo', 'estuvimos', 'estuvisteis', 'estuvieron'],
//       'indicativeFuture': ['estaré', 'estarás', 'estará', 'estaremos', 'estaréis', 'estarán'],
//       'indicativeConditional': ['estaría', 'estarías', 'estaría', 'estaríamos', 'estaríais', 'estarían'],

//       // Subjunctive
//       'subjunctivePresent': ['esté', 'estés', 'esté', 'estemos', 'estéis', 'estén'],
//       'subjunctiveImperfectRa': ['estuviera', 'estuvieras', 'estuviera', 'estuviéra mos', 'estuvierais', 'estuvieran'],
//       'subjunctiveImperfectSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
//       'subjunctiveFutureRa': ['estuviere', 'estuvieres', 'estuviere', 'estuviéremos', 'estuviereis', 'estuvieren'],
//       'subjunctiveFutureSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
//     },
//     {}
//   ],

//   //HABER
//   [
//     {
//       'infinitive': ['haber'],
//       'gerund': ['habiendo'],
//       'pastParticiple': ['habido', 'habida', 'habidos', 'habidas']
//     },
//     {
//       // Indicative
//       'indicativePresent': ['he', 'has', 'ha', 'hemos', 'habéis', 'han'],
//       'indicativeImperfect': ['había', 'habías', 'había', 'habíamos', 'habíais', 'habían'],
//       'indicativePreterite': ['hube', 'hubiste', 'hubo', 'hubimos', 'hubisteis', 'hubieron'],
//       'indicativeFuture': ['habré', 'habrás', 'habrá', 'habremos', 'habréis', 'habrán'],
//       'indicativeConditional': ['habría', 'habrías', 'habría', 'habríamos', 'habríais', 'habrían'],

//       // Subjunctive
//       'subjunctivePresent': ['haya', 'hayas', 'haya', 'hayamos', 'hayáis', 'hayan'],
//       'subjunctiveImperfectRa': ['hubiera', 'hubieras', 'hubiera', 'hubiéramos', 'hubierais', 'hubieran'],
//       'subjunctiveImperfectSe': ['hubiese', 'hubieses', 'hubiese', 'hubiésemos', 'hubieseis', 'hubiesen'],
//       'subjunctiveFutureRa': ['hubiere', 'hubieres', 'hubiere', 'hubiéremos', 'hubiereis', 'hubieren'],
//       'subjunctiveFutureSe': ['hubiese', 'hubieses', 'hubiese', 'hubiésemos', 'hubieseis', 'hubiesen'],

//       //Imperative
//       'imperativeAffirmative': ['-', 'habe', 'haya', '-', 'hayamos', 'habed', 'hayan'],
//       'imperativeNegative': ['-', 'no hagas', 'no haga', '-', 'no hagamos', 'no hagáis', 'no hagan'],
//     },
//     {}
//   ]
// ];

// const List<Map<String, List<String>>> latinVerbs = [
//   // SER
//   {
//     'infinitive': ['esse'],
//     // IndicativeActive
//     'indicativeActivePresent': ['sum', 'es', 'est', 'sumus', 'estis', 'sunt'],
//     'indicativeActiveImperfect': ['eram', 'erās', 'erat', 'erāmus', 'erātis', 'erant'],
//     'indicativeActiveFuture': ['erō', 'eris', 'erit', 'erimus', 'eritis', 'erunt'],
//     'indicativeActivePerfect': ['fuī', 'fuistī', 'fuit', 'fuimus', 'fuistis', 'fuērunt'],
//     'indicativeActivePluperfect': ['fueram', 'fuerās', 'fuerat', 'fuerāmus', 'fuerātis', 'fuerant'],
//     'indicativeActiveFuturePerfect': ['fuerō', 'fueris', 'fuerit', 'fuerimus', 'fueritis', 'fuerint'],

//     // SubjunctiveActive
//     'subjunctiveActivePresent': ['sea', 'seas', 'sea', 'seamos', 'seáis', 'sean'],
//     'subjunctiveActiveImperfectRa': ['fuera', 'fueras', 'fuera', 'fuéramos', 'fuerais', 'fueran'],
//     'subjunctiveActiveImperfectSe': ['fuese', 'fueses', 'fuese', 'fuésemos', 'fueseis', 'fuesen'],
//     'subjunctiveActiveFuture': ['fuere', 'fueres', 'fuere', 'fuéremos', 'fuereis', 'fueren'],
//   },
//   // ESTAR
//   {
//     'infinitive': ['estar'],
//     // Indicative
//     'indicativePresent': ['estoy', 'estás', 'está', 'estamos', 'estáis', 'están'],
//     'indicativeImperfect': ['estaba', 'estabas', 'estaba', 'estábamos', 'estabais', 'estaban'],
//     'indicativePreterite': ['estuve', 'estuviste', 'estuvo', 'estuvimos', 'estuvisteis', 'estuvieron'],
//     'indicativeFuture': ['estaré', 'estarás', 'estará', 'estaremos', 'estaréis', 'estarán'],
//     'indicativeConditional': ['estaría', 'estarías', 'estaría', 'estaríamos', 'estaríais', 'estarían'],

//     // Subjunctive
//     'subjunctivePresent': ['esté', 'estés', 'esté', 'estemos', 'estéis', 'estén'],
//     'subjunctiveImperfectRa': ['estuviera', 'estuvieras', 'estuviera', 'estuviéra mos', 'estuvierais', 'estuvieran'],
//     'subjunctiveImperfectSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
//     'subjunctiveFutureRa': ['estuviere', 'estuvieres', 'estuviere', 'estuviéremos', 'estuviereis', 'estuvieren'],
//     'subjunctiveFutureSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
//   },
// ];

// List<List<String>> spanishSubjects = [
//   ['Yo'],
//   ['Tu'],
//   ['Él', 'Ella', 'Usted', 'Alejandro', 'Juan', 'Mateo', 'Manuel', 'Pablo', 'Isabella', 'Maria', 'Carmen', 'Sara', 'Luna'],
//   ['Nosotros', 'Nosotras'],
//   ['Vosotros', 'Vosotras'],
//   ['Ellos', 'Ellas', 'Ustedes', 'Sara y Pablo', 'Isabella y Luna']
// ];

// class Question {
//   final String prompt;
//   final String answer;
//   const Question({required this.prompt, required this.answer});
// }

// Question getRandomQuestion(List<Map<String, List<String>>> verbs, List<List<String>> subjects) {
//   // Ensure that the data list is not empty
//   if (verbs.isEmpty) {
//     throw Exception("Verb list is empty");
//   }
//   if (subjects.isEmpty) {
//     throw Exception("Subject list is empty");
//   }

//   // Get a ramdom MAP for ONE VERB
//   final random = Random();
//   final randomVerbIndex = random.nextInt(verbs.length);
//   final randomVerbMap = verbs[randomVerbIndex]; // A MAP of ONE VERB

//   //Get the infinitive
//   final infinitive = randomVerbMap['infinitive']![0];

//   // Get a random key-value pair from the selected verb map
//   final verbKeys = randomVerbMap.keys.toList(); //all of the KEYS to the MAP
//   var randomKeyIndex = random.nextInt(verbKeys.length); //a random KEY INDEX
//   var randomKey = verbKeys[randomKeyIndex]; //A RANDOM KEY

//   //IF THE VERB IS IN A NON FINITE FORM
//   while (randomVerbMap[randomKey]!.length != 6) {
//     randomKeyIndex = random.nextInt(verbKeys.length); //a random KEY INDEX
//     randomKey = verbKeys[randomKeyIndex]; //A RANDOM KEY
//     print(randomVerbMap[randomKey]);
//   }
//   final randomValue = randomVerbMap[randomKey]!; //The full conjugation of 6 things for ONE TENSE/MOOD ETC

//   // Generate a random person from 0 to 5
//   final randomPersonNumber = random.nextInt(6);

//   final verb = randomValue[randomPersonNumber];
//   final subjectList = subjects[randomPersonNumber];

//   final int randomIndex = random.nextInt(subjectList.length);
//   final subject = subjectList[randomIndex];

//   // Create a Question object with the random key, value, and person
//   final question = Question(prompt: 'Conjugate $infinitive for $subject in $randomKey', answer: verb);

//   return question;
// }


