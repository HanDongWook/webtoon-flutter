import 'package:flutter/material.dart';
import 'package:webtoon_flutter/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
