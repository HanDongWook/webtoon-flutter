import 'package:http/http.dart' as http;
import 'package:webtoon_flutter/logger/logger.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      logger.i(response.body);
      return;
    }
    throw Error();
  }
}
