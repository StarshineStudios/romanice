//This shows all the cases, numbers, gender, voices, etc in ALL ROMANCE LANUAGES
//this should show the abbreviated forms we will use ACROSS THE APP

//Note that sometimes the SAME FORM will be called DIFFERENT THINGS
//for example, the PERFECT in latin is called the PRETERITE in Spanish

//Sometimes DIFFERENT FORMS will have the SAME NAME
//spanish PERFECT can mean BOTH has amado or amaste, while

//forms names cna be confusing

Map<String, String> lengthenNumber = {
  's': 'singular', //es, la, fr, it, pt, ro
  'p': 'plural', //es, la, fr, it, pt, ro
};
Map<String, String> lengthenGender = {
  'm': 'masculine', //es, la, fr, it, pt, ro
  'f': 'feminine', //es, la, fr, it, pt, ro
  'n': 'neuter', //la

  'i': 'irregular', //used in italian to mean neuter-like words
};

//only latin and romanian have cases for non pronouns.
//nom+acc and gen+dat are same in romanian
Map<String, String> lengthenCase = {
  'nom': 'nominative', //la, ro
  'acc': 'accusative', //la, ro
  'gen': 'genitive', //la, ro
  'dat': 'dative', //la, ro
  'abl': 'ablative',
  'voc': 'vocative', //la, ro
  'loc': 'locative',
};

//romanian sometimes counts verbal nouns as moods.
//I will not because it does not make sense.
Map<String, String> lengthenMood = {
  'ind': 'indicative', //es, la, fr, it, pt, ro
  'sub': 'subjunctive', //es, la, fr, it, pt, ro
  'imp': 'imperative', //es, la, fr, it, pt, ro

  //SAME FORM
  'opt': 'optative', //ro
  'con': 'conditional', //ro, it (italian, french, and romanian considers conditional a mood. spanish does not. )
  'pre': 'presumptive', //ro
};

//only latin has a proper passive voice
Map<String, String> lengthenVoice = {
  'act': 'active', //la
  'pas': 'passive', //la
};

//i will not count progressive tenses as tenses, but i will count compound ones
Map<String, String> lengthenTense = {
  //These are the six simple latin tenses.
  //I will use these exclusively for latin, as
  //romance languages often call the same tense in their language and in latin
  //different names
  'pres': 'present', //la
  'imp': 'imperfect', //la
  'fut': 'future', //la
  'perf': 'perfect', //la
  'plup': 'pluperfect', //la
  'futp': 'future perfect', //la

  //These are for romance languages
  //there will be some redundancy for clarity.
  //r at front means romance

  //THESE ARE NOT ENGLISH FORMS. THEY ARE ROMANCE NAMES.
  //Simple forms
  'rpres': 'present',
  'rimp': 'imperfect',
  'rfut': 'future',
  'rperf': 'simple past',
  'rcond': 'conditional',

  //compound forms
  'rperfc': 'compound past',
  'rplup': 'pluperfect',
  'rfutp': 'future perfect',
  'rant': 'past anterior',
  'rcondp': 'conditional perfect',
};
Map<String, String> lengthenPerson = {
  '1': 'first person',
  '2': 'second person',
  '3': 'third person',
};
