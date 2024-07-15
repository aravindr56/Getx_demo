import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third  Page',style: TextStyle(color: Colors.purple,fontSize: 25),),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Welcome Getx demo'),
      ),
    );
  }
}
