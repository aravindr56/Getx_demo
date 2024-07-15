import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_demo/app/routes.dart';
import 'package:getx_demo/splash_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      // initialRoute: '/home',
      // getPages: appRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}