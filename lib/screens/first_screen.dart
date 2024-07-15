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
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.showSnackbar(GetSnackBar(
                title: 'Message',
                message: 'Deleted Succesfully',
                icon: Icon(Icons.warning,color: Colors.white,),
                duration: Duration(seconds: 5),
                backgroundColor: Colors.green,
              ));
            },
                child:Text('Snackbar example')),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              // Get.off(ThirdPage());
              Get.snackbar('Warning', 'can;t delete',
                icon: const Icon(Icons.warning,color: Colors.white,),
                duration: const Duration(seconds: 5),
                borderColor: Colors.red
              );
            }, child: Text('Go to third page')),
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
                Get.defaultDialog(
                  title: 'Message',
                  content: Text('Do u want to go next page ?'),
                  // backgroundColor: Colors.purple.shade200,
                  actions: [
                    TextButton(onPressed: (){
                      Get.to(SecondScreen());
                },
                        child: Text('Yes',style: TextStyle(color: Colors.green,fontSize: 20),)),
                    TextButton(onPressed: (){
                      Get.back();
                },
                        child: Text('No',style: TextStyle(color: Colors.red,fontSize: 20),))
                  ],

                );
              },
              child: Text('Go to second page',style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
