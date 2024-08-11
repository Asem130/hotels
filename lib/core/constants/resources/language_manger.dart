enum LanguageType {
  arabic,
  english,
}

const String arabic = "ar";
const english = "en";

extension LanguageTypeExtention on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.arabic:
        return arabic;
      case LanguageType.english:
        return english;
    }
  }
}
