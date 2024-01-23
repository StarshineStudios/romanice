import '../../core/enums.dart';
import '../french_classes.dart';

List<FrenchNoun> frenchNouns = [
  homme,
  femme,
  garcon,
  fille,
  chat,
  chien,
  livre,
  arbre,
  etoile,
  batiment,
];

FrenchNoun homme = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'homme', Number.p: 'hommes'},
);

FrenchNoun femme = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'femme', Number.p: 'femmes'},
);

FrenchNoun garcon = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'garçon', Number.p: 'garçons'},
);

FrenchNoun fille = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'fille', Number.p: 'filles'},
);

FrenchNoun chat = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'chat', Number.p: 'chats'},
);

FrenchNoun chien = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'chien', Number.p: 'chiens'},
);

FrenchNoun livre = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'livre', Number.p: 'livres'},
);

FrenchNoun arbre = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'arbre', Number.p: 'arbres'},
);

FrenchNoun etoile = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'étoile', Number.p: 'étoiles'},
);

FrenchNoun batiment = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'bâtiment', Number.p: 'bâtiments'},
);
