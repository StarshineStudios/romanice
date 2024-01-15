import '../../core/enums.dart';
import '../french_classes.dart';

List<FrenchNoun> frenchNouns = [
  etoile,
  maison,
  voiture,
  chien,
  chat,
  pomme,
  livre,
  chaise,
  table,
  sac,
  arbre,
  homme,
  femme,
  personne,
  fille,
  garcon,
];

FrenchNoun etoile = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'étoile', Number.p: 'étoiles'},
);

FrenchNoun maison = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'maison', Number.p: 'maisons'},
);

FrenchNoun voiture = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'voiture', Number.p: 'voitures'},
);

FrenchNoun chien = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'chien', Number.p: 'chiens'},
);

FrenchNoun chat = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'chat', Number.p: 'chats'},
);

FrenchNoun pomme = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'pomme', Number.p: 'pommes'},
);

FrenchNoun livre = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'livre', Number.p: 'livres'},
);

FrenchNoun chaise = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'chaise', Number.p: 'chaises'},
);

FrenchNoun table = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'table', Number.p: 'tables'},
);

FrenchNoun sac = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'sac', Number.p: 'sacs'},
);

FrenchNoun arbre = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'arbre', Number.p: 'arbres'},
);

FrenchNoun homme = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'homme', Number.p: 'hommes'},
);

FrenchNoun femme = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'femme', Number.p: 'femmes'},
);

FrenchNoun personne = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'personne', Number.p: 'personnes'},
);

FrenchNoun fille = const FrenchNoun(
  gender: Gender.f,
  declension: {Number.s: 'fille', Number.p: 'filles'},
);

FrenchNoun garcon = const FrenchNoun(
  gender: Gender.m,
  declension: {Number.s: 'garçon', Number.p: 'garçons'},
);
