import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/core/services/services.dart';

abstract class LanguageController extends GetxController {
  changeLanguage(languageCode);
}

class LanguageControllerIml extends LanguageController {
  MyServices services = Get.find();
  Locale? language;
  @override
  changeLanguage(languageCode) {
    Locale locale = Locale(languageCode);
    services.sharedPreferences.setString("language", languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = services.sharedPreferences.getString("language");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
