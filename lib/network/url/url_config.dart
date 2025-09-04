class UrlConfig {
  static const String _baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';

  static String getTodayToons() {
    return '$_baseUrl/today';
  }

  static String getToonById(String id) {
    return '$_baseUrl/$id';
  }

  static String getLatestEpisodesById(String id) {
    return '$_baseUrl/$id/episodes';
  }
}
