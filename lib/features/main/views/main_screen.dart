import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_a/config/routes/app_pages.dart';
import 'package:web_a/config/themes/app_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
