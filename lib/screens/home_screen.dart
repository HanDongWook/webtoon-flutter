import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        title: Text('오늘의 웹툰', style: TextStyle(fontSize: 26)),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.green,
        centerTitle: true,
        shadowColor: Colors.black,
      ),
    );
  }
}
