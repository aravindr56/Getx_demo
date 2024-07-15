import 'package:flutter/material.dart';
import 'package:get/get.dart';
final RxInt counter=0.obs;
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home page', style: TextStyle(color: Colors.purple, fontSize: 20),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() =>
              Text('Counter:${counter.value}',
                  style: TextStyle(color: Colors.purple, fontSize: 25,))),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: () {
              counter.value++;
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple
            ),
            child: Text(
              '+', style: TextStyle(color: Colors.black, fontSize: 20),),),
          Center(
            child: GestureDetector(
                onTap: () {
                  Get.toNamed('/about');
                },
                child: Text('Go to about page',
                  style: TextStyle(color: Colors.black, fontSize: 25),)),
          ),
        ],
      ),
    );
  }
}
