class Word {
  String? getLemma() {
    return null;
  }
}

class Section {
  final String sectionName;
  final List<Subsection> subsections;
  const Section({required this.subsections, required this.sectionName});
}

class Subsection {
  final String subsectionName;
  final Map<String, String> entries;
  const Subsection({required this.entries, required this.subsectionName});
}

class RomanceAdjective implements Word {
  // final Map<Number, Map<Gender, String>> declension;
  // const RomanceAdjective({
  //   required this.declension,
  // });

  @override
  String? getLemma() {
    return null;
  }

  // String? declineAdjective(Number n, Gender g) {
  //   return declension[n]?[g];
  // }
  List<Section> getDisplayInflection() {
    return [];
  }
}

class RomanceNoun implements Word {
  // final Map<Number, String> declension;
  // final Gender gender;
  // const RomanceNoun({
  //   // required this.gender,
  //   // required this.declension,
  // });
  @override
  String? getLemma() {
    return null;
  }

  // String? declineNoun(Number n) {
  //   return declension[n];
  // }
  List<Section> getDisplayInflection() {
    return [];
  }
}

class RomanceVerb implements Word {
  // String infinitive;
  // RomanceAuxiliaryVerb auxiliaryVerb;
  // Map<Tense, RomanceAdjective> participles;
  // Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  // RomanceVerb({
  //   // required this.infinitive,
  //   // required this.auxiliaryVerb,
  //   // required this.participles,
  //   // required this.conjugation,
  // });
  @override
  String? getLemma() {
    return null;
  }

  // String? conjugateVerb(String m, String t, String n, String p, {String g = 'm'}) {
  //   return conjugation[m]?[t]?[n]?[p];
  // }
  List<Section> getDisplayInflection() {
    return [];
  }
}

class RomanceAuxiliaryVerb implements Word {
  // String infinitive;
  // Map<String, RomanceAdjective> participles;
  // Map<String, Map<String, Map<String, Map<String, String>>>> conjugation;

  // RomanceAuxiliaryVerb({
  //   required this.infinitive,
  //   // required this.participles,
  //   // required this.conjugation,
  // });
  @override
  String? getLemma() {
    return null;
  }
  // String? conjugateVerb(String m, String t, String n, String p, {String g = 'm'}) {

  //     return conjugation[m]?[t]?[n]?[p];

  // }
}
