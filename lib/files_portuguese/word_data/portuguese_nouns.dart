import 'package:colorguesser/core/enums.dart';

import '../portuguese_classes.dart';

List<PortugueseNoun> portugueseNouns = [
  homem,
  mulher,
  menino,
  menina,
  gato,
  cachorro,
  livro,
  arvore,
  estrela,
  edificio,
];

PortugueseNoun homem = const PortugueseNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'homem',
    Number.p: 'homens',
  },
);

PortugueseNoun mulher = const PortugueseNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'mulher',
    Number.p: 'mulheres',
  },
);

PortugueseNoun menino = const PortugueseNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'menino',
    Number.p: 'meninos',
  },
);

PortugueseNoun menina = const PortugueseNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'menina',
    Number.p: 'meninas',
  },
);

PortugueseNoun gato = const PortugueseNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'gato',
    Number.p: 'gatos',
  },
);

PortugueseNoun cachorro = const PortugueseNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'cachorro',
    Number.p: 'cachorros',
  },
);

PortugueseNoun livro = const PortugueseNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'livro',
    Number.p: 'livros',
  },
);

PortugueseNoun arvore = const PortugueseNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'árvore',
    Number.p: 'árvores',
  },
);

PortugueseNoun estrela = const PortugueseNoun(
  gender: Gender.f,
  declension: {
    Number.s: 'estrela',
    Number.p: 'estrelas',
  },
);

PortugueseNoun edificio = const PortugueseNoun(
  gender: Gender.m,
  declension: {
    Number.s: 'edifício',
    Number.p: 'edifícios',
  },
);
