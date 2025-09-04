import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webtoon_flutter/network/default_http.dart';
import 'package:webtoon_flutter/screens/home_screen.dart';
import 'package:webtoon_flutter/sharedPreferences/SharedPreferencesHelper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  HttpOverrides.global = DefaultHttpOverrides();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
