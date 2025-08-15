import 'package:flutter/material.dart';

import 'package:flutter_application_1/app/core/theme.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  //await initial(); 
  //await Get.find<MatrialAppService>().getInit();
  runApp(
    const MyApp(),
  );
}




// Future initial() async {
//   Get.put(MatrialAppService());
// }




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     // locale: const Locale("fa"),
     // translationsKeys: AppTranslation.translations,
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      title: "Hydro Machine",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

