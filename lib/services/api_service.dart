import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon_flutter/models/webtoon_model.dart';

class ApiService {
  static final String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static final String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstrances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstrances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstrances;
    }
    throw Error();
  }
}
