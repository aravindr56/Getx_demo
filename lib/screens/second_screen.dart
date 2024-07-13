import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second  Page',style: TextStyle(color: Colors.purple,fontSize: 25),),
        centerTitle: true,
      ),
    );
  }
}
