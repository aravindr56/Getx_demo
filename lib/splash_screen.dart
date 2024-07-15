import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/views/home/home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
 void initState() {
    // TODO: implement initState
    super.initState();
    initalData();
  }
  Future<void>  initalData() async{
  print('initial dat');
  await Future.delayed(Duration(seconds: 1));
  Get.to(HomePage(),transition: Transition.fadeIn,duration: Duration(seconds: 2));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
