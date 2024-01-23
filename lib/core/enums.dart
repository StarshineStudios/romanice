enum Number { s, p }

enum Gender { m, f, n, i }

enum Case { nom, acc, gen, dat, abl, voc, loc, nomacc, gendat }

enum Mood { ind, sub, imp, optcon, con, pre }

enum Voice { act, pas }

enum Person { first, second, third }

enum WordTypePlural { nouns, adjectives, verbs }

enum Tense {
  //Latin-Exclusive Tenses
  present,
  imperfect,
  future,
  perfect,
  pluperfect,
  futurePerfect,

  //Romance Tenses
  presentRomance,
  imperfectRomance,
  futureRomance,
  perfectRomance,
  conditionalRomance,
  pluperfectRomance,

  perfectRomanceCompound,
  pluperfectRomanceCompound,
  futurePerfectRomanceCompound,
  anteriorRomanceCompound,
  conditionalPerfectRomanceCompound,

  //Special Spanish Subjunctive Imperfect Tenses
  imperfectSpanishRa,
  imperfectSpanishSe,
  pluperfectSpanishCompoundRa,
  pluperfectSpanishCompoundSe,

  //Special Romanian Tenses
  futureRomanianCompoundVrea,
  futureRomanianCompoundO,
  futureRomanianCompoundAvea,
  futurePastRomanianCompound,
}
