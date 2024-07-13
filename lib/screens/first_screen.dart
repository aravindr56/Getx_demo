import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screens/second_screen.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page',style: TextStyle(color: Colors.purple,fontSize: 25),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.to(SecondScreen());
          },
          child: Text('next',style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }
}
