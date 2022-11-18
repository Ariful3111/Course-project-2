import 'package:course_project_2/Route/route.dart';
import 'package:course_project_2/Theme/App_Theme.dart';
import 'package:flutter/material.dart';
import 'package:course_project_2/Splash_screen.dart';
import 'package:get/get.dart';
import 'package:course_project_2/Route/route.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(),
      initialRoute: "/splash-screen",
      getPages: getpages,
    );
  }
}
