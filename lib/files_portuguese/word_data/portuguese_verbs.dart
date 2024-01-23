import '../../core/enums.dart';
import '../portuguese_classes.dart';

List<PortugueseVerb> portugueseVerbs = [
  ser,
  ter,
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

PortugueseAuxiliaryVerb ter2 = PortugueseAuxiliaryVerb(
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

PortugueseVerb amar = PortugueseVerb(
  infinitive: 'amar',
  gerund: 'amando',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'amado', Gender.f: 'amada'},
        Number.p: {Gender.m: 'amados', Gender.f: 'amadas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'amo', Person.second: 'amas', Person.third: 'ama'},
        Number.p: {Person.first: 'amamos', Person.second: 'amais', Person.third: 'amam'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'amava', Person.second: 'amavas', Person.third: 'amava'},
        Number.p: {Person.first: 'amávamos', Person.second: 'amáveis', Person.third: 'amavam'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'amei', Person.second: 'amaste', Person.third: 'amou'},
        Number.p: {Person.first: 'amamos', Person.second: 'amastes', Person.third: 'amaram'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'amara', Person.second: 'amaras', Person.third: 'amara'},
        Number.p: {Person.first: 'amáramos', Person.second: 'amáreis', Person.third: 'amaram'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'amarei', Person.second: 'amarás', Person.third: 'amará'},
        Number.p: {Person.first: 'amaremos', Person.second: 'amareis', Person.third: 'amarão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'amaria', Person.second: 'amarias', Person.third: 'amaria'},
        Number.p: {Person.first: 'amaríamos', Person.second: 'amaríeis', Person.third: 'amariam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'ame', Person.second: 'ames', Person.third: 'ame'},
        Number.p: {Person.first: 'amemos', Person.second: 'ameis', Person.third: 'amem'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'amasse', Person.second: 'amasses', Person.third: 'amasse'},
        Number.p: {Person.first: 'amássemos', Person.second: 'amásseis', Person.third: 'amasseis'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'amar', Person.second: 'amares', Person.third: 'amar'},
        Number.p: {Person.first: 'amarmos', Person.second: 'amardes', Person.third: 'amarem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'ama', Person.third: 'ame'},
        Number.p: {Person.first: 'amemos', Person.second: 'amai', Person.third: 'amem'},
      },
    },
  },
);
PortugueseVerb ver = PortugueseVerb(
  infinitive: 'ver',
  gerund: 'vendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'visto', Gender.f: 'vista'},
        Number.p: {Gender.m: 'vistos', Gender.f: 'vistas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vejo', Person.second: 'vês', Person.third: 'vê'},
        Number.p: {Person.first: 'vemos', Person.second: 'vedes', Person.third: 'veem'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'via', Person.second: 'vias', Person.third: 'via'},
        Number.p: {Person.first: 'víamos', Person.second: 'víeis', Person.third: 'viam'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'vi', Person.second: 'viste', Person.third: 'viu'},
        Number.p: {Person.first: 'vimos', Person.second: 'vistes', Person.third: 'viram'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'vira', Person.second: 'viras', Person.third: 'vira'},
        Number.p: {Person.first: 'víramos', Person.second: 'víreis', Person.third: 'viram'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'verei', Person.second: 'verás', Person.third: 'verá'},
        Number.p: {Person.first: 'veremos', Person.second: 'vereis', Person.third: 'verão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'veria', Person.second: 'verias', Person.third: 'veria'},
        Number.p: {Person.first: 'veríamos', Person.second: 'veríeis', Person.third: 'veriam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'veja', Person.second: 'vejas', Person.third: 'veja'},
        Number.p: {Person.first: 'vejamos', Person.second: 'vejais', Person.third: 'vejam'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'visse', Person.second: 'visses', Person.third: 'visse'},
        Number.p: {Person.first: 'víssemos', Person.second: 'vísseis', Person.third: 'vissem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'vir', Person.second: 'vires', Person.third: 'vir'},
        Number.p: {Person.first: 'virmos', Person.second: 'virdes', Person.third: 'virem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'vê', Person.third: 'veja'},
        Number.p: {Person.first: 'vejamos', Person.second: 'vede', Person.third: 'vejam'},
      },
    },
  },
);
PortugueseVerb fazer = PortugueseVerb(
  infinitive: 'fazer',
  gerund: 'fazendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'feito', Gender.f: 'feita'},
        Number.p: {Gender.m: 'feitos', Gender.f: 'feitas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'faço', Person.second: 'fazes', Person.third: 'faz'},
        Number.p: {Person.first: 'fazemos', Person.second: 'fazeis', Person.third: 'fazem'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fazia', Person.second: 'fazias', Person.third: 'fazia'},
        Number.p: {Person.first: 'fazíamos', Person.second: 'fazíeis', Person.third: 'faziam'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'fiz', Person.second: 'fizeste', Person.third: 'fez'},
        Number.p: {Person.first: 'fizemos', Person.second: 'fizestes', Person.third: 'fizeram'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'fizera', Person.second: 'fizeras', Person.third: 'fizera'},
        Number.p: {Person.first: 'fizéramos', Person.second: 'fizéreis', Person.third: 'fizeram'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'farei', Person.second: 'farás', Person.third: 'fará'},
        Number.p: {Person.first: 'faremos', Person.second: 'fareis', Person.third: 'farão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'faria', Person.second: 'farias', Person.third: 'faria'},
        Number.p: {Person.first: 'faríamos', Person.second: 'faríeis', Person.third: 'fariam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'faça', Person.second: 'faças', Person.third: 'faça'},
        Number.p: {Person.first: 'façamos', Person.second: 'façais', Person.third: 'façam'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'fizesse', Person.second: 'fizesses', Person.third: 'fizesse'},
        Number.p: {Person.first: 'fizéssemos', Person.second: 'fizésseis', Person.third: 'fizessem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'fizer', Person.second: 'fizeres', Person.third: 'fizer'},
        Number.p: {Person.first: 'fizermos', Person.second: 'fizerdes', Person.third: 'fizerem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'faz', Person.third: 'faça'},
        Number.p: {Person.first: 'façamos', Person.second: 'fazei', Person.third: 'façam'},
      },
    },
  },
);
PortugueseVerb querer = PortugueseVerb(
  infinitive: 'querer',
  gerund: 'querendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'querido', Gender.f: 'querida'},
        Number.p: {Gender.m: 'queridos', Gender.f: 'queridas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'quero', Person.second: 'queres', Person.third: 'quer'},
        Number.p: {Person.first: 'queremos', Person.second: 'quereis', Person.third: 'querem'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'queria', Person.second: 'querias', Person.third: 'queria'},
        Number.p: {Person.first: 'queríamos', Person.second: 'queríeis', Person.third: 'queriam'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'quis', Person.second: 'quiseste', Person.third: 'quis'},
        Number.p: {Person.first: 'quisemos', Person.second: 'quisestes', Person.third: 'quiseram'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'quisera', Person.second: 'quiseras', Person.third: 'quisera'},
        Number.p: {Person.first: 'quiséramos', Person.second: 'quiséreis', Person.third: 'quiseram'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'quererei', Person.second: 'quererás', Person.third: 'quererá'},
        Number.p: {Person.first: 'quereremos', Person.second: 'querereis', Person.third: 'quererão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'quereria', Person.second: 'quererias', Person.third: 'quereria'},
        Number.p: {Person.first: 'quereríamos', Person.second: 'quereríeis', Person.third: 'quereriam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'queira', Person.second: 'queiras', Person.third: 'queira'},
        Number.p: {Person.first: 'queiramos', Person.second: 'queirais', Person.third: 'queiram'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'quisesse', Person.second: 'quisesse', Person.third: 'quisesse'},
        Number.p: {Person.first: 'quiséssemos', Person.second: 'quisésseis', Person.third: 'quisessem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'quiser', Person.second: 'quiseres', Person.third: 'quiser'},
        Number.p: {Person.first: 'quisermos', Person.second: 'quiserdes', Person.third: 'quiserem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'quer', Person.third: 'queira'},
        Number.p: {Person.first: 'queiramos', Person.second: 'quiserdes', Person.third: 'queiram'},
      },
    },
  },
);
PortugueseVerb poder = PortugueseVerb(
  infinitive: 'poder',
  gerund: 'podendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'podido', Gender.f: 'podida'},
        Number.p: {Gender.m: 'podidos', Gender.f: 'podidas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'posso', Person.second: 'podes', Person.third: 'pode'},
        Number.p: {Person.first: 'podemos', Person.second: 'podeis', Person.third: 'podem'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'podia', Person.second: 'podias', Person.third: 'podia'},
        Number.p: {Person.first: 'podíamos', Person.second: 'podíeis', Person.third: 'podiam'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'pude', Person.second: 'pudeste', Person.third: 'pôde'},
        Number.p: {Person.first: 'podemos', Person.second: 'pudestes', Person.third: 'puderam'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'pudera', Person.second: 'puderas', Person.third: 'pudera'},
        Number.p: {Person.first: 'pudéramos', Person.second: 'pudéreis', Person.third: 'puderam'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'poderei', Person.second: 'poderás', Person.third: 'poderá'},
        Number.p: {Person.first: 'poderemos', Person.second: 'podereis', Person.third: 'poderão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'poderia', Person.second: 'poderias', Person.third: 'poderia'},
        Number.p: {Person.first: 'poderíamos', Person.second: 'poderíeis', Person.third: 'poderiam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'possa', Person.second: 'possas', Person.third: 'possa'},
        Number.p: {Person.first: 'possamos', Person.second: 'possais', Person.third: 'possam'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'pudesse', Person.second: 'pudesses', Person.third: 'pudesse'},
        Number.p: {Person.first: 'pudéssemos', Person.second: 'pudésseis', Person.third: 'pudessem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'puder', Person.second: 'puderes', Person.third: 'puder'},
        Number.p: {Person.first: 'pudermos', Person.second: 'puderdes', Person.third: 'puderem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'pode', Person.third: 'possa'},
        Number.p: {Person.first: 'possamos', Person.second: 'podei', Person.third: 'possam'},
      },
    },
  },
);
PortugueseVerb dever = PortugueseVerb(
  infinitive: 'dever',
  gerund: 'devendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'devido', Gender.f: 'devida'},
        Number.p: {Gender.m: 'devidos', Gender.f: 'devidas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'devo', Person.second: 'deves', Person.third: 'deve'},
        Number.p: {Person.first: 'devemos', Person.second: 'deveis', Person.third: 'devem'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'devia', Person.second: 'devias', Person.third: 'devia'},
        Number.p: {Person.first: 'devíamos', Person.second: 'devíeis', Person.third: 'deviam'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'devi', Person.second: 'deveste', Person.third: 'deveu'},
        Number.p: {Person.first: 'devemos', Person.second: 'devestes', Person.third: 'deveram'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'devera', Person.second: 'deveras', Person.third: 'devera'},
        Number.p: {Person.first: 'devermos', Person.second: 'devereis', Person.third: 'deveram'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'deverei', Person.second: 'deverás', Person.third: 'deverá'},
        Number.p: {Person.first: 'deveremos', Person.second: 'devereis', Person.third: 'deverão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'deveria', Person.second: 'deverias', Person.third: 'deveria'},
        Number.p: {Person.first: 'deveríamos', Person.second: 'deveríeis', Person.third: 'deveriam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'deva', Person.second: 'devas', Person.third: 'deva'},
        Number.p: {Person.first: 'devamos', Person.second: 'devais', Person.third: 'devam'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'devesse', Person.second: 'devesses', Person.third: 'devesse'},
        Number.p: {Person.first: 'devêssemos', Person.second: 'devêsseis', Person.third: 'devessem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'dever', Person.second: 'deveres', Person.third: 'dever'},
        Number.p: {Person.first: 'devermos', Person.second: 'deverdes', Person.third: 'deverem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'deve', Person.third: 'deva'},
        Number.p: {Person.first: 'devamos', Person.second: 'devede', Person.third: 'devam'},
      },
    },
  },
);
PortugueseVerb ir = PortugueseVerb(
  infinitive: 'ir',
  gerund: 'indo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'ido', Gender.f: 'ida'},
        Number.p: {Gender.m: 'idos', Gender.f: 'idas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vou', Person.second: 'vais', Person.third: 'vai'},
        Number.p: {Person.first: 'vamos', Person.second: 'ides', Person.third: 'vão'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'ia', Person.second: 'ias', Person.third: 'ia'},
        Number.p: {Person.first: 'íamos', Person.second: 'íeis', Person.third: 'iam'},
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
        Number.s: {Person.first: 'irei', Person.second: 'irás', Person.third: 'irá'},
        Number.p: {Person.first: 'iremos', Person.second: 'ireis', Person.third: 'irão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'iria', Person.second: 'irias', Person.third: 'iria'},
        Number.p: {Person.first: 'iríamos', Person.second: 'iríeis', Person.third: 'iriam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'vá', Person.second: 'vás', Person.third: 'vá'},
        Number.p: {Person.first: 'vamos', Person.second: 'vades', Person.third: 'vão'},
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
        Number.s: {Person.second: 'vai', Person.third: 'vá'},
        Number.p: {Person.first: 'vamos', Person.second: 'ide', Person.third: 'vão'},
      },
    },
  },
);
PortugueseVerb saber = PortugueseVerb(
  infinitive: 'saber',
  gerund: 'sabendo',
  participles: {
    Tense.perfectRomance: const PortugueseAdjective(
      declension: {
        Number.s: {Gender.m: 'sabido', Gender.f: 'sabida'},
        Number.p: {Gender.m: 'sabidos', Gender.f: 'sabidas'}
      },
    ),
  },
  conjugation: {
    Mood.ind: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'sei', Person.second: 'sabes', Person.third: 'sabe'},
        Number.p: {Person.first: 'sabemos', Person.second: 'sabeis', Person.third: 'sabem'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'sabia', Person.second: 'sabias', Person.third: 'sabia'},
        Number.p: {Person.first: 'sabíamos', Person.second: 'sabíeis', Person.third: 'sabiam'},
      },
      Tense.perfectRomance: {
        Number.s: {Person.first: 'soube', Person.second: 'soubeste', Person.third: 'soube'},
        Number.p: {Person.first: 'soubemos', Person.second: 'soubestes', Person.third: 'souberam'},
      },
      Tense.pluperfectRomance: {
        Number.s: {Person.first: 'soubera', Person.second: 'souberas', Person.third: 'soubera'},
        Number.p: {Person.first: 'soubéramos', Person.second: 'soubéreis', Person.third: 'souberam'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'saberei', Person.second: 'saberás', Person.third: 'saberá'},
        Number.p: {Person.first: 'saberemos', Person.second: 'sabereis', Person.third: 'saberão'},
      },
      Tense.conditionalRomance: {
        Number.s: {Person.first: 'saberia', Person.second: 'saberias', Person.third: 'saberia'},
        Number.p: {Person.first: 'saberíamos', Person.second: 'saberíeis', Person.third: 'saberiam'},
      },
    },
    Mood.sub: {
      Tense.presentRomance: {
        Number.s: {Person.first: 'saiba', Person.second: 'saibas', Person.third: 'saiba'},
        Number.p: {Person.first: 'saibamos', Person.second: 'saibais', Person.third: 'saibam'},
      },
      Tense.imperfectRomance: {
        Number.s: {Person.first: 'soubesse', Person.second: 'soubesses', Person.third: 'soubesse'},
        Number.p: {Person.first: 'soubéssemos', Person.second: 'soubésseis', Person.third: 'soubessem'},
      },
      Tense.futureRomance: {
        Number.s: {Person.first: 'souber', Person.second: 'souberes', Person.third: 'souber'},
        Number.p: {Person.first: 'soubermos', Person.second: 'souberdes', Person.third: 'souberem'},
      },
    },
    Mood.imp: {
      Tense.presentRomance: {
        Number.s: {Person.second: 'sabe', Person.third: 'saiba'},
        Number.p: {Person.first: 'saibamos', Person.second: 'sabei', Person.third: 'saibam'},
      },
    },
  },
);
