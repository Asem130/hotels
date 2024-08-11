import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotels/core/constants/resources/strings_manger.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": AppArabicStrings.splashTextAr,
          "2": AppArabicStrings.selectLanguageAr,
          "3": AppArabicStrings.createNewAccountAr,
          "4": AppArabicStrings.signUpTitleAr,
          "5": AppArabicStrings.firstNameAr,
          "6": AppArabicStrings.lastNameAr,
          "7": AppArabicStrings.emailAr,
          "8": AppArabicStrings.passwordAr,
          "9": AppArabicStrings.confirmAr,
          "10": AppArabicStrings.alreadyHaveAccountAr,
          "11": AppArabicStrings.signInAr,
        },
        "en": {
          "1": AppEnglishStrings.splashTextEn,
          "2": AppEnglishStrings.selectLanguageEn,
          "3": AppEnglishStrings.createNewAccountEn,
          "4": AppEnglishStrings.signUpTitleEn,
          "5": AppEnglishStrings.firstNameEn,
          "6": AppEnglishStrings.lastNameEn,
          "7": AppEnglishStrings.emailEn,
          "8": AppEnglishStrings.passwordEn,
          "9": AppEnglishStrings.confirmEn,
          "10": AppEnglishStrings.alreadyHaveAccountEn,
          "11": AppEnglishStrings.signInEn,
        },
      };
}
