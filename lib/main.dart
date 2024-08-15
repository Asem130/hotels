import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:hotels/controller/language_controller.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';
import 'package:hotels/core/localization/translation.dart';
import 'package:hotels/core/services/binding.dart';
import 'package:hotels/core/services/services.dart';

void main() async {
  WidgetsFlutterBinding();
  await initialServices();
  
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
        theme: controller.appTheme,
        locale: controller.language,
        initialBinding: AppBinding(),
        debugShowCheckedModeBanner: false,
        getPages: routes,
        translations: MyTranslation(),
      ),
    );
  }
}
