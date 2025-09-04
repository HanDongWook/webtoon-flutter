import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String _likedToonsKey = 'LikedToons';
  static late SharedPreferences _prefs;

  // Initialize SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Check if a webtoon is liked
  static bool isToonLiked(String id) {
    final likedToons = _prefs.getStringList(_likedToonsKey) ?? [];
    return likedToons.contains(id);
  }

  // Toggle the like status of a webtoon
  static Future<void> toggleLike(String id, bool isLiked) async {
    final likedToons = _prefs.getStringList(_likedToonsKey) ?? [];
    if (isLiked) {
      likedToons.remove(id);
    } else {
      likedToons.add(id);
    }
    await _prefs.setStringList(_likedToonsKey, likedToons);
  }
}
