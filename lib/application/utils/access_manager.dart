import 'package:shared_preferences/shared_preferences.dart';

class AccessManager {
  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  static Future<void> clearTokens() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove(accessTokenKey);
    await preferences.remove(refreshTokenKey);
  }

  static Future<void> saveAccessToken(String accessToken) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(accessTokenKey, accessToken);
  }

  static Future<void> saveRefreshToken(String refreshToken) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(refreshTokenKey, refreshToken);
  }

  static Future<String?> getAccessToken() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final accessToken = preferences.getString(accessTokenKey);
    if (accessToken == null || accessToken.isEmpty) {
      return null;
    }

    return accessToken;
  }

  static Future<String?> getRefreshToken() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final refreshToken = preferences.getString(refreshTokenKey);
    if (refreshToken == null || refreshToken.isEmpty) {
      return null;
    }

    return refreshToken;
  }

  static Future<void> replaceTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await saveAccessToken(accessToken);
    await saveRefreshToken(refreshToken);
  }
}
