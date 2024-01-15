import '../../core/enums.dart';
import '../portuguese_classes.dart';

List<PortugueseVerb> portugueseVerbs = [
  ser,
];

PortugueseVerb ser = PortugueseVerb(
  infinitive: 'ser',
  gerund: 'sendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'sido', Gender.f: 'sida'},
        Number.p: {Gender.m: 'sidos', Gender.f: 'sidas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sou', Person.second: 'és', Person.third: 'é'},
        Number.p: {Person.first: 'somos', Person.second: 'sois', Person.third: 'são'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'era', Person.second: 'eras', Person.third: 'era'},
        Number.p: {Person.first: 'éramos', Person.second: 'éreis', Person.third: 'eram'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fui', Person.second: 'foste', Person.third: 'foi'},
        Number.p: {Person.first: 'fomos', Person.second: 'fostes', Person.third: 'foram'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fora', Person.second: 'foras', Person.third: 'fora'},
        Number.p: {Person.first: 'fôramos', Person.second: 'fôreis', Person.third: 'foram'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'serei', Person.second: 'serás', Person.third: 'será'},
        Number.p: {Person.first: 'seremos', Person.second: 'sereis', Person.third: 'serão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'seria', Person.second: 'serias', Person.third: 'seria'},
        Number.p: {Person.first: 'seríamos', Person.second: 'seríeis', Person.third: 'seriam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'seja', Person.second: 'sejas', Person.third: 'seja'},
        Number.p: {Person.first: 'sejamos', Person.second: 'sejais', Person.third: 'sejam'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fosse', Person.second: 'fosses', Person.third: 'fosse'},
        Number.p: {Person.first: 'fôssemos', Person.second: 'fôsseis', Person.third: 'fossem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'for', Person.second: 'fores', Person.third: 'for'},
        Number.p: {Person.first: 'formos', Person.second: 'fordes', Person.third: 'forem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sê', Person.third: 'seja'},
        Number.p: {Person.first: 'sejamos', Person.second: 'sede', Person.third: 'sejam'},
      },
    },
  },
);

PortugueseVerb ter = PortugueseVerb(
  infinitive: 'ter',
  gerund: 'tendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'tido', Gender.f: 'tida'},
        Number.p: {Gender.m: 'tidos', Gender.f: 'tidas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'tenho', Person.second: 'tens', Person.third: 'tem'},
        Number.p: {Person.first: 'temos', Person.second: 'tendes', Person.third: 'têm'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'tinha', Person.second: 'tinhas', Person.third: 'tinha'},
        Number.p: {Person.first: 'tínhamos', Person.second: 'tínheis', Person.third: 'tinham'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'tive', Person.second: 'tiveste', Person.third: 'teve'},
        Number.p: {Person.first: 'tivemos', Person.second: 'tivestes', Person.third: 'tiveram'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'tivera', Person.second: 'tiveras', Person.third: 'tivera'},
        Number.p: {Person.first: 'tivéramos', Person.second: 'tivéreis', Person.third: 'tiveram'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'terei', Person.second: 'terás', Person.third: 'terá'},
        Number.p: {Person.first: 'teremos', Person.second: 'tereis', Person.third: 'terão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'teria', Person.second: 'terias', Person.third: 'teria'},
        Number.p: {Person.first: 'teríamos', Person.second: 'teríeis', Person.third: 'teriam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'tenha', Person.second: 'tenhas', Person.third: 'tenha'},
        Number.p: {Person.first: 'tenhamos', Person.second: 'tenhais', Person.third: 'tenham'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'tivesse', Person.second: 'tivesses', Person.third: 'tivesse'},
        Number.p: {Person.first: 'tivéssemos', Person.second: 'tivésseis', Person.third: 'tivessem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'tiver', Person.second: 'tiveres', Person.third: 'tiver'},
        Number.p: {Person.first: 'tivermos', Person.second: 'tiverdes', Person.third: 'tiverem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'tem', Person.third: 'tenha'},
        Number.p: {Person.first: 'tenhamos', Person.second: 'tende', Person.third: 'tenham'},
      },
    },
  },
);
