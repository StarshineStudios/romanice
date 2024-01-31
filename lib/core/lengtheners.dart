//This shows all the cases, numbers, gender, voices, etc in ALL ROMANCE LANUAGES
//this should show the abbreviated forms we will use ACROSS THE APP

//Note that sometimes the SAME FORM will be called DIFFERENT THINGS
//for example, the PERFECT in latin is called the PRETERITE in Spanish

//Sometimes DIFFERENT FORMS will have the SAME NAME
//spanish PERFECT can mean BOTH has amado or amaste, while

//forms names can be confusing

//NOTE THAT ON THE RIGHT IS NOT WHAT WILL BE DISPLAYED, NOR IS IT THE ENGLISH FORM OF THE WORD.
//THE ACTUAL FORM WILL BE TRANSLATED. THE WORD ROMANCE WILL NOT APPEAR IN FRONT OF ANY
//THIS EXISTS ONLY TO SIMPLIFY THE CODE
import 'package:colorguesser/core/enums.dart';

Map<Number, String> lengthenNumber = {
  Number.s: 'singular', //es, la, fr, it, pt, ro
  Number.p: 'plural', //es, la, fr, it, pt, ro
};
Map<Gender, String> lengthenGender = {
  Gender.m: 'masculine', //es, la, fr, it, pt, ro
  Gender.f: 'feminine', //es, la, fr, it, pt, ro
  Gender.n: 'neuter', //la
  Gender.i: 'irregular', //used in italian to mean neuter-like words
};

Map<Gender, String> shortenGender = {
  Gender.m: '(m)', //es, la, fr, it, pt, ro
  Gender.f: '(f)', //es, la, fr, it, pt, ro
  Gender.n: '(n)', //la
  Gender.i: '(i)', //used in italian to mean neuter-like words
};

//only latin and romanian have cases for non pronouns.
//nom+acc and gen+dat are same in romanian
Map<Case, String> lengthenCase = {
  Case.nom: 'nominative', //la, ro
  Case.acc: 'accusative', //la, ro
  Case.gen: 'genitive', //la, ro
  Case.dat: 'dative', //la, ro
  Case.abl: 'ablative',
  Case.voc: 'vocative', //la, ro
  Case.loc: 'locative',

  Case.nomacc: 'nominative/accusative',
  Case.gendat: 'genitive/dative',
};

//romanian sometimes counts verbal nouns like gerunds and infinitives as moods.
//I will not because it does not make sense.
Map<Mood, String> lengthenMood = {
  Mood.ind: 'indicative', //es, la, fr, it, pt, ro
  Mood.sub: 'subjunctive', //es, la, fr, it, pt, ro
  Mood.imp: 'imperative', //es, la, fr, it, pt, ro

  //SAME FORM
  Mood.optcon: 'optative/conditional', //ro
  Mood.con: 'conditional', //ro, it (italian, french, and romanian considers conditional a mood. spanish does not. )
  Mood.pre: 'presumptive', //ro
};

//only latin has a proper passive voice
Map<Voice, String> lengthenVoice = {
  Voice.act: 'active', //la
  Voice.pas: 'passive', //la
};

//i will not count progressive tenses as tenses, but i will count compound ones
Map<Tense, String> lengthenTense = {
  //These are the six simple latin tenses.
  //I will use these exclusively for latin, as
  //romance languages often call the same tense in their language and in latin
  //different names
  Tense.present: 'present', //la
  Tense.imperfect: 'imperfect', //la
  Tense.future: 'future', //la
  Tense.perfect: 'perfect', //la
  Tense.pluperfect: 'pluperfect', //la
  Tense.futurePerfect: 'future perfect', //la

  //These are for romance languages
  //there will be some redundancy for clarity.
  //r at front means romance

  //Simple forms
  Tense.presentRomance: 'romance present', //es, fr, it, pt, ro
  Tense.imperfectRomance: 'romance imperfect', //es, fr, it, pt, ro
  Tense.futureRomance: 'romance future', //es, fr, it, pt
  Tense.perfectRomance: 'romance perfect', //es, fr, it, pt, ro
  Tense.conditionalRomance: 'romance conditional', //es, pt (other languages consider cond to be a mood)
  //romanian and portiuguese have a strange simple pluperfect tense
  Tense.pluperfectRomance: 'romance pluperfect', //ro, pt

  //compound forms
  Tense.perfectRomanceCompound: 'romance compound perfect',
  Tense.pluperfectRomanceCompound: 'romance compound pluperfect',
  Tense.futurePerfectRomanceCompound: 'romance future perfect',
  Tense.anteriorRomanceCompound: 'romance past anterior',
  Tense.conditionalPerfectRomanceCompound: 'romance conditional perfect',

  //spanish only soubjunctive imperfect forms
  Tense.imperfectSpanishRa: 'imperfect (ra)', //es
  Tense.imperfectSpanishSe: 'imperfect (se)', //es
  Tense.pluperfectSpanishCompoundRa: 'pluperfect (ra)',
  Tense.pluperfectSpanishCompoundSe: 'pluperfect (se)',

  //Romanian only future forms
  Tense.futureRomanianCompoundVrea: 'future (vrea)',
  // 'r futp c vrea: '', //I can just use future perfect compound for this
  Tense.futureRomanianCompoundO: 'future (o)',
  Tense.futureRomanianCompoundAvea: 'future (avea)', //rare, but forms future in the past so I will include it
  Tense.futurePastRomanianCompound: 'future in the past',
};
Map<Person, String> lengthenPerson = {
  Person.first: 'first person',
  Person.second: 'second person',
  Person.third: 'third person',
};

Map<WordTypePlural, String> lengthenWordTypePlural = {
  WordTypePlural.nouns: 'nouns',
  WordTypePlural.adjectives: 'adjectives',
  WordTypePlural.verbs: 'verbs',
};
