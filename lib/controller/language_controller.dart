import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/core/constants/resources/app_theme.dart';
import 'package:hotels/core/services/services.dart';

abstract class LanguageController extends GetxController {
  changeLanguage(languageCode);
}

class LanguageControllerIml extends LanguageController {
  MyServices services = Get.find();
  Locale? language;

  ThemeData appTheme = themeEnglish;
  @override
  changeLanguage(languageCode) {
    Locale locale = Locale(languageCode);

    services.sharedPreferences.setString("language", languageCode);
    appTheme = languageCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = services.sharedPreferences.getString("language");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
