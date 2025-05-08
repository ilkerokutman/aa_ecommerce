import 'package:aa_ecommerce/app/features/shared/data/controllers/bindings.dart';
import 'package:aa_ecommerce/app/routes/pages.dart';
import 'package:aa_ecommerce/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constants/strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: UiStrings.appName,
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      initialRoute: Routes.home,
      getPages: getPages,
      // theme: ,
      // darkTheme:,
      // themeMode: ThemeMode.system,
      // locale: ,
      // fallbackLocale: ,
      onReady: () {
        print('App ready');

        // TODO: diskten bir önceki lisana bak ve o lisanı yükle
        // TODO: dıskten son temaya bakıp uygula
      },
    );
  }
}
