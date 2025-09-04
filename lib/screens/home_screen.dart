import 'package:flutter/material.dart';
import 'package:webtoon_flutter/models/webtoon_model.dart';
import 'package:webtoon_flutter/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

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
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text("There is Data");
          }
          return Text("Loading");
        },
      ),
    );
  }
}
