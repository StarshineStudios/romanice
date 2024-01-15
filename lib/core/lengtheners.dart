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

  'nomacc': 'nominative/accusative',
  'gendat': 'genitive/dative',
};

//romanian sometimes counts verbal nouns as moods.
//I will not because it does not make sense.
Map<String, String> lengthenMood = {
  'ind': 'indicative', //es, la, fr, it, pt, ro
  'sub': 'subjunctive', //es, la, fr, it, pt, ro
  'imp': 'imperative', //es, la, fr, it, pt, ro

  //SAME FORM
  'optcon': 'optative/conditional', //ro
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

  //Simple forms
  'r pres': 'romance present', //es, fr, it, pt, ro
  'r imp': 'romance imperfect', //es, fr, it, pt, ro
  'r fut': 'romance future', //es, fr, it, pt
  'r perf': 'romance perfect', //es, fr, it, pt, ro
  'r con': 'romance conditional', //es, pt (other languages consider cond to be a mood)
  //romanian and portiuguese have a strange simple pluperfect tense
  'r plup': 'romance pluperfect', //ro, pt

  //compound forms
  'r perf c': 'romance compound perfect',
  'r plup c': 'romance compound pluperfect',
  'r futp c': 'romance future perfect',
  'r ante c': 'romance past anterior',
  'r condp c': 'romance conditional perfect',

  //spanish only soubjunctive imperfect forms
  'r imp ra': 'imperfect (ra)', //es
  'r imp se': 'imperfect (se)', //es

  //Romanian only future forms
  'r fut c vrea': 'future (vrea)',
  // 'r futp c vrea': '', //I can just use future perfect compound for this
  'r fut c o': 'future (o)',
  'r fut c avea': 'future (avea)', //rare, but forms future in the past so I will include it
  'r futpast c': 'future in the past',
};
Map<String, String> lengthenPerson = {
  '1': 'first person',
  '2': 'second person',
  '3': 'third person',
};

//participles can be past or whatever