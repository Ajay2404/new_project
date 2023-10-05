import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:new_project/routes/index.dart';

import 'common/theme/app_theme.dart';
import 'common/theme/theme_service.dart';

void main() async {
  await GetStorage.init();
// Get.put(AppController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeService().theme,
        theme: AppTheme.fromType(ThemeType.light).themeData,
        darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
        locale: const Locale('en', 'US'),
        // translations: Language(),
        fallbackLocale: const Locale('en', 'US'),
        // home: SplashScreen(),
        // title: appFonts.zomo.tr,
        getPages: appRoute.getPages,
        debugShowCheckedModeBanner: false);
  }
}
