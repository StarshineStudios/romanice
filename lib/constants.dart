import 'dart:math';

import 'package:flutter/material.dart';

const Color backgroundColor = Color.fromARGB(255, 31, 29, 50);

const Color foregroundColor = Color.fromARGB(255, 68, 64, 103);

const Color brightColor = Color.fromARGB(255, 87, 76, 190);

const Color fadedColor = Color.fromARGB(255, 103, 102, 121);
const Color lightColor = Color.fromARGB(255, 217, 216, 230);

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
    this.color = foregroundColor,
    this.inactiveColor = fadedColor,
    this.borderRadius = 8.0,
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

const List<Map<String, List<String>>> spanishVerbs = [
  // SER
  {
    'infinitive': ['ser'],
    // Indicative
    'indicativePresent': ['soy', 'eres', 'es', 'somos', 'sois', 'son'],
    'indicativeImperfect': ['era', 'eras', 'era', 'éramos', 'erais', 'eran'],
    'indicativePreterite': ['fui', 'fuiste', 'fue', 'fuimos', 'fuisteis', 'fueron'],
    'indicativeFuture': ['seré', 'serás', 'será', 'seremos', 'seréis', 'serán'],
    'indicativeConditional': ['sería', 'serías', 'sería', 'seríamos', 'seríais', 'serían'],

    // Subjunctive
    'subjunctivePresent': ['sea', 'seas', 'sea', 'seamos', 'seáis', 'sean'],
    'subjunctiveImperfectRa': ['fuera', 'fueras', 'fuera', 'fuéramos', 'fuerais', 'fueran'],
    'subjunctiveImperfectSe': ['fuese', 'fueses', 'fuese', 'fuésemos', 'fueseis', 'fuesen'],
    'subjunctiveFuture': ['fuere', 'fueres', 'fuere', 'fuéremos', 'fuereis', 'fueren'],
  },
  // ESTAR
  {
    'infinitive': ['estar'],
    // Indicative
    'indicativePresent': ['estoy', 'estás', 'está', 'estamos', 'estáis', 'están'],
    'indicativeImperfect': ['estaba', 'estabas', 'estaba', 'estábamos', 'estabais', 'estaban'],
    'indicativePreterite': ['estuve', 'estuviste', 'estuvo', 'estuvimos', 'estuvisteis', 'estuvieron'],
    'indicativeFuture': ['estaré', 'estarás', 'estará', 'estaremos', 'estaréis', 'estarán'],
    'indicativeConditional': ['estaría', 'estarías', 'estaría', 'estaríamos', 'estaríais', 'estarían'],

    // Subjunctive
    'subjunctivePresent': ['esté', 'estés', 'esté', 'estemos', 'estéis', 'estén'],
    'subjunctiveImperfectRa': ['estuviera', 'estuvieras', 'estuviera', 'estuviéra mos', 'estuvierais', 'estuvieran'],
    'subjunctiveImperfectSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
    'subjunctiveFutureRa': ['estuviere', 'estuvieres', 'estuviere', 'estuviéremos', 'estuviereis', 'estuvieren'],
    'subjunctiveFutureSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
  },
];

const List<Map<String, List<String>>> latinVerbs = [
  // SER
  {
    'infinitive': ['esse'],
    // IndicativeActive
    'indicativeActivePresent': ['sum', 'es', 'est', 'sumus', 'estis', 'sunt'],
    'indicativeActiveImperfect': ['eram', 'erās', 'erat', 'erāmus', 'erātis', 'erant'],
    'indicativeActiveFuture': ['erō', 'eris', 'erit', 'erimus', 'eritis', 'erunt'],
    'indicativeActivePerfect': ['fuī', 'fuistī', 'fuit', 'fuimus', 'fuistis', 'fuērunt'],
    'indicativeActivePluperfect': ['fueram', 'fuerās', 'fuerat', 'fuerāmus', 'fuerātis', 'fuerant'],
    'indicativeActiveFuturePerfect': ['fuerō', 'fueris', 'fuerit', 'fuerimus', 'fueritis', 'fuerint'],

    // SubjunctiveActive
    'subjunctiveActivePresent': ['sea', 'seas', 'sea', 'seamos', 'seáis', 'sean'],
    'subjunctiveActiveImperfectRa': ['fuera', 'fueras', 'fuera', 'fuéramos', 'fuerais', 'fueran'],
    'subjunctiveActiveImperfectSe': ['fuese', 'fueses', 'fuese', 'fuésemos', 'fueseis', 'fuesen'],
    'subjunctiveActiveFuture': ['fuere', 'fueres', 'fuere', 'fuéremos', 'fuereis', 'fueren'],
  },
  // ESTAR
  {
    'infinitive': ['estar'],
    // Indicative
    'indicativePresent': ['estoy', 'estás', 'está', 'estamos', 'estáis', 'están'],
    'indicativeImperfect': ['estaba', 'estabas', 'estaba', 'estábamos', 'estabais', 'estaban'],
    'indicativePreterite': ['estuve', 'estuviste', 'estuvo', 'estuvimos', 'estuvisteis', 'estuvieron'],
    'indicativeFuture': ['estaré', 'estarás', 'estará', 'estaremos', 'estaréis', 'estarán'],
    'indicativeConditional': ['estaría', 'estarías', 'estaría', 'estaríamos', 'estaríais', 'estarían'],

    // Subjunctive
    'subjunctivePresent': ['esté', 'estés', 'esté', 'estemos', 'estéis', 'estén'],
    'subjunctiveImperfectRa': ['estuviera', 'estuvieras', 'estuviera', 'estuviéra mos', 'estuvierais', 'estuvieran'],
    'subjunctiveImperfectSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
    'subjunctiveFutureRa': ['estuviere', 'estuvieres', 'estuviere', 'estuviéremos', 'estuviereis', 'estuvieren'],
    'subjunctiveFutureSe': ['estuviese', 'estuvieses', 'estuviese', 'estuviésemos', 'estuvieseis', 'estuviesen'],
  },
];

List<List<String>> spanishSubjects = [
  ['Yo'],
  ['Tu'],
  ['Él', 'Ella', 'Usted', 'Alejandro', 'Juan', 'Mateo', 'Manuel', 'Pablo', 'Isabella', 'Maria', 'Carmen', 'Sara', 'Luna'],
  ['Nosotros', 'Nosotras'],
  ['Vosotros', 'Vosotras'],
  ['Ellos', 'Ellas', 'Ustedes', 'Sara y Pablo', 'Isabella y Luna']
];

class Question {
  final String prompt;
  final String answer;
  const Question({required this.prompt, required this.answer});
}

Question getRandomQuestion(List<Map<String, List<String>>> verbs, List<List<String>> subjects) {
  // Ensure that the data list is not empty
  if (verbs.isEmpty) {
    throw Exception("Verb list is empty");
  }
  if (subjects.isEmpty) {
    throw Exception("Subject list is empty");
  }

  // Get a ramdom MAP for ONE VERB
  final random = Random();
  final randomVerbIndex = random.nextInt(verbs.length);
  final randomVerbMap = verbs[randomVerbIndex]; // A MAP of ONE VERB

  //Get the infinitive
  final infinitive = randomVerbMap['infinitive']![0];

  // Get a random key-value pair from the selected verb map
  final verbKeys = randomVerbMap.keys.toList(); //all of the KEYS to the MAP
  var randomKeyIndex = random.nextInt(verbKeys.length); //a random KEY INDEX
  var randomKey = verbKeys[randomKeyIndex]; //A RANDOM KEY

  //IF THE VERB IS IN A NON FINITE FORM
  while (randomVerbMap[randomKey]!.length != 6) {
    randomKeyIndex = random.nextInt(verbKeys.length); //a random KEY INDEX
    randomKey = verbKeys[randomKeyIndex]; //A RANDOM KEY
    print(randomVerbMap[randomKey]);
  }
  final randomValue = randomVerbMap[randomKey]!; //The full conjugation of 6 things for ONE TENSE/MOOD ETC

  // Generate a random person from 0 to 5
  final randomPersonNumber = random.nextInt(6);

  final verb = randomValue[randomPersonNumber];
  final subjectList = subjects[randomPersonNumber];

  final int randomIndex = random.nextInt(subjectList.length);
  final subject = subjectList[randomIndex];

  // Create a Question object with the random key, value, and person
  final question = Question(prompt: 'Conjugate $infinitive for $subject in $randomKey', answer: verb);

  return question;
}

void main() {
  // Example usage:

  final randomQuestion = getRandomQuestion(spanishVerbs, spanishSubjects);
  print("Prompt: ${randomQuestion.prompt}");
  print("Answer: ${randomQuestion.answer}");
}
