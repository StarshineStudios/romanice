enum Number { s, p }

enum Gender { m, f, n, i }

enum Case { nom, acc, gen, dat, abl, voc, loc, nomacc, gendat }

enum Mood { ind, sub, imp, optcon, con, pre }

enum Voice { act, pas }

enum Tense {
  present,
  imperfect,
  future,
  perfect,
  pluperfect,
  futurePerfect,

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

  imperfectSpanishRa,
  imperfectSpanishSe,

  futureRomanianCompoundVrea,
  futureRomanianCompoundO,
  futureRomanianCompoundAvea,
  futurePastRomanianCompound,
}

enum Person {
  first,
  second,
  third,
}
