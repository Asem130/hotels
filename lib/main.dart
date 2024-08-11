import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:hotels/controller/language_controller.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';
import 'package:hotels/core/constants/resources/theme_manger.dart';
import 'package:hotels/core/localization/translation.dart';
import 'package:hotels/core/services/binding.dart';
import 'package:hotels/core/services/services.dart';

void main() {
  WidgetsFlutterBinding();
  initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LanguageControllerIml controller = Get.put(LanguageControllerIml());

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        locale: controller.language,
        initialBinding: AppBinding(),
        theme: getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        getPages: routes,
        translations: MyTranslation(),
      ),
    );
  }
}
