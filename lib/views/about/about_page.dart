import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About page',style: TextStyle(color: Colors.purple,fontSize: 20),),
        centerTitle: true,
      ),
    );
  }
}
